#!/bin/bash
source ./0-configure.sh
cd $QMULE_BUILD_ROOT
git clone git://github.com/nexie/qmule.git
git clone git://github.com/nexie/libed2k.git
git clone git://github.com/nexie/qmule-deps.git
cd $QMULE_BUILD_CONFIG
