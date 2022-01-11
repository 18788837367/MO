cmake_minimum_required(VERSION 3.4.1)

set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} -std=c++14)

set(EXECUTABLE_OUTPUT_PATH ${ROOT_DIR}/bin)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/gcanvas)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/platform)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/commandbuffer)

file(GLOB SRC_SDIR ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)
file(GLOB GCANVAS_SDIR ${CMAKE_CURRENT_SOURCE_DIR}/src/gcanvas/*.cpp)
file(GLOB PLATFORM_SDIR ${CMAKE_CURRENT_SOURCE_DIR}/src/platform/*.cpp)
file(GLOB COMMANDBUFFER_SDIR ${CMAKE_CURRENT_SOURCE_DIR}/src/commandbuffer/*.cpp)


file(GLOB SUPPORT_HDIR ${CMAKE_CURRENT_SOURCE_DIR}/src/support/*.h)
file(GLOB SUPPORT_SDIR ${CMAKE_CURRENT_SOURCE_DIR}/src/support/*.cpp)

set(LIBRARY_OUTPUT_PATH ${ROOT_DIR}/lib)

set(SUPPORT_LIB_NAME support)
add_library(${SUPPORT_LIB_NAME} SHARED ${SUPPORT_HDIR} ${SUPPORT_SDIR})

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/support)
add_executable(${Program_Name} ${SRC_SDIR} ${GCANVAS_SDIR} ${PLATFORM_SDIR} ${COMMANDBUFFER_SDIR})

target_link_libraries(${Program_Name} support)