#!/bin/bash

python main.py \
--model_type xlnet \
--model_name_or_path xlnet-base-cased \
--task_name Amazon670k \
--do_train \
--do_eval \
--eval_all_checkpoints \
--overwrite_output_dir \
--data_dir ../data/Amazon670k \
--max_seq_length 128 \
--per_gpu_train_batch_size=16 \
--per_gpu_eval_batch_size=16 \
--learning_rate_x 5e-5 \
--learning_rate_h 1e-4 \
--learning_rate_a 2e-3 \
--num_train_epochs 25.0 \
--output_dir ../models/Amazon670k \
--pos_label 7 \
--adaptive_cutoff 167522 335045 502566 \
--div_value 2 \
--logging_steps 15000 \
--save_steps 15000 \
--last_hidden_size 512 \
--gpu 0,1 \
--reweighting PW \
--A 0.6 \
--B 2.6
