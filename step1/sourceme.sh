#!/bin/bash
export BLISLAB_DIR=/home/ziheng/playground/blislab/step1
echo "BLISLAB_DIR = $BLISLAB_DIR"

# Compiler Options (true: Intel compiler; false: GNU compilers)
export BLISLAB_USE_INTEL=false
echo "BLISLAB_USE_INTEL = $BLISLAB_USE_INTEL"

# Whether reference implementation uses BLAS or not? Reference implementation is used to check the correctness of your implementation
export BLISLAB_USE_BLAS=false
echo "BLISLAB_USE_BLAS = $BLISLAB_USE_BLAS"

# Optimization Level (O0, O1, O2, O3)
export COMPILER_OPT_LEVEL=O3
echo "COMPILER_OPT_LEVEL = $COMPILER_OPT_LEVEL"

# Manually set the BLAS path if BLIS_USE_BLAS=true and using GNU compiler.
#export BLAS_DIR=/u/jianyu/lib/blis
export BLAS_DIR=/home/ziheng/playground/blislab/reflib
echo "BLAS_DIR = $BLAS_DIR"

# Parallel Options
export KMP_AFFINITY=compact,verbose
export OMP_NUM_THREADS=1
export BLISLAB_IC_NT=1

