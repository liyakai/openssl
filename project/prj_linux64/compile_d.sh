#!/bin/sh

cd ../../
JOB_NUMS=$(cat /proc/cpuinfo | grep processor | wc -l);
sh ./config -d
make clean
make -j ${JOB_NUMS}

echo make openssl completed
