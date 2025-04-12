#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

autoreconf --force --verbose --install

./configure --prefix=${PREFIX} \
    --libdir=${PREFIX}/lib \
    --build=${BUILD} \
    --host=${HOST} || cat config.log

make -j ${CPU_COUNT}
make install
make installcheck
