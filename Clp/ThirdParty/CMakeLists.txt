# CMakeLists.txt designed for 
# downloading/configuring/building/installing
# Thirdparty dependencies

set(EP_InstallDir ${CMAKE_BINARY_DIR}/Dependencies)

option(COIN_USE_DOWNLOAD_PTHREAD_WIN32 "Enable the download / compilation of PThreads for Windows" OFF)
option(COIN_USE_DOWNLOAD_LAPACK        "Enable the download / compilation of Blas / Lapack" OFF)
option(COIN_USE_DOWNLOAD_GLPK          "Enable the download / compilation of GLPK" OFF)
option(COIN_USE_DOWNLOAD_MUMPS         "Enable the download / compilation of Mumps" OFF)
option(COIN_USE_DOWNLOAD_ASL           "Enable the download / compilation of Ampl Solver Library" OFF)
option(COIN_USE_DOWNLOAD_ZLIB          "Enable the download / compilation of Zlib" OFF)
option(COIN_USE_DOWNLOAD_BZLIB         "Enable the download / compilation of BZlib" OFF)

if (WIN32)
  set(ZLIB_NAME "zlib.lib" CACHE FILEPATH "The Zlib library name" FORCE)
  set(BZLIB_NAME "libbz2.lib" CACHE FILEPATH "The BZlib library name" FORCE)
else ()
  set(ZLIB_NAME "libz.a" CACHE FILEPATH "The Zlib library name" FORCE)
  set(BZLIB_NAME "libbz2.a" CACHE FILEPATH "The BZlib library name" FORCE)
endif ()

mark_as_advanced(ZLIB_NAME
                 BZLIB_NAME)

if (COIN_USE_DOWNLOAD_PTHREAD_WIN32 OR COIN_USE_DOWNLOAD_LAPACK OR
    COIN_USE_DOWNLOAD_GLPK OR COIN_USE_DOWNLOAD_MUMPS OR
    COIN_USE_DOWNLOAD_ASL OR COIN_USE_DOWNLOAD_ZLIB OR
    COIN_USE_DOWNLOAD_BZLIB)
  return()
endif ()

option(COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32 "Enable the download / compilation of PThreads for Windows" OFF)
option(COIN_ENABLE_DOWNLOAD_LAPACK        "Enable the download / compilation of Blas / Lapack" OFF)
option(COIN_ENABLE_DOWNLOAD_GLPK          "Enable the download / compilation of GLPK" OFF)
option(COIN_ENABLE_DOWNLOAD_MUMPS         "Enable the download / compilation of Mumps" OFF)
option(COIN_ENABLE_DOWNLOAD_ASL           "Enable the download / compilation of Ampl Solver Library" OFF)
option(COIN_ENABLE_DOWNLOAD_DATA_TEST     "Enable the download / run of Data tests" OFF)
option(COIN_ENABLE_DOWNLOAD_ZLIB          "Enable the download / compilation of Zlib" OFF)
option(COIN_ENABLE_DOWNLOAD_BZLIB         "Enable the download / compilation of BZlib" OFF)

option(COIN_ENABLE_FIND_LAPACK "Enable the detection of Blas / Lapack" OFF)
option(COIN_ENABLE_FIND_ZLIB   "Enable the detection of Zlib" OFF)
option(COIN_ENABLE_FIND_BZLIB  "Enable the detection of BZlib" OFF)

if (COIN_ENABLE_FIND_LAPACK AND COIN_DOWNLOAD_LAPACK)
  message(STATUS "Warning: COIN_ENABLE_FIND_LAPACK and COIN_ENABLE_DOWNLOAD_LAPACK are activated. Desactivate COIN_ENABLE_DOWNLOAD_LAPACK")
  set(COIN_ENABLE_DOWNLOAD_LAPACK FALSE)
endif ()

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
if (NOT EXISTS ${EP_InstallDir}/bin)
  make_directory(${EP_InstallDir}/bin)
endif ()
if (NOT EXISTS ${EP_InstallDir}/lib)
  make_directory(${EP_InstallDir}/lib)
endif ()
if (NOT EXISTS ${EP_InstallDir}/include)
  make_directory(${EP_InstallDir}/include)
endif ()

include_directories(${EP_InstallDir}/include)
link_directories(${EP_InstallDir}/lib)

