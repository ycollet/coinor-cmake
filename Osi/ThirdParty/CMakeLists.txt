# CMakeLists.txt designed for 
# downloading/configuring/building/installing
# Thirdparty dependencies

option(COIN_USE_PTHREAD_WIN32 "Enable the use of PThreads for Windows" OFF)
option(COIN_USE_MINGW_LAPACK  "Enable the use of MinGW compiled Blas / Lapack" OFF)
option(COIN_USE_LAPACK        "Enable the use of Blas / Lapack" OFF)
option(COIN_USE_CLAPACK       "Enable the use of CBlas / CLapack" OFF)
option(COIN_USE_GLPK          "Enable the use of GLPK" OFF)
option(COIN_USE_ZLIB          "Enable the use of Zlib" OFF)
option(COIN_USE_BZLIB         "Enable the use of BZlib" OFF)

if (WIN32 AND NOT MINGW)
  set(ZLIB_NAME  "zlibstatic.lib" CACHE FILEPATH "The Zlib library name"  FORCE)
  set(BZLIB_NAME "libbz2.lib"     CACHE FILEPATH "The BZlib library name" FORCE)
elseif (MINGW)
  set(ZLIB_NAME  "libzlibstatic.a" CACHE FILEPATH "The Zlib library name"  FORCE)
  set(BZLIB_NAME "libbz2.a"        CACHE FILEPATH "The BZlib library name" FORCE)
else ()
  set(ZLIB_NAME  "libz.a"   CACHE FILEPATH "The Zlib library name"  FORCE)
  set(BZLIB_NAME "libbz2.a" CACHE FILEPATH "The BZlib library name" FORCE)
endif ()

mark_as_advanced(ZLIB_NAME
                 BZLIB_NAME)

if (COIN_USE_PTHREAD_WIN32 OR COIN_USE_LAPACK OR COIN_USE_CLAPACK OR COIN_USE_MINGW_LAPACK OR
    COIN_USE_GLPK OR COIN_USE_ZLIB OR COIN_USE_BZLIB)
  return ()
endif ()

option(COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32 "Enable the download / compilation of PThreads for Windows" OFF)
option(COIN_ENABLE_DOWNLOAD_MINGW_LAPACK  "Enable the download / compilation of MinGW compiled Blas / Lapack" OFF)
option(COIN_ENABLE_DOWNLOAD_LAPACK        "Enable the download / compilation of Blas / Lapack" OFF)
option(COIN_ENABLE_DOWNLOAD_CLAPACK       "Enable the download / compilation of CBlas / CLapack" OFF)
option(COIN_ENABLE_DOWNLOAD_GLPK          "Enable the download / compilation of GLPK" OFF)
option(COIN_ENABLE_DOWNLOAD_ZLIB          "Enable the download / compilation of Zlib" OFF)
option(COIN_ENABLE_DOWNLOAD_BZLIB         "Enable the download / compilation of BZlib" OFF)

option(COIN_ENABLE_FIND_LAPACK "Enable the detection of Blas / Lapack" OFF)
option(COIN_ENABLE_FIND_ZLIB   "Enable the detection of Zlib" OFF)
option(COIN_ENABLE_FIND_BZLIB  "Enable the detection of BZlib" OFF)

if (COIN_ENABLE_FIND_LAPACK AND (COIN_ENABLE_DOWNLOAD_LAPACK OR COIN_ENABLE_DOWNLOAD_CLAPACK))
  message(STATUS "Warning: COIN_ENABLE_FIND_LAPACK and COIN_ENABLE_DOWNLOAD_[C]LAPACK are activated. Desactivate COIN_ENABLE_DOWNLOAD_[C]LAPACK")
  set(COIN_ENABLE_DOWNLOAD_LAPACK  FALSE)
  set(COIN_ENABLE_DOWNLOAD_CLAPACK FALSE)
endif ()

if (COIN_ENABLE_DOWNLOAD_LAPACK AND COIN_ENABLE_DOWNLOAD_CLAPACK)
  message(STATUS "Warning: COIN_ENABLE_DOWNLOAD_LAPACK and COIN_ENABLE_DOWNLOAD_CLAPACK are activated. I desactivate COIN_ENABLE_DOWNLOAD_LAPACK")
  set(COIN_ENABLE_DOWNLOAD_LAPACK FALSE)
endif ()

if (COIN_ENABLE_FIND_ZLIB AND COIN_ENABLE_DOWNLOAD_ZLIB)
  message(STATUS "Warning: COIN_ENABLE_FIND_ZLIB and COIN_ENABLE_DOWNLOAD_ZLIB are activated. Desactivate COIN_ENABLE_DOWNLOAD_ZLIB")
  set(COIN_ENABLE_DOWNLOAD_ZLIB FALSE)
