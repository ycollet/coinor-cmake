cmake_minimum_required(VERSION 2.8)

project(Ipopt_Thirdparty)

# CMakeLists.txt designed for 
# downloading/configuring/building/installing
# Thirdparty dependencies

option(COIN_ENABLE_DOWNLOAD_MUMPS   "Enable the download / compilation of Mumps" OFF)
option(COIN_ENABLE_DOWNLOAD_METIS   "Enable the download / compilation of Metis" OFF)
option(COIN_ENABLE_DOWNLOAD_ASL     "Enable the download / compilation of Ampl Solver Library" OFF)
option(COIN_ENABLE_DOWNLOAD_LAPACK  "Enable the download / compilation of Blas / Lapack" OFF)
option(COIN_ENABLE_DOWNLOAD_CLAPACK "Enable the download / compilation of CBlas / CLapack" OFF)

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

# #################################################
# ===>    CLapack
# #################################################

if (COIN_ENABLE_DOWNLOAD_CLAPACK)
  set(CLapack_version "3.2.1")
  
  if (UNIX)
    if (NOT CMAKE_SIZEOF_VOID_P EQUAL 4)
      set(CLAPACK_C_FLAGS      "-fPIC")
      set(CLAPACK_LINKER_FLAGS "-fPIC")
    endif()
    
    if (CMAKE_COMPILER_IS_GNUCC OR CMAKE_COMPILER_IS_GNUCXX)
      if (RM_COMPILE_LTO)
        set(CLAPACK_C_FLAGS      "${CLAPACK_C_FLAGS} -flto")
        set(CLAPACK_LINKER_FLAGS "${CLAPACK_LINKER_FLAGS} -flto")
      endif ()
      if (RM_COMPILE_WHOPR)
        set(CLAPACK_C_FLAGS      "${CLAPACK_C_FLAGS} -flto")
        set(CLAPACK_LINKER_FLAGS "${CLAPACK_LINKER_FLAGS} -flto")
      endif ()
    endif ()
  endif ()
  
  if (WIN32)
    if (MSVC)
      if (RM_COMPILE_LTO OR RM_COMPILE_WHOPR)
        set(CLAPACK_C_FLAGS      "/GL")
        set(CLAPACK_LINKER_FLAGS "/LTGC")
      endif ()
    endif ()
  endif ()
  
  set(COIN_HAS_LAPACK ON CACHE BOOL "Enable the Lapack support of CoinUtils" FORCE)
  set(COIN_HAS_BLAS   ON CACHE BOOL "Enable the Blas support of CoinUtils"   FORCE)
  
  if (WIN32 AND NOT MINGW)
    ExternalProject_Add(EP_Lapack
                        PREFIX            ${EP_InstallDir}/Lapack
                        URL               http://netlib.sandia.gov/clapack/clapack-${CLapack_version}-CMAKE.tgz
                        UPDATE_COMMAND    ""
                        CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Lapack/src/EP_Lapack/build
                                       && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack/src/EP_Lapack/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_C_FLAGS:String=${CLAPACK_C_FLAGS} -DCMAKE_EXE_LINKER_FLAGS:String=${CLAPACK_LINKER_FLAGS} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} -G ${CMAKE_GENERATOR} ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack/src/EP_Lapack/build ${CMAKE_MAKE_PROGRAM}
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack/src/EP_Lapack/build/SRC/lapack.lib ${EP_InstallDir}/lib
                                       && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack/src/EP_Lapack/build/F2CLIBS/libf2c/libf2c.lib ${EP_InstallDir}/lib/f2c.lib
                                       && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack/src/EP_Lapack/build/BLAS/SRC/blas.lib ${EP_InstallDir}/lib
                        )
  elseif (UNIX)
    ExternalProject_Add(EP_Lapack
                        PREFIX            ${EP_InstallDir}/Lapack
                        URL               http://netlib.sandia.gov/clapack/clapack-${CLapack_version}-CMAKE.tgz
                        UPDATE_COMMAND    ""
                        CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Lapack/src/EP_Lapack/build
                                       && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack/src/EP_Lapack/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_C_FLAGS:String=${CLAPACK_C_FLAGS} -DCMAKE_EXE_LINKER_FLAGS:String=${CLAPACK_LINKER_FLAGS} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack/src/EP_Lapack/build ${CMAKE_MAKE_PROGRAM}
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack/src/EP_Lapack/build/SRC/liblapack.a ${EP_InstallDir}/lib
                                       && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack/src/EP_Lapack/build/F2CLIBS/libf2c/libf2c.a ${EP_InstallDir}/lib
                                       && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack/src/EP_Lapack/build/BLAS/SRC/libblas.a ${EP_InstallDir}/lib
                        )
  endif ()
endif()

# #################################################
# <===    CLapack
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
                      UPDATE_COMMAND    ""
                      CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Lapack/src/EP_Lapack/build
                                     && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack/src/EP_Lapack/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_C_FLAGS:String=${CLAPACK_C_FLAGS} -DCMAKE_EXE_LINKER_FLAGS:String=${LAPACK_LINKER_FLAGS} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} ..
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack/src/EP_Lapack/build ${CMAKE_MAKE_PROGRAM}
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
endif ()

# #################################################
# <===    Lapack
# #################################################

# #################################################
# ===>    Mumps
# #################################################

