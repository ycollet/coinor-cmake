cmake_minimum_required(VERSION 2.8)

project(CoinUtils_Thirdparty)

# CMakeLists.txt designed for 
# downloading/configuring/building/installing
# Thirdparty dependencies

option(COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32 "Enable the download / compilation of PThreads for Windows" OFF)
option(COIN_ENABLE_DOWNLOAD_ZLIB          "Enable the download / compilation of Zlib" OFF)
option(COIN_ENABLE_DOWNLOAD_BZLIB         "Enable the download / compilation of BZlib" OFF)

option(COIN_USE_DOWNLOAD_ZLIB  "Enable the use of the thirdparty Zlib" OFF)
option(COIN_USE_DOWNLOAD_BZLIB "Enable the use of the thirdparty BZlib" OFF)
  
if (WIN32)
  set(ZLIB_NAME "zlib.lib" CACHE FILEPATH "The Zlib library name" FORCE)
  set(BZLIB_NAME "libbz2.lib" CACHE FILEPATH "The BZlib library name" FORCE)
else ()
  set(ZLIB_NAME "libz.a" CACHE FILEPATH "The Zlib library name" FORCE)
  set(BZLIB_NAME "libbz2.a" CACHE FILEPATH "The BZlib library name" FORCE)
endif ()

if (COIN_USE_DOWNLOAD_ZLIB OR COIN_USE_DOWNLOAD_BZLIB)
  return()
endif ()

option(COIN_ENABLE_FIND_ZLIB  "Enable the detection of Zlib" OFF)
option(COIN_ENABLE_FIND_BZLIB "Enable the detection of BZlib" OFF)

if (COIN_ENABLE_FIND_ZLIB AND COIN_DOWNLOAD_ZLIB)
  message(STATUS "Warning: COIN_ENABLE_FIND_ZLIB and COIN_ENABLE_DOWNLOAD_ZLIB are activated. Desactivate COIN_ENABLE_DOWNLOAD_ZLIB")
  set(COIN_ENABLE_DOWNLOAD_ZLIB FALSE)
endif ()

if (COIN_ENABLE_FIND_BZLIB AND COIN_DOWNLOAD_BZLIB)
  message(STATUS "Warning: COIN_ENABLE_FIND_BZLIB and COIN_ENABLE_DOWNLOAD_BZLIB are activated. Desactivate COIN_ENABLE_DOWNLOAD_BZLIB")
  set(COIN_ENABLE_DOWNLOAD_BZLIB FALSE)
endif ()

# Prevent the "make clean" from cleaning this directory
set_directory_properties(PROPERTIES CLEAN_NO_CUSTOM TRUE)

include(ExternalProject)

set(EP_InstallDir ${CMAKE_BINARY_DIR}/Dependencies)

if (NOT EXISTS ${EP_InstallDir})
  make_directory(${EP_InstallDir})
endif ()
if (NOT EXISTS ${EP_InstallDir}/lib)
  make_directory(${EP_InstallDir}/lib)
endif ()
if (NOT EXISTS ${EP_InstallDir}/include)
  make_directory(${EP_InstallDir}/include)
endif ()

# #################################################
# ===>    Zlib
# #################################################

if (COIN_ENABLE_DOWNLOAD_ZLIB)
  set(ZLIB_VERSION "1.2.8")

  set(COINUTILS_HAS_ZLIB_INCLUDE_PATH "${EP_InstallDir}/include" CACHE STRING "The Zlib library include Path" FORCE)
  set(COINUTILS_HAS_ZLIB_LIBRARY_PATH "${EP_InstallDir}/lib" CACHE STRING "The Zlib library library Path" FORCE)
  
  if (WIN32)
    set(ZLIB_NAME "${EP_InstallDir}/lib/zlib.lib" CACHE STRING "The Zlib library name" FORCE)
    
    ExternalProject_Add(EP_Zlib
                        PREFIX ${EP_InstallDir}/Zlib
  			URL http://zlib.net/zlib-${ZLIB_VERSION}.tar.gz
			CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Zlib/src/EP_Zlib/build
                                       && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -G "NMake Makefiles" ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build nmake
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build nmake install
                        )
  else ()
    set(ZLIB_NAME "${EP_InstallDir}/lib/libz.a" CACHE STRING "The Zlib library name" FORCE)
    
    ExternalProject_Add(EP_Zlib
                        PREFIX ${EP_InstallDir}/Zlib
  			URL http://zlib.net/zlib-${ZLIB_VERSION}.tar.gz
			CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Zlib/src/EP_Zlib/build
                                       && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build make
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build make install
                        )
  endif ()
