#!/usr/bin/env python3
import os
import csv
import sys
import glob
import json
import time
import logging
import pathlib
import subprocess

dirs = glob.glob(f'for-wasp/normal/*')
table = [['category', 'tests', 'paths', 'T', 'L', 'S']]
errors = list()

def run(test : str, includes: list[str], sources: str, output_dir: str):
    includes = [f'-I{lib}' for lib in includes]
    cmd =[
        'wasp-c',
        f'-S{sources}',
        f'-o{output_dir}',
        test
    ] + includes
    try:
        out = subprocess.check_output(cmd, timeout=60, \
                stderr=subprocess.STDOUT)

    except (subprocess.CalledProcessError, \
            subprocess.TimeoutExpired) as e:
        return None
    return out

fmt = '%(asctime)s: %(message)s'
date_fmt = '%H:%M:%S'
logging.basicConfig(format=fmt, level=logging.INFO, \
        datefmt=date_fmt)

for dir in dirs:
    sum_paths, sum_time = 0, 0.0
    sum_loop_time = 0.0
    sum_solver_time = 0.0
    tests = glob.glob(f'{dir}/*.c')
    for test in tests:
        output_dir = os.path.join('output', os.path.basename(test))
        t0    = time.time()
        out   = run(test, ['lib/include', 'for-wasp/utils'], '../../bin/lib.a', output_dir)
        delta = time.time() - t0
        
        # Oh no! we crashed!!
        report = os.path.join(output_dir, 'report.json')
        if not os.path.exists(report):
            errors.append(test)
            logging.error(f'Crashed/Timeout {test}')
            continue
        
        with open(report, 'r') as f:
            try:
                json_report = json.load(f)
            except json.decoder.JSONDecodeError:
                logging.error(f'Thread {i}: Can not read report \'{report}\'.')

        if not json_report['specification']:
            errors.append(test)

        sum_time += delta
        sum_paths += json_report['paths_explored']
        sum_loop_time += float(json_report['loop_time'])
        sum_solver_time += float(json_report['solver_time'])

        logging.info(f'Test {os.path.basename(test)} ' \
              f'({"OK" if json_report["specification"] else "NOK"}, ' \
              f'T={round(delta,2)}s, L={float(json_report["loop_time"])}, S={float(json_report["solver_time"])}' \
              f'{json_report["instruction_counter"]})')

    table.append([f'{os.path.basename(dir)}', len(tests), \
            int(sum_paths/len(tests)), round(sum_time, 3), \
            round(sum_loop_time, 3), round(sum_solver_time, 3)])

with open('table.csv', 'w', newline='') as f:
    writer = csv.writer(f)
    writer.writerows(table)

for err in errors:
    logging.error('Failed Test: ' + err)
