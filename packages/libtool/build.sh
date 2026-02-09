#!/bin/sh
cd libtool-$PACKIT_PACKAGE_VERSION

./configure --prefix=$PACKIT_PACKAGE_PATH --disable-silent-rules --enable-ltdl-install

make

make install