endif ()

if (COIN_ENABLE_FIND_ZLIB)
  find_package(ZLIB)
  
  if (ZLIB_FOUND)
    include_directories(${ZLIB_INCLUDE_DIRS})
    set(ZLIB_NAME "${ZLIB_LIBRARIES}" CACHE STRING "The Zlib library name" FORCE)
    set(COINUTILS_HAS_ZLIB_INCLUDE_PATH "${ZLIB_INCLUDE_DIRS}" CACHE STRING "The Zlib library include Path" FORCE)
    set(COINUTILS_HAS_ZLIB_LIBRARY_PATH "None" CACHE STRING "The Zlib library library Path" FORCE)
    set(COINUTILS_HAS_ZLIB ON CACHE BOOL "Activate Zlib for CoinUtils" FORCE)
  else ()
    set(ZLIB_NAME "" CACHE STRING "The Zlib library name" FORCE)
    set(COINUTILS_HAS_ZLIB_INCLUDE_PATH "None" CACHE STRING "The Zlib library include Path" FORCE)
    set(COINUTILS_HAS_ZLIB_LIBRARY_PATH "None" CACHE STRING "The Zlib library library Path" FORCE)
    set(COINUTILS_HAS_ZLIB OFF CACHE BOOL "Activate Zlib for CoinUtils" FORCE)
  endif ()
endif()

# #################################################
# <===    Zlib
# #################################################

# #################################################
# ===>    BZlib
# #################################################

if (COIN_ENABLE_DOWNLOAD_BZLIB)
  set(BZLIB_VERSION "1.0.6")

  set(COINUTILS_HAS_BZLIB_INCLUDE_PATH "${EP_InstallDir}/include" CACHE STRING "The BZlib library include Path" FORCE)
  set(COINUTILS_HAS_BZLIB_LIBRARY_PATH "${EP_InstallDir}/lib" CACHE STRING "The BZlib library library Path" FORCE)
  
  if (WIN32)
    set(BZLIB_NAME "${EP_InstallDir}/lib/libbz2.lib" CACHE STRING "The BZlib library name" FORCE)
    
    ExternalProject_Add(EP_BZlib
                        PREFIX ${EP_InstallDir}/BZlib
  			URL http://www.bzip.org/${BZLIB_VERSION}/bzip2-${BZLIB_VERSION}.tar.gz
			CONFIGURE_COMMAND ""
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/BZlib/src/EP_BZlib nmake -f makefile.msc
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/BZlib/src/EP_BZlib/libbz2.lib ${EP_InstallDir}/lib &&
			                  ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/BZlib/src/EP_BZlib/bzlib.h ${EP_InstallDir}/include &&
			                  ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/BZlib/src/EP_BZlib/bzlib_private.h ${EP_InstallDir}/include
                        )
  else ()
    set(BZLIB_NAME "${EP_InstallDir}/lib/libbz2.a" CACHE STRING "The BZlib library name" FORCE)
    
    ExternalProject_Add(EP_BZlib
                        PREFIX ${EP_InstallDir}/BZlib
  			URL http://www.bzip.org/${BZLIB_VERSION}/bzip2-${BZLIB_VERSION}.tar.gz
			CONFIGURE_COMMAND ""
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/BZlib/src/EP_BZlib make
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/BZlib/src/EP_BZlib/libbz2.a ${EP_InstallDir}/lib &&
			                  ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/BZlib/src/EP_BZlib/bzlib.h ${EP_InstallDir}/include &&
			                  ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/BZlib/src/EP_BZlib/bzlib_private.h ${EP_InstallDir}/include
                        )
  endif ()
