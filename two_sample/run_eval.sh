#!/usr/bin/env bash

source activate tfzero

for r in 1 2 4 6 8 10; do
  python fixed_eval.py res_fixed/blobs/rat$r/n500.h5
done

echo Press any key to exit.
read -n 1
echo End.