endif ()

if (COIN_ENABLE_FIND_BZLIB AND COIN_ENABLE_DOWNLOAD_BZLIB)
  message(STATUS "Warning: COIN_ENABLE_FIND_BZLIB and COIN_ENABLE_DOWNLOAD_BZLIB are activated. Desactivate COIN_ENABLE_DOWNLOAD_BZLIB")
  set(COIN_ENABLE_DOWNLOAD_BZLIB FALSE)
endif ()

# Prevent the "make clean" from cleaning this directory
set_directory_properties(PROPERTIES CLEAN_NO_CUSTOM TRUE)

set(EP_InstallDir ${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/)

include(ExternalProject)

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
# ===>    CLapack
# #################################################

if (COIN_ENABLE_DOWNLOAD_CLAPACK)
  set(CLAPACK_VERSION "3.2.1")
  
  if (UNIX)
    if (NOT HAVE_64_BIT)
      set(CLAPACK_C_FLAGS      "-fPIC")
      set(CLAPACK_LINKER_FLAGS "-fPIC")
    endif ()
    
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
                        PREFIX            ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}
                        URL               http://netlib.sandia.gov/clapack/clapack-${CLAPACK_VERSION}-CMAKE.tgz
                        UPDATE_COMMAND    ""
                        PATCH_COMMAND     ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/ThirdParty/f2c.h ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}/src/EP_Lapack/INCLUDE/
                                       && ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/ThirdParty/f2c.h ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}/src/EP_Lapack/F2CLIBS/libf2c/
                        CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}/src/EP_Lapack/build
                                       && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}/src/EP_Lapack/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_C_FLAGS:String=${CLAPACK_C_FLAGS} -DCMAKE_EXE_LINKER_FLAGS:String=${CLAPACK_LINKER_FLAGS} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} -G ${CMAKE_GENERATOR} ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}/src/EP_Lapack/build ${CMAKE_MAKE_PROGRAM}
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}/src/EP_Lapack/build/SRC/lapack.lib ${EP_InstallDir}/lib
                                       && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}/src/EP_Lapack/build/F2CLIBS/libf2c/libf2c.lib ${EP_InstallDir}/lib/f2c.lib
                                       && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}/src/EP_Lapack/build/BLAS/SRC/blas.lib ${EP_InstallDir}/lib
                        )
  elseif (UNIX)
    ExternalProject_Add(EP_Lapack
                        PREFIX            ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}
                        URL               http://netlib.sandia.gov/clapack/clapack-${CLAPACK_VERSION}-CMAKE.tgz
                        UPDATE_COMMAND    ""
                        PATCH_COMMAND     ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/ThirdParty/f2c.h ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}/src/EP_Lapack/INCLUDE/
                                       && ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/ThirdParty/f2c.h ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}/src/EP_Lapack/F2CLIBS/libf2c/
                        CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}/src/EP_Lapack/build
                                       && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}/src/EP_Lapack/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_C_FLAGS:String=${CLAPACK_C_FLAGS} -DCMAKE_EXE_LINKER_FLAGS:String=${CLAPACK_LINKER_FLAGS} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}/src/EP_Lapack/build ${CMAKE_MAKE_PROGRAM}
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}/src/EP_Lapack/build/SRC/liblapack.a ${EP_InstallDir}/lib
                                       && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}/src/EP_Lapack/build/F2CLIBS/libf2c/libf2c.a ${EP_InstallDir}/lib
                                       && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack-${CLAPACK_VERSION}/src/EP_Lapack/build/BLAS/SRC/libblas.a ${EP_InstallDir}/lib
                        )
  endif ()
endif ()

# #################################################
# <===    CLapack
# #################################################

# #################################################
# ===>    Lapack
# #################################################

