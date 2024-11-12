#!/bin/bash
#SBATCH --partition express
#SBATCH --mem 5G
#SBATCH -c 1
#SBATCH -t 1:00:00

WORKFLOW=$1
CONFIG=$2

module load nextflow

nextflow -C ${CONFIG} run ${WORKFLOW}
