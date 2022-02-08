#!/bin/sh

CURRENT_DIR=$(pwd)
ROOT_DIR=${CURRENT_DIR}/..
BUILD_DIR=${ROOT_DIR}/build
CMAKEMODULES_DIR=${ROOT_DIR}/cmakemodules
BIN_DIR=${ROOT_DIR}/bin
CORE_DIR=${ROOT_DIR}/core
LIB_DIR=${ROOT_DIR}/lib
SCRIPT_DIR=${ROOT_DIR}/script

if [ ! -d ${BUILD_DIR} ]; then
    mkdir ${BUILD_DIR}
fi

cmake -G"Xcode" -DCMAKE_TOOLCHAIN_FILE=${CMAKEMODULES_DIR}/macos.xcode.toolchain.cmake -S ${ROOT_DIR} -B ${BUILD_DIR}
cmake --build ${BUILD_DIR}   