if (COIN_ENABLE_DOWNLOAD_LAPACK)
  set(LAPACK_VERSION "3.7.1")
  
  enable_language(Fortran)

  if (UNIX)
    if (NOT HAVE_64_BIT)
      set(LAPACK_C_FLAGS      "-fPIC")
      set(LAPACK_LINKER_FLAGS "-fPIC")
    endif ()
  endif ()
  
  set(COIN_HAS_LAPACK ON CACHE BOOL "Enable the Lapack support of CoinUtils" FORCE)
  set(COIN_HAS_BLAS   ON CACHE BOOL "Enable the Blas support of CoinUtils"   FORCE)

  ExternalProject_Add(EP_Lapack
                      PREFIX ${EP_InstallDir}/Lapack-${LAPACK_VERSION}
                      URL http://www.netlib.org/lapack/lapack-${LAPACK_VERSION}.tgz
                      UPDATE_COMMAND    ""
                      CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Lapack-${LAPACK_VERSION}/src/EP_Lapack/build
                                     && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack-${LAPACK_VERSION}/src/EP_Lapack/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_C_FLAGS:String=${CLAPACK_C_FLAGS} -DCMAKE_EXE_LINKER_FLAGS:String=${LAPACK_LINKER_FLAGS} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} ..
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack-${LAPACK_VERSION}/src/EP_Lapack/build ${CMAKE_MAKE_PROGRAM}
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack-${LAPACK_VERSION}/src/EP_Lapack/build/lib/liblapack.a ${EP_InstallDir}/lib
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack-${LAPACK_VERSION}/src/EP_Lapack/build/lib/libblas.a   ${EP_InstallDir}/lib
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack-${LAPACK_VERSION}/src/EP_Lapack/build/lib/libtmglib.a ${EP_InstallDir}/lib
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
# ===>    MinGW Lapack
# #################################################

if (COIN_ENABLE_DOWNLOAD_MINGW_LAPACK)
  set(COIN_MINGW_LAPACK_ZIP_FILE "None" CACHE FILEPATH "Path to the zip file containing MinGW Lapack")
  
  set(COIN_HAS_LAPACK ON CACHE BOOL "Enable the Lapack support of CoinUtils" FORCE)
  set(COIN_HAS_BLAS   ON CACHE BOOL "Enable the Blas support of CoinUtils"   FORCE)

  ExternalProject_Add(EP_Lapack
                      PREFIX            ${EP_InstallDir}/MinGW-Lapack
                      URL               ${COIN_MINGW_LAPACK_ZIP_FILE}
                      UPDATE_COMMAND    ""
                      CONFIGURE_COMMAND ""
                      BUILD_COMMAND     ""
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/MinGW-Lapack/src/EP_Lapack/lib/liblapack.lib       ${EP_InstallDir}/lib/lapack.lib
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/MinGW-Lapack/src/EP_Lapack/lib/libblas.lib         ${EP_InstallDir}/lib/blas.lib
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/MinGW-Lapack/src/EP_Lapack/lib/libtmglib.lib       ${EP_InstallDir}/lib/tmglib.lib
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/MinGW-Lapack/src/EP_Lapack/bin/liblapack.dll       ${EP_InstallDir}/bin
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/MinGW-Lapack/src/EP_Lapack/bin/libblas.dll         ${EP_InstallDir}/bin
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/MinGW-Lapack/src/EP_Lapack/bin/libtmglib.dll       ${EP_InstallDir}/bin
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/MinGW-Lapack/src/EP_Lapack/bin/libgcc_s_seh-1.dll  ${EP_InstallDir}/bin
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/MinGW-Lapack/src/EP_Lapack/bin/libgfortran-3.dll   ${EP_InstallDir}/bin
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/MinGW-Lapack/src/EP_Lapack/bin/libquadmath-0.dll   ${EP_InstallDir}/bin
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/MinGW-Lapack/src/EP_Lapack/bin/libwinpthread-1.dll ${EP_InstallDir}/bin
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/MinGW-Lapack/src/EP_Lapack/bin/liblapack.dll       ${CMAKE_BINARY_DIR}/bin
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/MinGW-Lapack/src/EP_Lapack/bin/libblas.dll         ${CMAKE_BINARY_DIR}/bin
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/MinGW-Lapack/src/EP_Lapack/bin/libtmglib.dll       ${CMAKE_BINARY_DIR}/bin
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/MinGW-Lapack/src/EP_Lapack/bin/libgcc_s_seh-1.dll  ${CMAKE_BINARY_DIR}/bin
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/MinGW-Lapack/src/EP_Lapack/bin/libgfortran-3.dll   ${CMAKE_BINARY_DIR}/bin
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/MinGW-Lapack/src/EP_Lapack/bin/libquadmath-0.dll   ${CMAKE_BINARY_DIR}/bin
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/MinGW-Lapack/src/EP_Lapack/bin/libwinpthread-1.dll ${CMAKE_BINARY_DIR}/bin
                      )
endif ()

# #################################################
# <===    MinGW Lapack
# #################################################

# #################################################
# ===>    Zlib
# #################################################

