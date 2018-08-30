#!/bin/bash

NUMBER=$1
DIRECTORY=$2

tar -xzvf NthPrime.tgz -C /tmp/$DIRECTORY

cd /tmp/$DIRECTORY

gcc main.c nth_prime.h nth_prime.c -o NthPrime

./NthPrime $NUMBER
