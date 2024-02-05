#!/bin/bash

OWI=owi
NORMAL_TESTS=$(find ./_build/for-wasp/normal -type f -name "*.wat")
OUTPUT_DIR=_output

test -e ${OUTPUT_DIR} || mkdir -p ${OUTPUT_DIR}

function run_test() {
  local t=$1
  local RET="OK"
  local OUTPUT_FILE=${OUTPUT_DIR}/$(basename $t).out
  printf "Running \"$t\"..."
  local OUT=${OUTPUT_DIR}/$(basename $t)
  mkdir -p $OUT
  ${OWI} sym -w 1 -u $t --workspace $OUT > ${OUTPUT_FILE} 2>&1
  test $? -eq 0 || RET="NOK"
  PATHS=$(grep -e "PATH CONDITION" $OUTPUT_FILE  | wc -l)
  printf "${RET} ${PATHS}\n"
}

function main() {
  for t in ${NORMAL_TESTS}; do
    run_test $t
  done
}

time main
