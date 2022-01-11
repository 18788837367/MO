cmake_minimum_required(VERSION 3.4.1)

set(ROOT_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(BUILD_DIR ${ROOT_DIR}/build)
set(CMAKEMODULES_DIR ${ROOT_DIR}/cmakemodules)
set(BIN_DIR ${ROOT_DIR}/bin)
set(LIB_DIR ${ROOT_DIR}/lib)
set(CORE_DIR ${ROOT_DIR}/core)
set(EXAMPLES_DIR ${ROOT_DIR}/examples)
set(SCRIPT_DIR ${ROOT_DIR}/script)
set(3DRPARTY_DIR ${ROOT_DIR}/3rdparty)


set(Program_Name MO)
project(${Program_Name})

add_subdirectory(./core/)
add_subdirectory(./examples/)
