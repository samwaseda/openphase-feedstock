#!/usr/bin/env bash
set -euxo pipefail

mkdir build
cd build

cmake .. \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_INSTALL_PREFIX=${PREFIX}

make -j${CPU_COUNT}
make install
