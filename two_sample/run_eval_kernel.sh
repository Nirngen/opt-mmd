#!/usr/bin/env bash

source activate tfzero

python eval_kernel.py --n-reps 100 results/gan/ard_maxratio_bw_trim.npz

echo Press any key to exit.
read -n 1
echo End.
