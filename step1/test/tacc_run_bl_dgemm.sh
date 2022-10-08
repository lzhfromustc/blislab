#!/bin/bash

# This file contains a SLURM script for you to (optionally) submit the job to the 
#Texas Advanced Computing Center (TACC) machines if you have an account there

#SBATCH -J bl_dgemm_job
#SBATCH -o bl_dgemm_output-%j.txt
#SBATCH -p gpu
#SBATCH -t 01:00:00
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -A TRAINING-HPC 
export OMP_NUM_THREADS=1
export BLISGEMM_IC_NT=1
export KMP_AFFINITY=compact,verbose

ibrun tacc_affinity run_bl_dgemm.sh
