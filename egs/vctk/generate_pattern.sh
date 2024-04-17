#!/bin/bash
cur=`pwd`
PROJ_ROOT="$(dirname "$(dirname "${cur}")")"
export PYTHONPATH=$PROJ_ROOT:$PYTHONPATH
hparams="${cur}/hparams/Hyper_Parameters.yaml"
data_dir="/Users/thinhhieu/Desktop/workspace/Projects/data/VCTK-Corpus-0.92"
codec_checkpoint_path="/Users/thinhhieu/Desktop/workspace/Projects/pretrain_models/HiFi-Codec-24k-320d"
codec_config_path="/Users/thinhhieu/Desktop/workspace/Projects/NaturalSpeech2/hificodec/config_24k_320d.json"
python -u ${PROJ_ROOT}/Pattern_Generator.py -hp="${hparams}" -vctk ${data_dir} -c ${codec_config_path} -cp ${codec_checkpoint_path}