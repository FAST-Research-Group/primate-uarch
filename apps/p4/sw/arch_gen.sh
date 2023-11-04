#!/bin/bash

LLVM_DIR=/home/marui/crossroads/primate/primate-arch-gen
TARGET=$1
$LLVM_DIR/build/bin/clang -emit-llvm -S -O3 "${TARGET}.cpp" -o "${TARGET}.ll"
$LLVM_DIR/build/bin/opt -enable-new-pm=0 -load $LLVM_DIR/build/lib/LLVMPrimate.so -primate < "${TARGET}.ll" > /dev/null