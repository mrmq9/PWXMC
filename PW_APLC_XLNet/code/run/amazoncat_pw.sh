#!/bin/bash

python main.py \
--model_type xlnet \
--model_name_or_path xlnet-base-cased \
--task_name AmazonCat \
--do_train \
--do_eval \
--eval_all_checkpoints \
--overwrite_output_dir \
--data_dir ../data/AmazonCat \
--max_seq_length 192 \
--per_gpu_train_batch_size=12 \
--per_gpu_eval_batch_size=24 \
--learning_rate_x 5e-5 \
--learning_rate_h 1e-4 \
--learning_rate_a 2e-3 \
--num_train_epochs 8.0 \
--output_dir ../models/AmazonCat \
--pos_label 57 \
--adaptive_cutoff 6665 \
--div_value 2 \
--logging_steps 10000 \
--save_steps 60000 \
--last_hidden_size 768 \
--gpu 0,1,2,3 \
--reweighting PW \
--A 0.55 \
--B 1.5
