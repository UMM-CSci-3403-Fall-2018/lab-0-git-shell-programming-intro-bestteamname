#!/bin/bash

NUMBER=$1
DIR=$2

tar -xzf NthPrime.tgz -C $DIR

cd $DIR/NthPrime/

gcc main.c nth_prime.h nth_prime.c -o NthPrime

./NthPrime $NUMBER