if (COIN_ENABLE_DOWNLOAD_MUMPS)
  set(MUMPS_VERSION "4.10.0")

  ExternalProject_Add(EP_Mumps
                      PREFIX ${EP_InstallDir}/Mumps
                      URL http://mumps.enseeiht.fr/MUMPS_${MUMPS_VERSION}.tar.gz
                      UPDATE_COMMAND    ""
                      PATCH_COMMAND     ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/ThirdParty/Mumps/CMakeLists.txt ${EP_InstallDir}/Mumps/src/EP_Mumps
                      CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Mumps/src/EP_Mumps/build
                                     && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Mumps/src/EP_Mumps/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DPROJECT_REVISION=10 -DUSE_MUMPS_LIBSEQ=ON -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} -G ${CMAKE_GENERATOR} ..
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Mumps/src/EP_Mumps/build ${CMAKE_MAKE_PROGRAM}
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Mumps/src/EP_Mumps/build ${CMAKE_MAKE_PROGRAM} install
                      )

  set(COIN_HAS_MUMPS ON CACHE BOOL "Enable the Mumps linear solver (enabled by default)" FORCE)
endif()

# #################################################
# <===    Mumps
# #################################################

# #################################################
# ===>    Metis
# #################################################

if (COIN_ENABLE_DOWNLOAD_METIS)
  set(METIS_VERSION "4.0.3")

  if (WIN32)
    ExternalProject_Add(EP_Metis
                        PREFIX ${EP_InstallDir}/Metis
                        URL http://glaros.dtc.umn.edu/gkhome/fetch/sw/metis/OLD/metis-${METIS_VERSION}.tar.gz
                        UPDATE_COMMAND    ""
                        PATCH_COMMAND     ${CMAKE_COMMAND} -E copy  ${CMAKE_SOURCE_DIR}/ThirdParty/Metis/CMakeLists.txt ${EP_InstallDir}/Metis/src/EP_Metis
                        CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Metis/src/EP_Metis/build
                                       && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Metis/src/EP_Metis/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} -G ${CMAKE_GENERATOR} ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Metis/src/EP_Metis/build ${CMAKE_MAKE_PROGRAM}
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Metis/src/EP_Metis/build ${CMAKE_MAKE_PROGRAM} install
                        )
  else ()
    ExternalProject_Add(EP_Metis
                        PREFIX ${EP_InstallDir}/Metis
                        URL http://glaros.dtc.umn.edu/gkhome/fetch/sw/metis/OLD/metis-${METIS_VERSION}.tar.gz
                        UPDATE_COMMAND    ""
                        PATCH_COMMAND     ${CMAKE_COMMAND} -E copy  ${CMAKE_SOURCE_DIR}/ThirdParty/Metis/CMakeLists.txt ${EP_InstallDir}/Metis/src/EP_Metis
                        CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Metis/src/EP_Metis/build
                                       && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Metis/src/EP_Metis/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Metis/src/EP_Metis/build ${CMAKE_MAKE_PROGRAM}
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Metis/src/EP_Metis/build ${CMAKE_MAKE_PROGRAM} install
                        )
  endif()
endif()

# #################################################
# <===    Metis
# #################################################

# #################################################
# ===> ASL compilation
# #################################################

if (COIN_ENABLE_DOWNLOAD_ASL)
  set(coinasl "1.3.0")
  set(COIN_HAS_ASL ON CACHE BOOL "Enable the ASL support" FORCE)
  
  ExternalProject_Add(EP_ASL
                      PREFIX ${EP_InstallDir}/ASL
                      URL https://github.com/ampl/mp/archive/${coinasl}.tar.gz
                      UPDATE_COMMAND    ""
                      PATCH_COMMAND     ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/ThirdParty/ASL/AMPLConfig.cmake.in ${EP_InstallDir}/ASL/src/EP_ASL/src/asl/solvers/
                                     && ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/ThirdParty/ASL/CMakeLists.txt      ${EP_InstallDir}/ASL/src/EP_ASL/src/asl/solvers/
                                     && ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/ThirdParty/ASL/FindDL.cmake        ${EP_InstallDir}/ASL/src/EP_ASL/src/asl/solvers/
                                     && ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/ThirdParty/ASL/details.c0.cmake.in ${EP_InstallDir}/ASL/src/EP_ASL/src/asl/solvers/
                      CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/ASL/src/EP_ASL/src/asl/solvers/build
                                     && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/ASL/src/EP_ASL/src/asl/solvers/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} -G ${CMAKE_GENERATOR} ..
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/ASL/src/EP_ASL/src/asl/solvers/build ${CMAKE_MAKE_PROGRAM}
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/ASL/src/EP_ASL/src/asl/solvers/build ${CMAKE_MAKE_PROGRAM} install
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
  
  if (COIN_ENABLE_DOWNLOAD_MUMPS)
    add_dependencies(${_target} EP_Mumps)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_METIS)
    add_dependencies(${_target} EP_Metis)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_ASL)
    add_dependencies(${_target} EP_ASL)
  endif ()
endmacro()

macro(add_executable _target)
  _add_executable (${_target} ${ARGN})
  
  if (COIN_ENABLE_DOWNLOAD_MUMPS)
    add_dependencies(${_target} EP_Mumps)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_METIS)
    add_dependencies(${_target} EP_Metis)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_ASL)
    add_dependencies(${_target} EP_ASL)
  endif ()
endmacro()

# #################################################
# <===   Restart cmake 
# #################################################
