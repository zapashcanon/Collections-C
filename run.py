#!/usr/bin/env python3
import os
import sys
import csv
import time
import glob
import json
import subprocess

# Globals
MAPPING = {
    'black'  : 90,
    'red'    : 91,
    'green'  : 92,
    'yellow' : 93,
    'blue'   : 94,
    'purple' : 95,
    'cyan'   : 96,
    'white'  : 97
}

BOLD = '\033[1m'
PREFIX = '\033['
SUFFIX = '\033[0m'

TIME_LIMIT=60
INST_LIMIT=10

def progress(msg, curr, total, prev=0):
    status = round((curr / total) * 100)
    color = MAPPING.get('cyan')
    prog_str = f'{BOLD}{PREFIX}{color}m{status:3}%{SUFFIX}'
    sys.stdout.write('\r' + (' ' * prev) + '\r')
    sys.stdout.write(f'[{prog_str}] {msg}')
    sys.stdout.flush()
    return len(msg) + 7

def warning(msg, prefix=None):
    if prefix:
        sys.stdout.write(prefix)
    color = MAPPING.get('purple')
    warn_str = f'{BOLD}{PREFIX}{color}mWARN{SUFFIX}'
    sys.stdout.write(f'[{warn_str}] {msg}\n')
    sys.stdout.flush()

def info(msg, prefix=None):
    if prefix:
        sys.stdout.write(prefix)
    color = MAPPING.get('green')
    warn_str = f'{BOLD}{PREFIX}{color}mINFO{SUFFIX}'
    sys.stdout.write(f'[{warn_str}] {msg}\n')
    sys.stdout.flush()

def indent(msg, prefix=None):
    if prefix:
        sys.stdout.write(prefix)
    color = MAPPING.get('white')
    ident_str = f'{BOLD}{PREFIX}{color}m....{SUFFIX}'
    sys.stdout.write(f'[{ident_str}] {msg}\n')
    sys.stdout.flush()

def execute(test: str, output_dir: str):

    def _cmd(test, output_dir, instr_limit):
        return [
            'wasp', test,
            '-u',
            '-e', '(invoke \"__original_main\")',
            '-m', str(instr_limit),
            '-r', output_dir
        ]

    try:
        result = subprocess.run(
            _cmd(test, output_dir, INST_LIMIT * 1000 * 1000),
            timeout=TIME_LIMIT,
            capture_output=True,
            check=True
        )
    except subprocess.CalledProcessError as e:
        warning(f'\'{test}\': crashed', prefix='\n')
        return None
    except subprocess.TimeoutExpired as e:
        warning(f'\'{test}: timeout', prefix='\n')
        return None

    return result.stdout

def main(argv=None):
    if argv is None:
        argv = sys.argv[1:]

    dirs = argv
    if dirs == []:
        dirs = glob.glob('_build/for-wasp/normal/*')

    info(f'Starting Collections-C benchmarks...')
    results, errors = [], []
    for i, dir in enumerate(dirs):
        prev = 0
        sum_paths, sum_twasp, sum_tloop, sum_tsolv = 0, 0.0, 0.0, 0.0
        info(f'Running tests in \'{dir}\'...', prefix='\n' if i > 0 else '')
        tests = glob.glob(os.path.join(dir, '*.wat'))
        for i, test in enumerate(tests):
            prev = progress(f'Running \'{test}\'...', i+1, len(tests), prev=prev)
            output_dir = os.path.join('output', os.path.basename(test))

            tstart = time.time()
            execute(test, output_dir)
            tdelta = time.time() - tstart

            report_file = os.path.join(output_dir, 'report.json')
            if not os.path.exists(report_file):
                warning(f'File not found \'{report_file}\'!', prefix='\n')
                errors.append(test)
                continue

            with open(report_file, 'r') as f:
                report = json.load(f)

            if not report['specification']:
                errors.append(test)

            sum_twasp += tdelta
            sum_paths += report['paths_explored']
            sum_tloop += float(report['loop_time'])
            sum_tsolv += float(report['solver_time'])

        results.append([
            os.path.basename(dir),
            len(tests),
            round(int(sum_paths) / len(tests)),
            round(sum_twasp, 3),
            round(sum_tloop, 3),
            round(sum_tsolv, 3)
        ])

    warning('Failed tests:', prefix='\n')
    for i, test in enumerate(errors):
        indent(f'{i+1}. \'{test}\'')

    info('Finished. Writing results to \'results.csv\'...')
    with open('results.csv', 'w', newline='') as f:
        writer = csv.writer(f)
        writer.writerow(['category', 'ni', 'avg-paths', 'Twasp', 'Tloop', 'Tsolver'])
        writer.writerows(results)

    return 0

if __name__ == '__main__':
    sys.exit(main())
