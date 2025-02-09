#!/usr/bin/env bash
source activate tfzero

is_train=False
echo "Sampling"

CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES:-0} python main_tmmd.py \
    --use_kernel --is_train=$is_train \
    --name=tmmd_lr0.02_decay0.5_init0.1_b500_iter50000_onekernel_nolog \
    --max_iteration=50000 --init=0.1 --learning_rate=0.02 --batch_size=500
echo Press any key to exit.
read -n 1
echo End.
