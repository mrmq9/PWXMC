#!/bin/bash

python main.py \
--model_type xlnet \
--model_name_or_path xlnet-base-cased \
--task_name EURLex \
--do_train \
--do_eval \
--eval_all_checkpoints \
--overwrite_output_dir \
--data_dir ../data/EURLex \
--max_seq_length 512 \
--per_gpu_train_batch_size=6 \
--per_gpu_eval_batch_size=12 \
--learning_rate_x 5e-5 \
--learning_rate_h 1e-4 \
--learning_rate_a 2e-3 \
--num_train_epochs 8.0 \
--output_dir ../models/EURLex \
--pos_label 24 \
--adaptive_cutoff 1978 \
--div_value 2 \
--logging_steps 500 \
--save_steps 500 \
--gpu 0,1 \
--reweighting PW \
--A 0.55 \
--B 1.5





