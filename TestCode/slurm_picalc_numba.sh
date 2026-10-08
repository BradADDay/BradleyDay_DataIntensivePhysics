#!/bin/bash
# ===============
# picalcnumba.sh
# ===============

#SBATCH --job-name=brad_picalc_numba
#SBATCH --partition=teach_cpu
#SBATCH --account=phys040684
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=24
#SBATCH --time=0:10:00
#SBATCH --mem=200M

source ~/initMamba.sh
mamba activate projectenv

cd $SLURM_SUBMIT_DIR
export OMP_NUM_THREADS=$(SLURM_CPUS_PER_TASK)

python picalc_numba.py 100000000
