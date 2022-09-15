#!/usr/bin/env bash
set -eux

python3 -m tvm.driver.tvmc compile \
--target "llvm" \
--input-shapes "data:[1,3,224,224]" \
--output resnet50-v2-7-tvm.tar \
./onnx_model/resnet50-v2-7.onnx
