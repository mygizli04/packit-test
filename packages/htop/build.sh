#!/bin/sh
cd htop-$PACKIT_PACKAGE_VERSION

./autogen.sh

./configure --prefix=$PACKIT_PACKAGE_PATH

make

make install
