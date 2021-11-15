#!/bin/bash

GPU_IDS=0
TGT_LANG=(hi bn gu)
SRC_LANG=en
seed=30

for tgt_lang in ${TGT_LANG[@]}; do
    echo $tgt_lang

    # Teacher training
    python3 main.py --do_train --gpu_ids ${GPU_IDS} --seed ${seed} --learning_rate 5e-5 --data_dir ./data/conll/${SRC_LANG} --output_dir align-model-${seed}/mono-src-${SRC_LANG} --overwrite_cache

    # Student train
    python3 main.py --do_train --do_KD --gpu_ids ${GPU_IDS} --seed ${seed} --data_dir ./data/aligned/${tgt_lang} --src_langs ${SRC_LANG} --src_model_dir_prefix mono-src- --src_model_dir align-model-${seed} --output_dir joint-${seed}/ts-${SRC_LANG}-${tgt_lang}/ --joint_train --overwrite_cache 

    # Test
    python3 main.py --do_predict --gpu_ids ${GPU_IDS} --seed ${seed} --data_dir ./data/aligned/${tgt_lang} --output_dir joint-${seed}/ts-${SRC_LANG}-${tgt_lang}/ --overwrite_cache

done



