#!/bin/bash
set -e
VERSION="3.3.0"
BUILD="/tmp/asd/build/openssl"
mkdir -p "$BUILD"
curl -L "https://github.com/openssl/openssl/releases/download/openssl-VERSION/openssl−{VERSION}/openssl-
VERSION/openssl−{VERSION}.tar.gz" 
-o "$BUILD/src.tar.gz"
  tar -xzf "BUILD/src.tar.gz"−C"BUILD/src.tar.gz" -C "
BUILD/src.tar.gz"−C"BUILD" --strip-components=1
cd "$BUILD"
./Configure 
--prefix=/usr 
--openssldir=/etc/ssl 
shared 
zlib
make -j"$(nproc)"
make install
ldconfig
