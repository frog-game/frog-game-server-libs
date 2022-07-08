#!/bin/bash

SOURCE_DIR=$1

mkdir -p Linux/gcc
cd Linux/gcc

cmake -DCMAKE_INSTALL_PREFIX="./install" -G"Unix Makefiles"  "../../${SOURCE_DIR}"  -DINSTALL_3RDPARTY=ON

cmake --build ./ --target install --config Release

cd ../..
