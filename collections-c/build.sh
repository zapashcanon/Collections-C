#!/bin/sh

rm -v -rf for-wasp 
cp -v -R for-gillian for-wasp

python3 scripts/for_wasp.py

make
