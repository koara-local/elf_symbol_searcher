#!/bin/bash

APP=$1
SYMBOL=$2

LIST=$(echo $APP; ldd $APP \
    | grep -v -E 'ld-linux*.so' \
    | grep -v 'linux-vdso.so' \
    | grep -v 'linux-gate.so' \
    | awk '{print $3}')

for f in $LIST
do
    echo $f
    strings $f | grep $SYMBOL
done
