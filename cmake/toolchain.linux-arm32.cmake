# Toolchain for cross-compiling to Linux-arm32 on a Linux-x86-64 host.

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

if (NOT DEFINED CC)
  set(CC "gcc")
endif ()
if (NOT DEFINED CXX)
  set(CXX "g++")
endif ()

SET(CMAKE_C_COMPILER   arm-linux-gnueabihf-${CC})
SET(CMAKE_CXX_COMPILER arm-linux-gnueabihf-${CXX})

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
