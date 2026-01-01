#!/bin/sh
cd $PACKIT_ARGS_UNPACK_DIRECTORY

./configure --prefix=$PACKIT_PACKAGE_PATH --enable-symlinks --disable-cxx --without-cxx-binding
# TODO: Add --enable-widec and implement symlink creation

make

make install
