#!/bin/bash

OPENAI_API_KEY=""
OPENAI_API_KEY_LIST=""
SCORER="llama2-chat-7b"
OPTIMIZER="gpt-3.5-turbo"
DATASET="bbh"
TASK="all"
NUM_SEARCH_EPOCHS=3
INSTRUCTION_POS="Q_end"
INITIAL_INSTRUCTION="Let's think step by step."
NUM_GENERATED_INSTRUCTIONS_IN_EACH_STEP=8
OPT_BATCH_SIZE=8
FORMAT_DATA_NUM=3
GRADIENT_NAME="feedback"
MOMENTUM_PARA_NAME="para"
MOMENTUM_SELECTION_NAME="recency"
MOMENTUM_SELECTION_NUM=3
MOMENTUM_UPDATE_NAME="k-list"
LEARNING_RATE_NAME="w_lr"
UTIL_GRADIENT_NAME="generate_without"
INITIAL_STEP_SIZE=30
DECAY_STRATEGY="fixed"
USE_WARMUP_STRATEGY=false
WARMUP_STEPS=0
FINAL_STEP_SIZE=30
INCLUDE_QA=false
GPUS="0"

/home/tangxinyu/anaconda3/envs/poop/bin/python src/optimization/main.py \
  --openai_api_key=$OPENAI_API_KEY \
  --openai_api_key_list=$OPENAI_API_KEY_LIST \
  --scorer_llm_name=$SCORER \
  --optimizer_llm_name=$OPTIMIZER \
  --dataset=$DATASET \
  --task_name=$TASK \
  --num_search_epochs=$NUM_SEARCH_EPOCHS \
  --instruction_pos=$INSTRUCTION_POS \
  --initial_instruction="$INITIAL_INSTRUCTION" \
  --num_generated_instructions_in_each_step=$NUM_GENERATED_INSTRUCTIONS_IN_EACH_STEP \
  --opt_batch_size=$OPT_BATCH_SIZE \
  --format_data_num=$FORMAT_DATA_NUM \
  --gradient_name=$GRADIENT_NAME \
  --momentum_para_name=$MOMENTUM_PARA_NAME \
  --momentum_selection_name=$MOMENTUM_SELECTION_NAME \
  --momentum_selection_num=$MOMENTUM_SELECTION_NUM \
  --momentum_update_name=$MOMENTUM_UPDATE_NAME \
  --learning_rate_name=$LEARNING_RATE_NAME \
  --util_gradient_name=$UTIL_GRADIENT_NAME \
  --initial_step_size=$INITIAL_STEP_SIZE \
  --decay_strategy=$DECAY_STRATEGY \
  --use_warmup_strategy=$USE_WARMUP_STRATEGY \
  --warmup_steps=$WARMUP_STEPS \
  --final_step_size=$FINAL_STEP_SIZE \
  --include_qa=$INCLUDE_QA \
  --gpus=$GPUS \