# LLC_Testing
Command list:
1. `clang -S -emit-llvm void.c`
2. `llc -march=csky void.ll -debug --print-after-isel -o - &> void.txt `
