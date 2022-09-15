#!/usr/bin/env bash
set -eux

python3 -m tvm.driver.tvmc run \
--inputs imagenet_cat.npz \
--output predictions.npz \
resnet50-v2-7-tvm.tar
