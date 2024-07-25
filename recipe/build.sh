#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

./configure --prefix=${PREFIX} \
    --libdir=${PREFIX}/lib \
    --build=${BUILD} \
    --host=${HOST}

make -j ${CPU_COUNT}
make install
make installcheck
