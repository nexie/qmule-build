#!/bin/bash
export QMULE_BUILD_CONFIG=`pwd`
export QMULE_BUILD_ROOT=$QMULE_BUILD_CONFIG/../../
export QMULE_BUILD_JOBS=$(( `cat /proc/cpuinfo | grep processor | wc -l` + 1))
