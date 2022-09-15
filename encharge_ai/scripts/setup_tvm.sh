#!/usr/bin/env bash
# set -eux

# export TVM_HOME=/Users/deven/work/docker_home/repos/my_tvm_fork/
export TVM_HOME=/root/repos/my_tvm_fork/

export PYTHONPATH=${TVM_HOME}/python:${PYTHONPATH}

alias tvmc='python3 -m tvm.driver.tvmc'
