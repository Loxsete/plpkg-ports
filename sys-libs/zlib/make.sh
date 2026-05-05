#!/bin/bash
set -e

VERSION="1.3.1"
BUILD="/tmp/asd/build/zlib"

mkdir -p "$BUILD"
curl -L "https://github.com/madler/zlib/releases/download/v${VERSION}/zlib-${VERSION}.tar.gz" \
    -o "$BUILD/src.tar.gz"
tar -xzf "$BUILD/src.tar.gz" -C "$BUILD" --strip-components=1

cd "$BUILD"
./configure --prefix=/usr
make -j"$(nproc)"
make install
