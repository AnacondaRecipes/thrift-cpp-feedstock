#!/bin/bash

set -exo pipefail

pushd build
ninja install

if [[ "$PKG_NAME" == libthrift ]]; then
    rm $PREFIX/bin/thrift
fi
