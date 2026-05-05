#!/bin/bash
set -e
VERSION="5.4.7"
BUILD="/tmp/asd/build/lua"
mkdir -p "$BUILD"

curl -L "https://www.lua.org/ftp/lua-${VERSION}.tar.gz" 
-o "$BUILD/src.tar.gz"
  tar -xzf "BUILD/src.tar.gz"−C"BUILD/src.tar.gz" -C "
BUILD/src.tar.gz"−C"BUILD" --strip-components=1

cd "$BUILD"
make -j"$(nproc)" INSTALL_TOP=/usr linux
make INSTALL_TOP=/usr install
