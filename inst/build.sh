#!/usr/bin/env bash
cp ../inst/iota.zig .
zig build-obj -I/usr/share/R/include -lc -fcompiler-rt -fPIC iota.zig
rm -rf zig-cache
echo "iota.o"
