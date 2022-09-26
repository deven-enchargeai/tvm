#!/usr/bin/env bash
# set -eux

# export TVM_HOME=/Users/deven/work/docker_home/repos/my_tvm_fork/
export TVM_HOME=/root/repos/my_tvm_fork/

export PYTHONPATH=${TVM_HOME}/python:${PYTHONPATH}

#
# "import tvm" needs to load "libtvm*.so" libraries and it looks in a few different places for it
# see routine "get_dll_directories" in "python/tvm/_ffi/libinfo.py"
#
# the default cmake build dirs (build, Release) and default make build dir (lib) get added by default
# so no need to do anything if building in default location.
#
# But if building in an alternate location, then we need to set either the TVM_LIBRARY_PATH or
# the LD_LIBRARY_PATH to point to the directory containing the "libtvm*.so" libraries
#
# export TVM_LIBRARY_HOME=${ALT_LIBTVM_LOC}
#

alias tvmc='python3 -m tvm.driver.tvmc'
