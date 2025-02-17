#!/bin/bash

SOURCE_DIR=$1

mkdir -p macOS/XCode
cd macOS/XCode

cmake -DCMAKE_INSTALL_PREFIX="./install" -GXcode "../../${SOURCE_DIR}"  -DINSTALL_3RDPARTY=ON

cmake --build ./ --target install --config Release

cd ../..
