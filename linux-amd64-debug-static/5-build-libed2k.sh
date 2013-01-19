#!/bin/bash
source ./2-configure.sh

export BOOST_ROOT=$QMULE_BOOST_INSTALL_DIR
export DATA_MODEL=64

cd $QMULE_LIBED2K_ROOT

git checkout linux-build
make -j$QMULE_BUILD_JOBS

cd $QMULE_BUILD_CONFIG

unset BOOST_ROOT
unset DATA_MODEL
