#!/bin/bash
source ./2-configure.sh

BOOST=$QMULE_BOOST_ROOT
BOOST_LOG=$QMULE_BUILD_ROOT/qmule-deps/logging
BOOST_DEFINE="define=BOOST_ASIO_HEADER_ONLY"
BOOST_CFLAGS="cflags=-fPIC"
BOOST_OPTS="--build-type=complete --layout=tagged"
BOOST_LIBS="--with-program_options --with-filesystem --with-thread"
BOOST_PROPS="variant=debug link=static $BOOST_CFLAGS $BOOST_DEFINE"

cd $BOOST
#git clean -fdx
./bootstrap.sh --prefix=$QMULE_BOOST_INSTALL_DIR
./b2 -j$QMULE_BUILD_JOBS --prefix=$QMULE_BOOST_INSTALL_DIR --build-dir=$QMULE_BOOST_BUILD_DIR $BOOST_OPTS $BOOST_LIBS $BOOST_PROPS install
cp -pR $BOOST_LOG/boost $QMULE_BOOST_INSTALL_DIR/include
cd $QMULE_BUILD_CONFIG

