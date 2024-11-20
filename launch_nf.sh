#!/bin/bash
#SBATCH --job-name=Nextflow_test
#SBATCH --time=04:00:00
#SBATCH --mail-user=kreid20@jhu.edu
#SBATCH --partition=shared
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8


module load java/19


WORKFLOW=$1
CONFIG=$2

nextflow -C ${CONFIG} run ${WORKFLOW}
