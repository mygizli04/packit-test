#!/bin/sh
cd $PACKIT_ARGS_UNPACK_DIRECTORY

./autogen.sh

./configure --prefix=$PACKIT_PACKAGE_PATH

make

make install