endif ()

if (COIN_ENABLE_FIND_BZLIB)
  find_package(BZip2)
  
  if (BZIP2_FOUND)
    include_directories(${BZIP2_INCLUDE_DIR})
    set(BZLIB_NAME "${BZIP2_LIBRARIES}" CACHE STRING "The BZlib library name" FORCE)
    set(COINUTILS_HAS_BZLIB_INCLUDE_PATH "${BZIP2_INCLUDE_DIR}" CACHE STRING "The BZlib library include Path" FORCE)
    set(COINUTILS_HAS_BZLIB_LIBRARY_PATH "None" CACHE STRING "The BZlib library library Path" FORCE)
    set(COINUTILS_HAS_BZLIB ON CACHE BOOL "Activate BZlib for CoinUtils" FORCE)
  else ()
    set(BZLIB_NAME "" CACHE STRING "The BZlib library name" FORCE)
    set(COINUTILS_HAS_BZLIB_INCLUDE_PATH "None" CACHE STRING "The BZlib library include Path" FORCE)
    set(COINUTILS_HAS_BZLIB_LIBRARY_PATH "None" CACHE STRING "The BZlib library library Path" FORCE)
    set(COINUTILS_HAS_BZLIB OFF CACHE BOOL "Activate BZlib for CoinUtils" FORCE)
  endif ()
endif()

# #################################################
# <===    BZlib
# #################################################

# #################################################
# ===> PThreads compilation
# #################################################

if (COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32)
  if (WIN32)
    set(COIN_THREADS_INC_PATH "${EP_InstallDir}/include" CACHE STRING "The PThreads library include Path" FORCE)
    set(COIN_THREADS_LIB_PATH "${EP_InstallDir}/lib" CACHE STRING "The PThreads library library Path" FORCE)
    
    ExternalProject_Add(EP_PThreads
                        PREFIX ${EP_InstallDir}/PThreads
                        URL ftp://sourceware.org/pub/pthreads-win32/pthreads-w32-2-9-1-release.tar.gz
                        CONFIGURE_COMMAND ""
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/PThreads/src/EP_PThreads nmake clean VC
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/pthreadVC2.lib ${CMAKE_BINARY_DIR}/Dependencies/lib/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/pthreadVC2.dll ${CMAKE_BINARY_DIR}/Dependencies/bin/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/pthread.h      ${CMAKE_BINARY_DIR}/Dependencies/include/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/sched.h        ${CMAKE_BINARY_DIR}/Dependencies/include/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/semaphore.h    ${CMAKE_BINARY_DIR}/Dependencies/include/
                        )
  endif (WIN32)
endif ()

# #################################################
# <=== PThreads compilation
# #################################################

# #################################################
# ===>   Restart cmake
# #################################################

## Overload some CMake command to avoid modif all sub-projects CMakLists.txt file
## The original built-in commands are prefixed with an underscore if overriding any of them
## Prevent the modification of all sub-project

macro(add_library _target)
  _add_library (${_target} ${ARGN})
  
  if (COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32)
    add_dependencies(${_target} EP_PThreads)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_ZLIB)
    add_dependencies(${_target} EP_Zlib)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_BZLIB)
    add_dependencies(${_target} EP_BZlib)
  endif ()
endmacro()

macro(add_executable _target)
  _add_executable (${_target} ${ARGN})
  
  if (COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32)
    add_dependencies(${_target} EP_PThreads)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_ZLIB)
    add_dependencies(${_target} EP_Zlib)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_BZLIB)
    add_dependencies(${_target} EP_BZlib)
  endif ()
endmacro()

# #################################################
# <===   Restart cmake 
# #################################################
