#!/bin/bash
set -e
VERSION="8.7.1"
VDASH="${VERSION//./_}"
BUILD="/tmp/asd/build/curl"
mkdir -p "$BUILD"
curl -L "https://github.com/curl/curl/releases/download/curl-VDASH/curl−{VDASH}/curl-
VDASH/curl−{VERSION}.tar.gz" 
-o "$BUILD/src.tar.gz"
  tar -xzf "BUILD/src.tar.gz"−C"BUILD/src.tar.gz" -C "
BUILD/src.tar.gz"−C"BUILD" --strip-components=1
cd "$BUILD"
./configure 
--prefix=/usr 
--with-openssl 
--with-zlib 
--enable-ipv6 
--disable-static
make -j"$(nproc)"
make install
