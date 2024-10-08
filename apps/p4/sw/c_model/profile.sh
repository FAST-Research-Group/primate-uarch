#!/bin/bash

make clean && make
LLVM_PROFILE_FILE="main.profraw" ./main
llvm-profdata merge main.profraw -o main.profdata
llvm-cov export -format=text -instr-profile main.profdata ./main -sources parse.cpp > prof.json
#llvm-cov export -format=text -skip-functions -instr-profile main.profdata ./main -sources parse.cpp > prof.json
llvm-cov show -show-line-counts-or-regions -instr-profile=main.profdata ./main -sources parse.cpp > report.txt