if (COIN_ENABLE_DOWNLOAD_ZLIB)
  set(ZLIB_VERSION "1.2.11")

  set(COINUTILS_HAS_ZLIB_INCLUDE_PATH "${EP_InstallDir}/include" CACHE STRING "The Zlib library include Path" FORCE)
  set(COINUTILS_HAS_ZLIB_LIBRARY_PATH "${EP_InstallDir}/lib" CACHE STRING "The Zlib library library Path" FORCE)
  
  if (WIN32 AND NOT MINGW)
    set(ZLIB_NAME "${EP_InstallDir}/lib/zlibstatic.lib" CACHE STRING "The Zlib library name" FORCE)
  elseif (MINGW)
    set(ZLIB_NAME "${EP_InstallDir}/lib/libzlibstatic.a" CACHE STRING "The Zlib library name" FORCE)
  else ()
    set(ZLIB_NAME "${EP_InstallDir}/lib/libz.a" CACHE STRING "The Zlib library name" FORCE)
  endif ()
  
  ExternalProject_Add(EP_Zlib
                      PREFIX ${EP_InstallDir}/Zlib-${ZLIB_VERSION}
                      URL http://zlib.net/zlib-${ZLIB_VERSION}.tar.gz
                      UPDATE_COMMAND    ""
                      CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Zlib-${ZLIB_VERSION}/src/EP_Zlib/build
                                     && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib-${ZLIB_VERSION}/src/EP_Zlib/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} -G ${CMAKE_GENERATOR} ..
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib-${ZLIB_VERSION}/src/EP_Zlib/build ${CMAKE_MAKE_PROGRAM}
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib-${ZLIB_VERSION}/src/EP_Zlib/build ${CMAKE_MAKE_PROGRAM} install
                      )
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
endif ()

# #################################################
# <===    Zlib
# #################################################

# #################################################
# ===>    BZlib
# #################################################

if (COIN_ENABLE_DOWNLOAD_BZLIB)
  set(BZLIB_VERSION "1.0.6")

  set(COINUTILS_HAS_BZLIB_INCLUDE_PATH "${EP_InstallDir}/include" CACHE STRING "The BZlib library include Path" FORCE)
  set(COINUTILS_HAS_BZLIB_LIBRARY_PATH "${EP_InstallDir}/lib"     CACHE STRING "The BZlib library library Path" FORCE)
  
  if (WIN32)
    set(BZLIB_NAME "${EP_InstallDir}/lib/libbz2.lib" CACHE STRING "The BZlib library name" FORCE)
    
    ExternalProject_Add(EP_BZlib
                        PREFIX ${EP_InstallDir}/BZlib-${BZLIB_VERSION}
                        URL http://www.bzip.org/${BZLIB_VERSION}/bzip2-${BZLIB_VERSION}.tar.gz
                        UPDATE_COMMAND    ""
                        CONFIGURE_COMMAND ""
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/BZlib-${BZLIB_VERSION}/src/EP_BZlib ${CMAKE_MAKE_PROGRAM} -f makefile.msc
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/BZlib-${BZLIB_VERSION}/src/EP_BZlib/libbz2.lib ${EP_InstallDir}/lib &&
                                          ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/BZlib-${BZLIB_VERSION}/src/EP_BZlib/bzlib.h ${EP_InstallDir}/include &&
                                          ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/BZlib-${BZLIB_VERSION}/src/EP_BZlib/bzlib_private.h ${EP_InstallDir}/include
                        )
  else ()
    set(BZLIB_NAME "${EP_InstallDir}/lib/libbz2.a" CACHE STRING "The BZlib library name" FORCE)
    
    ExternalProject_Add(EP_BZlib
                        PREFIX ${EP_InstallDir}/BZlib-${BZLIB_VERSION}
                        URL http://www.bzip.org/${BZLIB_VERSION}/bzip2-${BZLIB_VERSION}.tar.gz
                        UPDATE_COMMAND    ""
                        CONFIGURE_COMMAND ""
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/BZlib-${BZLIB_VERSION}/src/EP_BZlib ${CMAKE_MAKE_PROGRAM}
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/BZlib-${BZLIB_VERSION}/src/EP_BZlib/libbz2.a ${EP_InstallDir}/lib &&
                                          ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/BZlib-${BZLIB_VERSION}/src/EP_BZlib/bzlib.h ${EP_InstallDir}/include &&
                                          ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/BZlib-${BZLIB_VERSION}/src/EP_BZlib/bzlib_private.h ${EP_InstallDir}/include
                        )
  endif ()
  
  set(HAVE_BZIP_H 1)
endif ()

