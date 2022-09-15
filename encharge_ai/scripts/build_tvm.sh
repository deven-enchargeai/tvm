#!/usr/bin/env bash
set -eux

rm -rf build && mkdir build
cd build


cmake .. -G Ninja \
      -DUSE_LLVM=llvm-config-9 \
      -DUSE_GRAPH_EXECUTOR=ON \
      -DUSE_PROFILER=ON \
      -DUSE_RELAY_DEBUG=ON \
      -DUSE_UMA=ON \
      
ninja -j 10

