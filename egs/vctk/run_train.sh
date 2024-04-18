#!/bin/bash
cur=`pwd`
PROJ_ROOT="$(dirname "$(dirname "${cur}")")"
export PYTHONPATH=$PROJ_ROOT:$PYTHONPATH

voice="NS2_VCTK"
exp_dir=${cur}/exp
outdir=${exp_dir}/${voice}
logdir=${outdir}/logs
mkdir -p $exp_dir
mkdir -p $outdir
mkdir -p $logdir

hparams="${cur}/hparams/Hyper_Parameters.yaml"
sed -i s#'Checkpoint_Path:.*'#'Checkpoint_Path: "'$outdir'"'# $hparams
sed -i s#'Log_Path:.*'#'Log_Path: "'$logdir'"'# $hparams

python -u ${PROJ_ROOT}/Train.py -hp ${hparams}