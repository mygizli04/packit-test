#!/bin/sh
cd m4-$PACKIT_PACKAGE_VERSION

./configure --disable-dependency-tracking --prefix=$PACKIT_PACKAGE_PATH

make

make install
