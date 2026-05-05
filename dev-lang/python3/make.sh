#!/bin/bash
set -e
VERSION="3.12.3"
BUILD="/tmp/asd/build/python3"
mkdir -p "$BUILD"
curl -L "https://www.python.org/ftp/python/VERSION/Python−{VERSION}/Python-
VERSION/Python−{VERSION}.tar.xz" 
-o "$BUILD/src.tar.xz"
  tar -xJf "BUILD/src.tar.xz"−C"BUILD/src.tar.xz" -C "
BUILD/src.tar.xz"−C"BUILD" --strip-components=1
cd "$BUILD"
./configure 
--prefix=/usr 
--enable-optimizations 
--with-ensurepip=install 
--enable-shared 
LDFLAGS="-Wl,-rpath /usr/lib"
make -j"$(nproc)"
make install
ldconfig
