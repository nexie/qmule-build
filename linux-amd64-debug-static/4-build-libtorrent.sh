#!/bin/bash
source ./2-configure.sh

LIBTORRENT_OPTS="--prefix=$QMULE_LIBTORRENT_INSTALL_DIR --with-boost=$QMULE_BOOST_INSTALL_DIR --with-boost-libdir=$QMULE_BOOST_INSTALL_DIR/lib --with-boost-system=d --enable-debug"
export CFLAGS=-DBOOST_ASIO_HEADER_ONLY

cd $QMULE_LIBTORRENT_ROOT
#echo $LIBTORRENT_OPTS
./configure $LIBTORRENT_OPTS && make clean && make -j$QMULE_BUILD_JOBS && make install
cd $QMULE_BUILD_CONFIG

unset CFLAGS
