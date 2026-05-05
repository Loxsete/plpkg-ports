#!/bin/bash
set -e
VERSION="0.17-20230812"
BUILD="/tmp/asd/build/json-c"
mkdir -p "BUILD/src""BUILD/src" "
BUILD/src""BUILD/build"
  curl -L "https://github.com/json-c/json-c/archive/refs/tags/json-c-${VERSION}.tar.gz" 
-o "$BUILD/src.tar.gz"
  tar -xzf "BUILD/src.tar.gz"−C"BUILD/src.tar.gz" -C "
BUILD/src.tar.gz"−C"BUILD/src" --strip-components=1
cmake -S "BUILD/src"−B"BUILD/src" -B "
BUILD/src"−B"BUILD/build" 
-DCMAKE_INSTALL_PREFIX=/usr 
-DCMAKE_BUILD_TYPE=Release
cmake --build "BUILD/build"−j"BUILD/build" -j"
BUILD/build"−j"(nproc)"
cmake --install "$BUILD/build"