# #################################################
# ===>    Macros
# #################################################

# add_regex: allow to concat several regex into one for using it with cmake
macro(add_regex VARIABLE REGEX)
  set(${VARIABLE} "${${VARIABLE}}${REGEX}.*")
endmacro()

# Example of use:
#
# set(TEST_REGEX "")
# add_regex(TEST_REGEX "INFO  : Overall capacity cost : 7.54846e[+]09")
# add_regex(TEST_REGEX "INFO  : Overall simulation cost : 3.40945e[+]09")
# add_regex(TEST_REGEX "INFO  : Overall reward : -1.09579e[+]10")
# set_tests_properties(Test_Name PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

# #################################################
# <===    Macros
# #################################################

# #################################################
# ===>    Lapack
# #################################################

if (COIN_ENABLE_DOWNLOAD_LAPACK)
  if (UNIX)
    if (NOT CMAKE_SIZEOF_VOID_P EQUAL 4)
      set(LAPACK_C_FLAGS "-fPIC")
      set(LAPACK_LINKER_FLAGS "-fPIC")
    endif()
  endif ()
  
  set(COIN_HAS_LAPACK ON CACHE BOOL "Enable the Lapack support of CoinUtils" FORCE)
  set(COIN_HAS_BLAS   ON CACHE BOOL "Enable the Blas support of CoinUtils"   FORCE)

  ExternalProject_Add(EP_Lapack
                      PREFIX ${EP_InstallDir}/Lapack
		      URL http://www.coin-or.org/BuildTools/Lapack/lapack-3.4.2.tgz
                      CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Lapack/src/EP_Lapack/build
                                     && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack/src/EP_Lapack/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_C_FLAGS:String=${CLAPACK_C_FLAGS} -DCMAKE_EXE_LINKER_FLAGS:String=${LAPACK_LINKER_FLAGS} ..
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack/src/EP_Lapack/build make
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack/src/EP_Lapack/build/lib/liblapack.a ${EP_InstallDir}/lib
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack/src/EP_Lapack/build/lib/libblas.a   ${EP_InstallDir}/lib
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack/src/EP_Lapack/build/lib/libtmglib.a ${EP_InstallDir}/lib
                      )
endif ()

if (COIN_ENABLE_FIND_LAPACK)
  find_package(LAPACK)
  find_package(BLAS)
  
  if (LAPACK_FOUND AND BLAS_FOUND)
    set(COIN_HAS_LAPACK ON CACHE BOOL "Enable the Lapack support of CoinUtils" FORCE)
    set(COIN_HAS_BLAS   ON CACHE BOOL "Enable the Blas support of CoinUtils"   FORCE)
  else ()
    set(COIN_HAS_LAPACK OFF CACHE BOOL "Enable the Lapack support of CoinUtils" FORCE)
    set(COIN_HAS_BLAS   OFF CACHE BOOL "Enable the Blas support of CoinUtils"   FORCE)
  endif ()
endif()

# #################################################
# <===    Lapack
# #################################################

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
# ===>   GLPK 
# #################################################

if (COIN_ENABLE_DOWNLOAD_GLPK)
  set(GLPK_VERSION "4.52")
  
  if (UNIX)
    ExternalProject_Add(EP_glpk
                        PREFIX ${EP_InstallDir}/glpk
                        URL http://ftp.gnu.org/gnu/glpk/glpk-${GLPK_VERSION}.tar.gz
                        CONFIGURE_COMMAND ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk/src/EP_glpk ./configure --prefix=${EP_InstallDir} --enable-static --disable-shared --with-pic
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk/src/EP_glpk make
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk/src/EP_glpk make install &&
		                          ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/src/glplpx.h ${EP_InstallDir}/include
                        )
  elseif (WIN32)
    if (CMAKE_SIZEOF_VOID_P EQUAL 4)
      ExternalProject_Add(EP_glpk
                          PREFIX ${EP_InstallDir}/glpk
                          URL http://ftp.gnu.org/gnu/glpk/glpk-${GLPK_VERSION}.tar.gz
                          CONFIGURE_COMMAND ""
                          BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk/src/EP_glpk/w32 nmake -f Makefile_VC
                          INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/w32/glpk.lib ${EP_InstallDir}/lib &&
			                    ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/src/glpk.h   ${EP_InstallDir}/include &&
			                    ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/src/glplpx.h ${EP_InstallDir}/include
                          )
    else()
      ExternalProject_Add(EP_glpk
                          PREFIX ${EP_InstallDir}/glpk
                          URL http://ftp.gnu.org/gnu/glpk/glpk-${GLPK_VERSION}.tar.gz
                          CONFIGURE_COMMAND ""
                          BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk/src/EP_glpk/w64 nmake -f Makefile_VC
                          INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/w64/glpk.lib ${EP_InstallDir}/lib &&
			                    ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/src/glpk.h   ${EP_InstallDir}/include &&
			                    ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/src/glplpx.h ${EP_InstallDir}/include
                          )
    endif()
  endif()
