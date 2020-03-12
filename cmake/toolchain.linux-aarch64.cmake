# Toolchain for cross-compiling to Linux-aarch64 on a Linux-x86-64 host.

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

set(CC "$ENV{CC}")
set(CXX "$ENV{CXX}")
if ("${CC}" STREQUAL "")
  set(CC gcc)
endif()
if ("${CXX}" STREQUAL "")
  set(CXX g++)
endif()

SET(CMAKE_C_COMPILER   aarch64-linux-gnu-${CC})
SET(CMAKE_CXX_COMPILER aarch64-linux-gnu-${CXX})

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
