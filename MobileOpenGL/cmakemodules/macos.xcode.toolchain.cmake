if(MAC_XCODE_TOOLCHAIN_INCLUDE)
    return()
endif(MAC_XCODE_TOOLCHAIN_INCLUDE)

set(MAC_XCODE_TOOLCHAIN_INCLUDE true)

set(CMAKE_OSX_SYSROOT "macosx")

#intel & M1
set(CMAKE_XCODE_ATTRIBUTE_VALID_ARCHS "x86_64 arm64")

set(CMAKE_XCODE_ATTRIBUTE_ONLY_ACTIVE_ARCH[variant=Debug] YES)
set(CMAKE_XCODE_ATTRIBUTE_ONLY_ACTIVE_ARCH[variant=Release] NO)
set(CMAKE_XCODE_ATTRIBUTE_SUPPORTED_PLATFORMS "macosx")
set(CMAKE_XCODE_ATTRIBUTE_GCC_ENABLE_CPP_RTTI NO)
set(CMAKE_XCODE_ATTRIBUTE_GCC_GENERATE_DEBUGGING_SYMBOLS[variant=Debug] YES)
set(CMAKE_XCODE_ATTRIBUTE_GCC_GENERATE_DEBUGGING_SYMBOLS[variant=Release] NO)


if(APPLE)
  set(MACOS_PLATFORM "")
else()
  message(ERROR "unsupport os!")
endif()