if (COIN_ENABLE_FIND_BZLIB)
  find_package(BZip2)
  
  if (BZIP2_FOUND)
    include_directories(${BZIP2_INCLUDE_DIR})
    set(BZLIB_NAME "${BZIP2_LIBRARIES}" CACHE STRING "The BZlib library name" FORCE)
    set(COINUTILS_HAS_BZLIB_INCLUDE_PATH "${BZIP2_INCLUDE_DIR}" CACHE STRING "The BZlib library include Path" FORCE)
    set(COINUTILS_HAS_BZLIB_LIBRARY_PATH "None" CACHE STRING "The BZlib library library Path" FORCE)
    set(COINUTILS_HAS_BZLIB ON CACHE BOOL "Activate BZlib for CoinUtils" FORCE)
    set(HAVE_BZIP_H 1)
  else ()
    set(BZLIB_NAME "" CACHE STRING "The BZlib library name" FORCE)
    set(COINUTILS_HAS_BZLIB_INCLUDE_PATH "None" CACHE STRING "The BZlib library include Path" FORCE)
    set(COINUTILS_HAS_BZLIB_LIBRARY_PATH "None" CACHE STRING "The BZlib library library Path" FORCE)
    set(COINUTILS_HAS_BZLIB OFF CACHE BOOL "Activate BZlib for CoinUtils" FORCE)
  endif ()
endif ()

# #################################################
# <===    BZlib
# #################################################

# #################################################
# ===>   GLPK 
# #################################################

if (COIN_ENABLE_DOWNLOAD_GLPK)
  set(GLPK_VERSION "4.62")
  set(COMPILE_OSI_GLPK ON CACHE BOOL "Compile the OSI GLPK solver" FORCE)
  
  ExternalProject_Add(EP_glpk
                      PREFIX ${EP_InstallDir}/glpk-${GLPK_VERSION}
                      URL http://ftp.gnu.org/gnu/glpk/glpk-${GLPK_VERSION}.tar.gz
                      UPDATE_COMMAND    ""
                      PATCH_COMMAND     ${CMAKE_COMMAND} -E copy_directory ${CMAKE_SOURCE_DIR}/ThirdParty/GLPK/ ${EP_InstallDir}/glpk-${GLPK_VERSION}/src/EP_glpk/
                      CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/glpk-${GLPK_VERSION}/src/EP_glpk/build
                                     && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk-${GLPK_VERSION}/src/EP_glpk/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} -G ${CMAKE_GENERATOR} ..
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk-${GLPK_VERSION}/src/EP_glpk/build ${CMAKE_MAKE_PROGRAM}
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk-${GLPK_VERSION}/src/EP_glpk/build ${CMAKE_MAKE_PROGRAM} install
                      )
  
  #check_symbol_exists(glpk_intopt "glpk.h" GLPK_HAS_INTOPT)
  set(GLPK_HASH_INTOPT ON)
  
  if (GLPK_HAS_INTOPT)
    message(STATUS "GLPK has glpk_intopt: yes")
  else ()
    message(STATUS "GLPK has glpk_intopt: no")
  endif ()
endif ()

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
                        UPDATE_COMMAND    ""
                        CONFIGURE_COMMAND ""
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/PThreads/src/EP_PThreads ${CMAKE_MAKE_PROGRAM} clean VC
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/pthreadVC2.lib ${EP_InstallDir}/lib/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/pthreadVC2.dll ${EP_InstallDir}/bin/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/pthreadVC2.dll ${CMAKE_BINARY_DIR}/bin/
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
  if (COIN_ENABLE_DOWNLOAD_LAPACK OR COIN_ENABLE_DOWNLOAD_CLAPACK)
    add_dependencies(${_target} EP_Lapack)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_GLPK)
    add_dependencies(${_target} EP_glpk)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_ZLIB)
    add_dependencies(${_target} EP_Zlib)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_BZLIB)
    add_dependencies(${_target} EP_BZlib)
  endif ()
endmacro ()

macro(add_executable _target)
  _add_executable (${_target} ${ARGN})
  
  if (COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32)
    add_dependencies(${_target} EP_PThreads)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_LAPACK)
    add_dependencies(${_target} EP_Lapack OR COIN_ENABLE_DOWNLOAD_CLAPACK)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_GLPK)
    add_dependencies(${_target} EP_glpk)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_ZLIB)
    add_dependencies(${_target} EP_Zlib)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_BZLIB)
    add_dependencies(${_target} EP_BZlib)
  endif ()
endmacro ()

# #################################################
# <===   Restart cmake 
# #################################################
