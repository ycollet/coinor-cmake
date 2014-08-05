cmake_minimum_required(VERSION 2.8)

project(CoinUtils_Thirdparty)

# CMakeLists.txt designed for 
# downloading/configuring/building/installing
# Thirdparty dependencies

option(COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32   "Enable the download / compilation of PThreads for Windows" OFF)
option(COIN_ENABLE_DOWNLOAD_ZLIB            "Enable the download / compilation of Zlib" OFF)

# Prevent the "make clean" from cleaning this directory
set_directory_properties(PROPERTIES CLEAN_NO_CUSTOM TRUE)

include(ExternalProject)

set(EP_InstallDir ${CMAKE_BINARY_DIR}/Dependencies)

if (NOT EXISTS ${CMAKE_BINARY_DIR}/Dependencies)
  make_directory(${CMAKE_BINARY_DIR}/Dependencies)
endif ()
if (NOT EXISTS ${CMAKE_BINARY_DIR}/Dependencies/lib)
  make_directory(${CMAKE_BINARY_DIR}/Dependencies/lib)
endif ()
if (NOT EXISTS ${CMAKE_BINARY_DIR}/Dependencies/include)
  make_directory(${CMAKE_BINARY_DIR}/Dependencies/include)
endif ()

# #################################################
# ===>    Zlib
# #################################################

if (COIN_ENABLE_DOWNLOAD_ZLIB)
  set(ZLIB_VERSION "1.2.8")

  if (WIN32)
    set(ZLIB_NAME "${EP_InstallDir}/lib/libz.lib" CACHE STRING "The Zlib library name" FORCE)
    
    ExternalProject_Add(EP_Zlib
                        PREFIX ${EP_InstallDir}/Zlib
  			URL http://zlib.net/zlib-1.2.8.tar.gz
			CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Zlib/src/EP_Zlib/build
                                       && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_C_FLAGS:String=${CLAPACK_C_FLAGS} -DCMAKE_EXE_LINKER_FLAGS:String=${LAPACK_LINKER_FLAGS} ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build nmake
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build nmake install
                        )
  else ()
    set(ZLIB_NAME "${EP_InstallDir}/lib/libz.a" CACHE STRING "The Zlib library name" FORCE)
    
    ExternalProject_Add(EP_Zlib
                        PREFIX ${EP_InstallDir}/Zlib
  			URL http://zlib.net/zlib-1.2.8.tar.gz
			CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Zlib/src/EP_Zlib/build
                                       && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_C_FLAGS:String=${CLAPACK_C_FLAGS} -DCMAKE_EXE_LINKER_FLAGS:String=${LAPACK_LINKER_FLAGS} ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build make
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build make install
                        )
  endif()
endif()

# #################################################
# <===    Zlib
# #################################################

# #################################################
# ===> PThreads compilation
# #################################################

if (COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32)
  if (WIN32)
    ExternalProject_Add(EP_PThreads
                        PREFIX ${EP_InstallDir}/PThreads
                        URL ftp://sourceware.org/pub/pthreads-win32/pthreads-w32-2-9-1-release.tar.gz
                        CONFIGURE_COMMAND ""
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/PThreads/src/EP_PThreads nmake clean VC
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/pthreadVC2.lib ${CMAKE_BINARY_DIR}/Dependencies/install/lib/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/pthreadVC2.dll ${CMAKE_BINARY_DIR}/Dependencies/install/bin/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/pthread.h      ${CMAKE_BINARY_DIR}/Dependencies/install/include/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/sched.h        ${CMAKE_BINARY_DIR}/Dependencies/install/include/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/semaphore.h    ${CMAKE_BINARY_DIR}/Dependencies/install/include/
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
endmacro()

macro(add_executable _target)
  _add_executable (${_target} ${ARGN})
  
  if (COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32)
    add_dependencies(${_target} EP_PThreads)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_ZLIB)
    add_dependencies(${_target} EP_Zlib)
  endif ()
endmacro()

# #################################################
# <===   Restart cmake 
# #################################################
