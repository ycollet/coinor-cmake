cmake_minimum_required(VERSION 2.8)

project(Cbc_Thirdparty)

# CMakeLists.txt designed for 
# downloading/configuring/building/installing
# Thirdparty dependencies

option(COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32 "Enable the download / compilation of PThreads for Windows" OFF)
option(COIN_ENABLE_DOWNLOAD_LAPACK        "Enable the download / compilation of Blas / Lapack" OFF)
option(COIN_ENABLE_DOWNLOAD_GLPK          "Enable the download / compilation of GLPK" OFF)
option(COIN_ENABLE_DOWNLOAD_MUMPS         "Enable the download / compilation of Mumps" OFF)
option(COIN_ENABLE_DOWNLOAD_ASL           "Enable the download / compilation of Ampl Solver Library" OFF)
option(COIN_ENABLE_DOWNLOAD_METIS         "Enable the download / compilation of Metis" OFF)

# Prevent the "make clean" from cleaning this directory
set_directory_properties(PROPERTIES CLEAN_NO_CUSTOM TRUE)

include(ExternalProject)

set(EP_InstallDir ${CMAKE_BINARY_DIR}/Thirdparty)

if (NOT EXISTS ${CMAKE_BINARY_DIR}/Thirdparty)
  make_directory(${CMAKE_BINARY_DIR}/Thirdparty)
endif ()
if (NOT EXISTS ${CMAKE_BINARY_DIR}/Thirdparty/lib)
  make_directory(${CMAKE_BINARY_DIR}/Thirdparty/lib)
endif ()
if (NOT EXISTS ${CMAKE_BINARY_DIR}/Thirdparty/include)
  make_directory(${CMAKE_BINARY_DIR}/Thirdparty/include)
endif ()

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
  
  ExternalProject_Add(EP_Lapack
                      PREFIX ${EP_InstallDir}/Lapack
		      URL http://www.coin-or.org/BuildTools/Lapack/lapack-3.4.2.tgz
                      CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Lapack/src/EP_Lapack/build
                                     && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack/src/EP_Lapack/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir}/install -DCMAKE_C_FLAGS:String=${CLAPACK_C_FLAGS} -DCMAKE_EXE_LINKER_FLAGS:String=${LAPACK_LINKER_FLAGS} ..
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack/src/EP_Lapack/build make
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack/src/EP_Lapack/build/lib/liblapack.a ${EP_InstallDir}/install/lib
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack/src/EP_Lapack/build/lib/libblas.a   ${EP_InstallDir}/install/lib
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack/src/EP_Lapack/build/lib/libtmglib.a ${EP_InstallDir}/install/lib
                      )
endif()

# #################################################
# <===    Lapack
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
                        CONFIGURE_COMMAND ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk/src/EP_glpk ./configure --prefix=${EP_InstallDir}/install --enable-static --disable-shared --with-pic
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk/src/EP_glpk make
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk/src/EP_glpk make install &&
		                          ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/src/glplpx.h ${EP_InstallDir}/install/include
                        )
  elseif (WIN32)
    if (CMAKE_SIZEOF_VOID_P EQUAL 4)
      ExternalProject_Add(EP_glpk
                          PREFIX ${EP_InstallDir}/glpk
                          URL http://ftp.gnu.org/gnu/glpk/glpk-${GLPK_VERSION}.tar.gz
                          CONFIGURE_COMMAND ""
                          BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk/src/EP_glpk/w32 nmake -f Makefile_VC
                          INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/w32/glpk.lib ${EP_InstallDir}/install/lib &&
			                    ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/src/glpk.h   ${EP_InstallDir}/install/include &&
			                    ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/src/glplpx.h ${EP_InstallDir}/install/include
                          )
    else()
      ExternalProject_Add(EP_glpk
                          PREFIX ${EP_InstallDir}/glpk
                          URL http://ftp.gnu.org/gnu/glpk/glpk-${GLPK_VERSION}.tar.gz
                          CONFIGURE_COMMAND ""
                          BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk/src/EP_glpk/w64 nmake -f Makefile_VC
                          INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/w64/glpk.lib ${EP_InstallDir}/install/lib &&
			                    ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/src/glpk.h   ${EP_InstallDir}/install/include &&
			                    ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/src/glplpx.h ${EP_InstallDir}/install/include
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
# ===> Metis compilation
# #################################################

if (COIN_ENABLE_DOWNLOAD_METIS)
  ExternalProject_Add(EP_Metis
                      PREFIX ${EP_InstallDir}/Metis
                      URL http://glaros.dtc.umn.edu/gkhome/fetch/sw/metis/OLD/metis-4.0.3.tar.gz
                      CONFIGURE_COMMAND ""
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Metis/src/EP_Metis make
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/Metis/src/EP_Metis/libmetis.a ${CMAKE_BINARY_DIR}/Dependencies/install/lib/
                                     && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/Metis/src/EP_Metis/Lib/*.h    ${CMAKE_BINARY_DIR}/Dependencies/install/include/
                      )
endif ()

# #################################################
# <=== Metis compilation
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
                                     && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Mumps/src/EP_Mumps/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir}/install ..
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
                                     && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/ASL/src/EP_ASL/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir}/install ..
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/ASL/src/EP_ASL/build make
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/ASL/src/EP_ASL/build make install
                      )
endif()

# #################################################
# <=== ASL compilation
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
  if (COIN_ENABLE_DOWNLOAD_METIS)
    add_dependencies(${_target} EP_Metis)
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
  if (COIN_ENABLE_DOWNLOAD_METIS)
    add_dependencies(${_target} EP_Metis)
  endif ()
endmacro()

# #################################################
# <===   Restart cmake 
# #################################################
