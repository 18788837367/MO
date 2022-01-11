#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/zrf/MobileOpenGL/build
  make -f /Users/zrf/MobileOpenGL/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/zrf/MobileOpenGL/build
  make -f /Users/zrf/MobileOpenGL/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/zrf/MobileOpenGL/build
  make -f /Users/zrf/MobileOpenGL/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/zrf/MobileOpenGL/build
  make -f /Users/zrf/MobileOpenGL/build/CMakeScripts/ReRunCMake.make
fi

