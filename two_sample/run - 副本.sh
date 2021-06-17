#!/usr/bin/env bash

source activate tfzero

python fixed_run.py \
  --mnist-minibatch-gan ./mnist_minibatch_count100_scaled_1.npz \


echo Press any key to exit.
read -n 1
echo End.
