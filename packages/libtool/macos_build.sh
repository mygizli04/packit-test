#!/bin/sh
cd libtool-$PACKIT_PACKAGE_VERSION

./configure --prefix=$PACKIT_PACKAGE_PATH --disable-silent-rules --enable-ltdl-install --program-prefix=g

#TODO: add symlinks to allow adding libtools to PATH easily

make

make install
