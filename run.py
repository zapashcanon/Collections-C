#!/usr/bin/env python3
import os
import sys
import csv
import time
import glob
import json
import logging
import subprocess

TIMEOUT=60
INSTR_MAX=10000000

def cmd(test: str, out_dir: str):
    return [
        'wasp',
        test,
        '-u',
        '-e',
        '(invoke \"__original_main\")',
        '-m', str(INSTR_MAX),
        '-r', out_dir
    ]

def run(test: str, out_dir: str):
    try:
        out = subprocess.check_output(cmd(test, out_dir), timeout=TIMEOUT, \
                stderr=subprocess.STDOUT)
    except (subprocess.CalledProcessError, \
            subprocess.TimeoutExpired) as e:
        return None
    return out

def main(argv):
    logging.basicConfig(
        format='%(asctime)s: %(message)s', 
        level=logging.INFO,
        datefmt='%H:%M:%S'
    )

    dirs = glob.glob('_build/for-wasp/normal/*')
    if argv != []:
        dirs = argv

    table = [['category', 'ni', 'avg-paths', 'Twasp', 'Tloop', 'Tsolver']]
    errors = []
    for dir in dirs:
        sum_paths = 0
        sum_twasp = 0.0
        sum_tloop = 0.0
        sum_tsolv = 0.0

        tests = glob.glob(os.path.join(dir, '*.wat'))
        for test in tests:
            out_dir = os.path.join('output', os.path.basename(test))
            tstart = time.time()
            out = run(test, out_dir)
            tdelta = time.time() - tstart

            report_file = os.path.join(out_dir, 'report.json')
            if not os.path.exists(report_file):
                errors.append(test)
                logging.info(f'No generated for available for \'{test}\'.')
                continue
            
            with open(report_file, 'r') as f:
                try:
                    report = json.load(f)
                except json.decoder.JSONDecodeError:
                    logging.info(f'Unable to parse \'{report_file}\'.')
                    continue

            # A test specification was violated
            if not report['specification']:
                errors.append(test)

            sum_paths += report['paths_explored']
            sum_twasp += tdelta
            sum_tloop += float(report['loop_time'])
            sum_tsolv += float(report['solver_time'])

            logging.info(
                f'Test {os.path.basename(test)} ' \
                f'({report["specification"]}, ' \
                f'twasp={round(tdelta, 2)}, tloop={float(report["loop_time"])} ' \
                f'tsolver={float(report["solver_time"])} ' \
                f'icnt={report["instruction_counter"]})'
            )
        table.append([
            os.path.basename(test),
            len(tests),
            int(sum_paths/len(tests)),
            round(sum_twasp, 3),
            round(sum_tloop, 3),
            round(sum_tsolv, 3)
        ])
    
    logging.info('Writing results to \'table.csv\'.')
    with open('table.csv', 'w', newline='') as f:
        writer = csv.writer(f)
        writer.writerows(table)

    logging.info('Failed tests: ' + str(errors))

if __name__ == '__main__':
    main(sys.argv[1:])
