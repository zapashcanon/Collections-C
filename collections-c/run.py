#!/usr/bin/env python3
import glob, sys, time, json, subprocess, os, csv, logging

# globals --------------------------------------------------
TIMEOUT=20
INSTR_MAX=10000000
ROOT_DIR = '../wasp'
dirs = glob.glob(f'_build/for-wasp/normal/*')
table = [['category', 'tests', 'paths', 'T', 'L', 'S']]
errors = list()
#-----------------------------------------------------------

# helpers --------------------------------------------------
cmd  = lambda p : [f'./{ROOT_DIR}/wasp', p, '-u','-e', '(invoke \"__original_main\")', \
                   '-m', str(INSTR_MAX)]
def run(test : str):
    try:
        out = subprocess.check_output(cmd(test), timeout=TIMEOUT, \
                stderr=subprocess.STDOUT)
    except (subprocess.CalledProcessError, \
            subprocess.TimeoutExpired) as e:
        return None
    return out
#-----------------------------------------------------------

# main -----------------------------------------------------
fmt = '%(asctime)s: %(message)s'
date_fmt = '%H:%M:%S'
logging.basicConfig(format=fmt, level=logging.INFO, \
        datefmt=date_fmt)

for dir in dirs:
    sum_paths, sum_time = 0, 0.0
    sum_loop_time = 0.0
    sum_solver_time = 0.0
    tests = glob.glob(f'{dir}/*.wat')
    for test in tests:
        t0    = time.time()
        out   = run(test)
        delta = time.time() - t0
        
        # Oh no! we crashed!!
        out_dir = f'output/{os.path.basename(test)}'
        if not os.path.exists(out_dir + '/report.json'):
            errors.append(test)
            logging.info(f'Crashed/Timeout {os.path.basename(test)}')
            continue
        
        with open(f'{out_dir}/report.json', 'r') as f:
            try:
                report = json.load(f)
            except json.decoder.JSONDecodeError:
                logging.info(f'Thread {i}: Can not read report \'{out_dir}/report.json\'.')

        if not report['specification']:
            errors.append(test)

        sum_time += delta
        sum_paths += report['paths_explored']
        sum_loop_time += float(report['loop_time'])
        sum_solver_time += float(report['solver_time'])

        logging.info(f'Test {os.path.basename(test)} ' \
              f'({"OK" if report["specification"] else "NOK"}, ' \
              f'T={round(delta,2)}s, L={float(report["loop_time"])}, S={float(report["solver_time"])}' \
              f'{report["instruction_counter"]})')

    table.append([f'{os.path.basename(dir)}', len(tests), \
            int(sum_paths/len(tests)), round(sum_time, 3), \
            round(sum_loop_time, 3), round(sum_solver_time, 3)])

with open('table.csv', 'w', newline='') as f:
    writer = csv.writer(f)
    writer.writerows(table)

for err in errors:
    logging.info('Failed Test: ' + err)
#-----------------------------------------------------------
