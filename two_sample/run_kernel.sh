#!/usr/bin/env bash

source activate tfzero

THEANO_FLAGS=device=cpu,lib.cnmem=1 python learn_kernel.py \
  --net-version scaling --max-ratio \
  --init-sigma-median --opt-sigma --num-epochs 10000 \
  --{n-train,n-test}=2000 --{,val-}batchsize=500 \
  --mnist-minibatch-gan ./mnist_minibatch_count100_scaled_1.npz \
  --trim-edges --scaled --bw \
  results/gan/ard_maxratio_bw_trim.npz

echo Press any key to exit.
read -n 1
echo End.