endif()

# #################################################
# <===    glpk
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
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/pthreadVC2.lib ${EP_InstallDir}/lib/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/pthreadVC2.dll ${EP_InstallDir}/bin/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/pthread.h      ${EP_InstallDir}/include/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/sched.h        ${EP_InstallDir}/include/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/semaphore.h    ${EP_InstallDir}/include/
                        )
  endif (WIN32)
endif ()

# #################################################
# <=== PThreads compilation
# #################################################

# #################################################
# ===> Mumps compilation
# #################################################

if (COIN_ENABLE_DOWNLOAD_MUMPS)
  ExternalProject_Add(EP_Mumps
                      PREFIX ${EP_InstallDir}/Mumps
		      URL http://mumps.enseeiht.fr/MUMPS_4.10.0.tar.gz
                      PATCH_COMMAND     ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/ThirdParty/CMakeLists_mumps.txt ${EP_InstallDir}/Mumps/src/EP_Mumps/CMakeLists.txt
                      CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Mumps/src/EP_Mumps/build
                                     && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Mumps/src/EP_Mumps/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} ..
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Mumps/src/EP_Lapack/build make
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Mumps/src/EP_Lapack/build make install
                      )
endif()

# #################################################
# <=== Mumps compilation
# #################################################

# #################################################
# ===> ASL compilation
# #################################################

if (COIN_ENABLE_DOWNLOAD_ASL)
  ExternalProject_Add(EP_ASL
                      PREFIX ${EP_InstallDir}/ASL
		      URL http://www.coin-or.org/BuildTools/ASL/solvers-20130815.tgz
                      PATCH_COMMAND     ${CMAKE_COMMAND} -E copy_directory ${CMAKE_SOURCE_DIR}/ThirdParty/ASL ${EP_InstallDir}/Mumps/src/EP_ASL
                      CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/ASL/src/EP_ASL/build
                                     && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/ASL/src/EP_ASL/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} ..
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/ASL/src/EP_ASL/build make
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/ASL/src/EP_ASL/build make install
                      )
endif()

# #################################################
# <=== ASL compilation
# #################################################

# #################################################
# ===> Tests
# #################################################

if (COIN_ENABLE_DOWNLOAD_DATA_TEST)
  set(DATA_TEST_VERSION "1.0.7")
  
  ExternalProject_Add(EP_DATA_TEST
                      PREFIX ${EP_InstallDir}/DATA_TEST
		      URL http://www.coin-or.org/download/source/Data/Data-${DATA_TEST_VERSION}.tgz
                      PATCH_COMMAND     ""
                      CONFIGURE_COMMAND ""
                      BUILD_COMMAND     ""
                      INSTALL_COMMAND   ""
                      )
  
  include(ClpTests.cmake)
endif()

# #################################################
# <=== Tests
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
  if (COIN_ENABLE_DOWNLOAD_LAPACK)
    add_dependencies(${_target} EP_Lapack)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_GLPK)
    add_dependencies(${_target} EP_glpk)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_MUMPS)
    add_dependencies(${_target} EP_Mumps)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_ASL)
    add_dependencies(${_target} EP_ASL)
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
  if (COIN_ENABLE_DOWNLOAD_LAPACK)
    add_dependencies(${_target} EP_Lapack)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_GLPK)
    add_dependencies(${_target} EP_glpk)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_MUMPS)
    add_dependencies(${_target} EP_Mumps)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_ASL)
    add_dependencies(${_target} EP_ASL)
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
