set -euxo pipefail

./configure --prefix=${PREFIX}        \
            --libdir=${PREFIX}/lib    \
            --build=${BUILD}          \
            --host=${HOST}

make -j $CPU_COUNT
make install
make installcheck
