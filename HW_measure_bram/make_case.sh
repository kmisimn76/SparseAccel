#!/bin/sh
TARGET_PATH=HW_300_$1x$1_$2_$3

echo $TARGET_PATH

mkdir $TARGET_PATH
echo "DEFINE=  -D ARRAY_K=$1" > $TARGET_PATH/Makefile
echo "DEFINE+= -D ARRAY_C=$1" >> $TARGET_PATH/Makefile
echo "DEFINE+= -D VEC_SIZE=$1" >> $TARGET_PATH/Makefile
echo "DEFINE+= -D BLOCK_SIZE=$2" >> $TARGET_PATH/Makefile
echo "DEFINE+= -D PORT_NUM=$3" >> $TARGET_PATH/Makefile
cat main_case/Makefile >> $TARGET_PATH/Makefile

cp main_case/config_sp $TARGET_PATH/
