#!/bin/sh
cd $PACKIT_ARGS_UNPACK_DIRECTORY

./configure --prefix=$PACKIT_PACKAGE_PATH --disable-silent-rules --enable-ltdl-install --program-prefix=g

#TODO: add symlinks to allow adding libtools to PATH easily

make

make install
