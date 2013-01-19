#!/bin/bash
source ./2-configure.sh

cd $QMULE_BUILD_CONFIG
git clean -fdx
cd $QMULE_BUILD_ROOT/qmule-deps
git clean -fdx
cd $QMULE_LIBED2K_ROOT
git clean -fdx
cd $QMULE_BUILD_ROOT/qmule
git clean -fdx

cd $QMULE_BUILD_CONFIG
source ./3-build-boost.sh

cd $QMULE_BUILD_CONFIG
source ./4-build-libtorrent.sh

cd $QMULE_BUILD_CONFIG
source ./5-build-libed2k.sh

cd $QMULE_BUILD_CONFIG
source ./6-build-qmule.sh

cd $QMULE_BUILD_CONFIG
