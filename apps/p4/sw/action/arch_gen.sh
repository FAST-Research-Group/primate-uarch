#!/bin/bash

LLVM_DIR=/home/marui/crossroad/rv2/primate/primate-arch-gen
TARGET=p4_action
$LLVM_DIR/build/bin/clang -emit-llvm -S -O3 "${TARGET}.cpp"
$LLVM_DIR/build/bin/opt -enable-new-pm=0 -load $LLVM_DIR/build/lib/LLVMPrimate.so -primate < "${TARGET}.ll" > /dev/null
