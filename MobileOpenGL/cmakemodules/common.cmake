## 判断编译器
if (${CMAKE_CXX_COMPILER_ID} MATCHES Clang)
    set(TARGET_COMPILER_CLANG true)
elseif (${CMAKE_CXX_COMPILER_ID} MATCHES GNU)
    set(TARGET_COMPILER_GCC true)
elseif (${CMAKE_CXX_COMPILER_ID} MATCHES MSVC)
    set(TARGET_COMPILER_MSVC true)
else()
    message(FATAL_ERROR "unsupport compiler!")
    return()
endif()