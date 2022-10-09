source ./sourceme.sh

make clean
make

cd ./test
./run_bl_dgemm.sh