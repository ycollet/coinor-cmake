# CMakeLists.txt designed for 
# downloading/configuring/building/installing
# Thirdparty dependencies

option(COIN_USE_PTHREAD_WIN32  "Enable the use of PThreads for Windows" OFF)
option(COIN_USE_MINGW_LAPACK   "Enable the use of MinGW compiled Blas / Lapack" OFF)
option(COIN_USE_SYSTEM_LAPACK  "Enable the use of the system Lapack" OFF)
option(COIN_USE_CLAPACK        "Enable the use of CBlas / CLapack" OFF)
option(COIN_USE_GLPK           "Enable the use of GLPK" OFF)
option(COIN_USE_METIS          "Enable the use of METIS" OFF)
option(COIN_USE_MUMPS          "Enable the use of Mumps" OFF)
option(COIN_USE_ZLIB           "Enable the use of Zlib" OFF)
option(COIN_USE_BZLIB          "Enable the use of BZlib" OFF)
option(COIN_DISABLE_THIRDPARTY "Disable the build of the dependencies" OFF)

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

option(COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32 "Enable the download / compilation of PThreads for Windows" OFF)
option(COIN_ENABLE_DOWNLOAD_MINGW_LAPACK  "Enable the download / compilation of MinGW compiled Blas / Lapack" OFF)
option(COIN_ENABLE_DOWNLOAD_LAPACK        "Enable the download / compilation of Blas / Lapack" OFF)
option(COIN_ENABLE_DOWNLOAD_CLAPACK       "Enable the download / compilation of CBlas / CLapack" OFF)
option(COIN_ENABLE_DOWNLOAD_GLPK          "Enable the download / compilation of GLPK" OFF)
option(COIN_ENABLE_DOWNLOAD_METIS         "Enable the download / compilation of METIS" OFF)
option(COIN_ENABLE_DOWNLOAD_MUMPS         "Enable the download / compilation of Mumps" OFF)
option(COIN_ENABLE_DOWNLOAD_DATA_TEST     "Enable the download / run of Data tests" OFF)
option(COIN_ENABLE_DOWNLOAD_MIPLIB2000    "Enable the download / run of miplib 2000 - benchmark" OFF)
option(COIN_ENABLE_DOWNLOAD_ZLIB          "Enable the download / compilation of Zlib" OFF)
option(COIN_ENABLE_DOWNLOAD_BZLIB         "Enable the download / compilation of BZlib" OFF)
if (WIN32)
  option(COIN_ENABLE_DOWNLOAD_PATCH       "Enable the download / use of Patch exe (for Windows)" OFF)
endif ()

option(COIN_ENABLE_FIND_LAPACK "Enable the detection of Blas / Lapack" OFF)
option(COIN_ENABLE_FIND_ZLIB   "Enable the detection of Zlib" OFF)
option(COIN_ENABLE_FIND_BZLIB  "Enable the detection of BZlib" OFF)

if (COIN_ENABLE_DOWNLOAD_DATA_TEST OR COIN_ENABLE_DOWNLOAD_MIPLIB2000)
  message(STATUS "Warning: COIN_ENABLE_DOWNLOAD_DATA_TEST and COIN_ENABLE_DOWNLOAD_MIPLIB2000 need zlib. COIN_ENABLE_DOWNLOAD_ZLIB activated")
  set(COIN_ENABLE_DOWNLOAD_ZLIB TRUE)
endif ()

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

if (COIN_DISABLE_THIRDPARTY)
  return ()
endif ()

# Prevent the "make clean" from cleaning this directory
set_directory_properties(PROPERTIES CLEAN_NO_CUSTOM TRUE)

include(ExternalProject)

set(EP_InstallDir ${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/)

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

set(CMAKE_GENERATOR_OLD    "${CMAKE_GENERATOR}")
set(CMAKE_MAKE_PROGRAM_OLD "${CMAKE_MAKE_PROGRAM}")
if (WIN32)
  set(CMAKE_GENERATOR    "NMake Makefiles")
  set(CMAKE_MAKE_PROGRAM "nmake.exe")
else ()
  set(CMAKE_GENERATOR    "Unix Makefiles")
  set(CMAKE_MAKE_PROGRAM "make")
endif ()

if (NOT COIN_ENABLE_DOWNLOAD_MINGW_LAPACK AND
    NOT COIN_ENABLE_DOWNLOAD_LAPACK AND
    NOT COIN_ENABLE_DOWNLOAD_CLAPACK AND
    NOT COIN_USE_SYSTEM_LAPACK)
  message(FATAL_ERROR "One kind of Blas / Lapack must be selected: 
 - COIN_ENABLE_DOWNLOAD_MINGW_LAPACK AND
 - COIN_ENABLE_DOWNLOAD_LAPACK AND
 - COIN_ENABLE_DOWNLOAD_CLAPACK AND
 - COIN_USE_SYSTEM_LAPACK")
endif ()

# #################################################
# ===>    System Lapack
# #################################################

if (COIN_USE_SYSTEM_LAPACK)
  find_package(LAPACK REQUIRED)
  
  set(COIN_ENABLE_DOWNLOAD_LAPACK  OFF CACHE BOOL "Enable the download / compilation of Blas / Lapack")
  set(COIN_ENABLE_DOWNLOAD_CLAPACK OFF CACHE BOOL "Enable the download / compilation of CBlas / CLapack")
  
  get_filename_component(LAPACK_LINK_PATH "${LAPACK_LIBRARIES}" DIRECTORY)
endif ()

# #################################################
# <===    System Lapack
# #################################################

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
  endif ()
  
  set(COIN_HAS_LAPACK ON CACHE BOOL "Enable the Lapack support of CoinUtils" FORCE)
  set(COIN_HAS_BLAS   ON CACHE BOOL "Enable the Blas support of CoinUtils"   FORCE)
  
  set(CLAPACK_URL        "http:////netlib.sandia.gov/clapack/clapack-${CLAPACK_VERSION}-CMAKE.tar.gz" CACHE FILEPATH "Path to clapack-${CLAPACK_VERSION}-CMAKE.tgz source archive")
  set(CLAPACK_InstallDir "${EP_InstallDir}/CLapack-${CLAPACK_VERSION}/${CMAKE_CFG_INTDIR}/")
  
  if (WIN32 AND NOT MINGW)
    ExternalProject_Add(EP_Lapack
                        PREFIX            ${CLAPACK_InstallDir}
                        URL               ${CLAPACK_URL}
                        UPDATE_COMMAND    ""
                        PATCH_COMMAND     ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/f2c.h ${CLAPACK_InstallDir}/src/EP_Lapack/INCLUDE/
                                       && ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/f2c.h ${CLAPACK_InstallDir}/src/EP_Lapack/F2CLIBS/libf2c/
                        CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${CLAPACK_InstallDir}/src/EP_Lapack/build
                                       && ${CMAKE_COMMAND} -E chdir ${CLAPACK_InstallDir}/src/EP_Lapack/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_C_FLAGS:String=${CLAPACK_C_FLAGS} -DCMAKE_EXE_LINKER_FLAGS:String=${CLAPACK_LINKER_FLAGS} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} -G ${CMAKE_GENERATOR} ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${CLAPACK_InstallDir}/src/EP_Lapack/build ${CMAKE_MAKE_PROGRAM}
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${CLAPACK_InstallDir}/src/EP_Lapack/build/SRC/lapack.lib            ${EP_InstallDir}/lib
                                       && ${CMAKE_COMMAND} -E copy ${CLAPACK_InstallDir}/src/EP_Lapack/build/F2CLIBS/libf2c/libf2c.lib ${EP_InstallDir}/lib/f2c.lib
                                       && ${CMAKE_COMMAND} -E copy ${CLAPACK_InstallDir}/src/EP_Lapack/build/BLAS/SRC/blas.lib         ${EP_InstallDir}/lib
                        )
  elseif (UNIX)
    ExternalProject_Add(EP_Lapack
                        PREFIX            ${CLAPACK_InstallDir}
                        URL               ${CLAPACK_URL}
                        UPDATE_COMMAND    ""
                        PATCH_COMMAND     ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/f2c.h ${CLAPACK_InstallDir}/src/EP_Lapack/INCLUDE/
                                       && ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/f2c.h ${CLAPACK_InstallDir}/src/EP_Lapack/F2CLIBS/libf2c/
                        CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${CLAPACK_InstallDir}/src/EP_Lapack/build
                                       && ${CMAKE_COMMAND} -E chdir ${CLAPACK_InstallDir}/src/EP_Lapack/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_C_FLAGS:String=${CLAPACK_C_FLAGS} -DCMAKE_EXE_LINKER_FLAGS:String=${CLAPACK_LINKER_FLAGS} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${CLAPACK_InstallDir}/src/EP_Lapack/build ${CMAKE_MAKE_PROGRAM}
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${CLAPACK_InstallDir}/src/EP_Lapack/build/SRC/liblapack.a         ${EP_InstallDir}/lib
                                       && ${CMAKE_COMMAND} -E copy ${CLAPACK_InstallDir}/src/EP_Lapack/build/F2CLIBS/libf2c/libf2c.a ${EP_InstallDir}/lib
                                       && ${CMAKE_COMMAND} -E copy ${CLAPACK_InstallDir}/src/EP_Lapack/build/BLAS/SRC/libblas.a      ${EP_InstallDir}/lib
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
  set(LAPACK_VERSION "3.8.0")
  
  enable_language(Fortran)

  if (UNIX)
    if (NOT HAVE_64_BIT)
      set(LAPACK_C_FLAGS      "-fPIC")
      set(LAPACK_LINKER_FLAGS "-fPIC")
    endif ()
  endif ()
  
  set(COIN_HAS_LAPACK ON CACHE BOOL "Enable the Lapack support of CoinUtils" FORCE)
  set(COIN_HAS_BLAS   ON CACHE BOOL "Enable the Blas support of CoinUtils"   FORCE)
  
  set(LAPACK_URL        "http:////www.netlib.org/lapack/lapack-${LAPACK_VERSION}.tgz" CACHE FILEPATH "Path to lapack-${LAPACK_VERSION}.tgz source archive")
  set(LAPACK_InstallDir "${EP_InstallDir}/Lapack-${LAPACK_VERSION}/${CMAKE_CFG_INTDIR}/")
  
  if (WIN32 AND NOT MINGW)
    ExternalProject_Add(EP_Lapack
                        PREFIX            ${LAPACK_InstallDir}
                        URL               ${LAPACK_URL}
                        UPDATE_COMMAND    ""
                        CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${LAPACK_InstallDir}/src/EP_Lapack/build
                                       && ${CMAKE_COMMAND} -E chdir ${LAPACK_InstallDir}/src/EP_Lapack/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DBUILD_DEPRECATED:Bool=ON -DLAPACKE:Bool=ON -DLAPACKE_WITH_TMG:Bool=ON -DCMAKE_C_FLAGS:String=${CLAPACK_C_FLAGS} -DCMAKE_EXE_LINKER_FLAGS:String=${LAPACK_LINKER_FLAGS} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} -G ${CMAKE_GENERATOR} ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${LAPACK_InstallDir}/src/EP_Lapack/build ${CMAKE_MAKE_PROGRAM}
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${LAPACK_InstallDir}/src/EP_Lapack/build/lib/lapack.lib  ${EP_InstallDir}/lib
                                       && ${CMAKE_COMMAND} -E copy ${LAPACK_InstallDir}/src/EP_Lapack/build/lib/lapacke.lib ${EP_InstallDir}/lib
                                       && ${CMAKE_COMMAND} -E copy ${LAPACK_InstallDir}/src/EP_Lapack/build/lib/blas.lib    ${EP_InstallDir}/lib
                                       && ${CMAKE_COMMAND} -E copy ${LAPACK_InstallDir}/src/EP_Lapack/build/lib/tmglib.lib  ${EP_InstallDir}/lib
                        )
  elseif (UNIX)
    ExternalProject_Add(EP_Lapack
                        PREFIX            ${LAPACK_InstallDir}
                        URL               ${LAPACK_URL}
                        UPDATE_COMMAND    ""
                        CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${LAPACK_InstallDir}/src/EP_Lapack/build
                                       && ${CMAKE_COMMAND} -E chdir ${LAPACK_InstallDir}/src/EP_Lapack/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DBUILD_DEPRECATED:Bool=ON -DLAPACKE:Bool=ON -DLAPACKE_WITH_TMG:Bool=ON -DCMAKE_C_FLAGS:String=${CLAPACK_C_FLAGS} -DCMAKE_EXE_LINKER_FLAGS:String=${LAPACK_LINKER_FLAGS} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${LAPACK_InstallDir}/src/EP_Lapack/build ${CMAKE_MAKE_PROGRAM}
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${LAPACK_InstallDir}/src/EP_Lapack/build/lib/liblapack.a  ${EP_InstallDir}/lib
                                       && ${CMAKE_COMMAND} -E copy ${LAPACK_InstallDir}/src/EP_Lapack/build/lib/liblapacke.a ${EP_InstallDir}/lib
                                       && ${CMAKE_COMMAND} -E copy ${LAPACK_InstallDir}/src/EP_Lapack/build/lib/libblas.a    ${EP_InstallDir}/lib
                                       && ${CMAKE_COMMAND} -E copy ${LAPACK_InstallDir}/src/EP_Lapack/build/lib/libtmglib.a  ${EP_InstallDir}/lib
                        )
  endif ()
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
  
  get_filename_component(LAPACK_LINK_PATH "${LAPACK_LIBRARIES}" DIRECTORY)
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
  set(COINUTILS_HAS_ZLIB_LIBRARY_PATH "${EP_InstallDir}/lib"     CACHE STRING "The Zlib library library Path" FORCE)
  set(COINUTILS_HAS_ZLIB              ON                         CACHE BOOL "Activate Zlib for CoinUtils"     FORCE)
  
  if (WIN32 AND NOT MINGW)
    set(ZLIB_NAME "${EP_InstallDir}/lib/zlibstatic.lib"  CACHE STRING "The Zlib library name" FORCE)
  elseif (MINGW)
    set(ZLIB_NAME "${EP_InstallDir}/lib/libzlibstatic.a" CACHE STRING "The Zlib library name" FORCE)
  else ()
    set(ZLIB_NAME "${EP_InstallDir}/lib/libz.a"          CACHE STRING "The Zlib library name" FORCE)
  endif ()
  
  set(ZLIB_URL        "http:////zlib.net/zlib-${ZLIB_VERSION}.tar.gz" CACHE FILEPATH "Path to zlib-${ZLIB_VERSION}.tar.gz source archive")
  set(ZLIB_InstallDir "${EP_InstallDir}/Zlib-${ZLIB_VERSION}/${CMAKE_CFG_INTDIR}/")
  
  ExternalProject_Add(EP_Zlib
                      PREFIX            ${ZLIB_InstallDir}
                      URL               ${ZLIB_URL}
                      UPDATE_COMMAND    ""
                      CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${ZLIB_InstallDir}/src/EP_Zlib/build
                                     && ${CMAKE_COMMAND} -E chdir ${ZLIB_InstallDir}/src/EP_Zlib/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} -G ${CMAKE_GENERATOR} ..
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${ZLIB_InstallDir}/src/EP_Zlib/build ${CMAKE_MAKE_PROGRAM}
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${ZLIB_InstallDir}/src/EP_Zlib/build ${CMAKE_MAKE_PROGRAM} install
                      )
endif ()

if (COIN_ENABLE_FIND_ZLIB)
  find_package(ZLIB)
  
  if (ZLIB_FOUND)
    include_directories(${ZLIB_INCLUDE_DIRS})
    set(ZLIB_NAME                       "${ZLIB_LIBRARIES}"    CACHE STRING "The Zlib library name"         FORCE)
    set(COINUTILS_HAS_ZLIB_INCLUDE_PATH "${ZLIB_INCLUDE_DIRS}" CACHE STRING "The Zlib library include Path" FORCE)
    set(COINUTILS_HAS_ZLIB_LIBRARY_PATH "None"                 CACHE STRING "The Zlib library library Path" FORCE)
    set(COINUTILS_HAS_ZLIB              ON                     CACHE BOOL "Activate Zlib for CoinUtils"     FORCE)
  else ()
    set(ZLIB_NAME                       ""     CACHE STRING "The Zlib library name"         FORCE)
    set(COINUTILS_HAS_ZLIB_INCLUDE_PATH "None" CACHE STRING "The Zlib library include Path" FORCE)
    set(COINUTILS_HAS_ZLIB_LIBRARY_PATH "None" CACHE STRING "The Zlib library library Path" FORCE)
    set(COINUTILS_HAS_ZLIB              OFF    CACHE BOOL   "Activate Zlib for CoinUtils"   FORCE)
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
  set(COINUTILS_HAS_BZLIB              ON                         CACHE BOOL   "Activate BZlib for CoinUtils"   FORCE)
  
  set(BZLIB_URL        "http:////http.debian.net/debian/pool/main/b/bzip2/bzip2_${BZLIB_VERSION}.orig.tar.bz2" CACHE FILEPATH "Path to bzip2-${BZLIB_VERSION}.orig.tar.bz2 source archive")
  set(BZLIB_InstallDir "${EP_InstallDir}/BZlib-${BZLIB_VERSION}/${CMAKE_CFG_INTDIR}/")
  
  if (WIN32 AND NOT MINGW)
    set(BZLIB_NAME "${EP_InstallDir}/lib/libbz2.lib" CACHE STRING "The BZlib library name" FORCE)
    
    ExternalProject_Add(EP_BZlib
                        PREFIX            ${BZLIB_InstallDir}
                        URL               ${BZLIB_URL}
                        UPDATE_COMMAND    ""
                        CONFIGURE_COMMAND ""
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${BZLIB_InstallDir}/src/EP_BZlib ${CMAKE_MAKE_PROGRAM} -f makefile.msc
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${BZLIB_InstallDir}/src/EP_BZlib/libbz2.lib      ${EP_InstallDir}/lib &&
                                          ${CMAKE_COMMAND} -E copy ${BZLIB_InstallDir}/src/EP_BZlib/bzlib.h         ${EP_InstallDir}/include &&
                                          ${CMAKE_COMMAND} -E copy ${BZLIB_InstallDir}/src/EP_BZlib/bzlib_private.h ${EP_InstallDir}/include
                        )
  else ()
    set(BZLIB_NAME "${EP_InstallDir}/lib/libbz2.a" CACHE STRING "The BZlib library name" FORCE)
    
    ExternalProject_Add(EP_BZlib
                        PREFIX            ${BZLIB_InstallDir}
                        URL               ${BZLIB_URL}
                        UPDATE_COMMAND    ""
                        CONFIGURE_COMMAND ""
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${BZLIB_InstallDir}/src/EP_BZlib ${CMAKE_MAKE_PROGRAM}
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${BZLIB_InstallDir}/src/EP_BZlib/libbz2.a        ${EP_InstallDir}/lib &&
                                          ${CMAKE_COMMAND} -E copy ${BZLIB_InstallDir}/src/EP_BZlib/bzlib.h         ${EP_InstallDir}/include &&
                                          ${CMAKE_COMMAND} -E copy ${BZLIB_InstallDir}/src/EP_BZlib/bzlib_private.h ${EP_InstallDir}/include
                        )
  endif ()
  
  set(HAVE_BZIP_H 1)
endif ()

if (COIN_ENABLE_FIND_BZLIB)
  find_package(BZip2)
  
  if (BZIP2_FOUND)
    include_directories(${BZIP2_INCLUDE_DIR})
    set(BZLIB_NAME                       "${BZIP2_LIBRARIES}"   CACHE STRING "The BZlib library name"         FORCE)
    set(COINUTILS_HAS_BZLIB_INCLUDE_PATH "${BZIP2_INCLUDE_DIR}" CACHE STRING "The BZlib library include Path" FORCE)
    set(COINUTILS_HAS_BZLIB_LIBRARY_PATH "None"                 CACHE STRING "The BZlib library library Path" FORCE)
    set(COINUTILS_HAS_BZLIB              ON                     CACHE BOOL   "Activate BZlib for CoinUtils"   FORCE)
    set(HAVE_BZIP_H 1)
  else ()
    set(BZLIB_NAME                       ""     CACHE STRING "The BZlib library name"         FORCE)
    set(COINUTILS_HAS_BZLIB_INCLUDE_PATH "None" CACHE STRING "The BZlib library include Path" FORCE)
    set(COINUTILS_HAS_BZLIB_LIBRARY_PATH "None" CACHE STRING "The BZlib library library Path" FORCE)
    set(COINUTILS_HAS_BZLIB              OFF    CACHE BOOL   "Activate BZlib for CoinUtils"   FORCE)
  endif ()
endif ()

# #################################################
# <===    BZlib
# #################################################

# #################################################
# ===>   GLPK 
# #################################################

if (COIN_ENABLE_DOWNLOAD_GLPK)
  set(GLPK_VERSION "4.63")
  set(COMPILE_OSI_GLPK ON CACHE BOOL "Compile the OSI GLPK solver" FORCE)
  
  set(GLPK_URL        "http:////ftp.gnu.org/gnu/glpk/glpk-${GLPK_VERSION}.tar.gz" CACHE FILEPATH "Path to glpk-${GLPK_VERSION}.tar.gz source archive")
  set(GLPK_InstallDir "${EP_InstallDir}/glpk-${GLPK_VERSION}/${CMAKE_CFG_INTDIR}/")
  
  ExternalProject_Add(EP_glpk
                      PREFIX            ${GLPK_InstallDir}
                      URL               ${GLPK_URL}
                      PATCH_COMMAND     ${CMAKE_COMMAND} -E copy_directory ${CMAKE_CURRENT_SOURCE_DIR}/GLPK/ ${GLPK_InstallDir}/src/EP_glpk/
                      UPDATE_COMMAND    ""
                      CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${GLPK_InstallDir}/src/EP_glpk/build
                                     && ${CMAKE_COMMAND} -E chdir ${GLPK_InstallDir}/src/EP_glpk/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} -G ${CMAKE_GENERATOR} ..
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${GLPK_InstallDir}/src/EP_glpk/build ${CMAKE_MAKE_PROGRAM}
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${GLPK_InstallDir}/src/EP_glpk/build ${CMAKE_MAKE_PROGRAM} install
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
# <===    GLPK
# #################################################

# #################################################
# ===> PThreads compilation
# #################################################

if (COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32)
  if (WIN32)
    set(PTHREADS_VERSION "2-9-1")
    
    set(COIN_THREADS_INC_PATH "${EP_InstallDir}/include" CACHE STRING "The PThreads library include Path" FORCE)
    set(COIN_THREADS_LIB_PATH "${EP_InstallDir}/lib"     CACHE STRING "The PThreads library library Path" FORCE)
    
    set(PTHREADS_URL        "ftp:////sourceware.org/pub/pthreads-win32/pthreads-w32-${PTHREADS_VERSION}-release.tar.gz" CACHE FILEPATH "Path to pthreads-w32-${PTHREADS_VERSION}-release.tar.gz source archive")
    set(PTHREADS_InstallDir "${EP_InstallDir}/PThreads-${PTHREADS_VERSION}/${CMAKE_CFG_INTDIR}/")
    
    ExternalProject_Add(EP_PThreads
                        PREFIX            ${PTHREADS_InstallDir}
                        URL               ${PTHREADS_URL}
                        UPDATE_COMMAND    ""
                        CONFIGURE_COMMAND ""
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${PTHREADS_InstallDir}/src/EP_PThreads ${CMAKE_MAKE_PROGRAM} clean VC
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy  ${PTHREADS_InstallDir}/src/EP_PThreads/pthreadVC2.lib ${EP_InstallDir}/lib/
                                       && ${CMAKE_COMMAND} -E copy  ${PTHREADS_InstallDir}/src/EP_PThreads/pthreadVC2.dll ${EP_InstallDir}/bin/
                                       && ${CMAKE_COMMAND} -E copy  ${PTHREADS_InstallDir}/src/EP_PThreads/pthreadVC2.dll ${CMAKE_BINARY_DIR}/bin/
                                       && ${CMAKE_COMMAND} -E copy  ${PTHREADS_InstallDir}/src/EP_PThreads/pthread.h      ${EP_InstallDir}/include/
                                       && ${CMAKE_COMMAND} -E copy  ${PTHREADS_InstallDir}/src/EP_PThreads/sched.h        ${EP_InstallDir}/include/
                                       && ${CMAKE_COMMAND} -E copy  ${PTHREADS_InstallDir}/src/EP_PThreads/semaphore.h    ${EP_InstallDir}/include/
                        )
  endif ()
endif ()

# #################################################
# <=== PThreads compilation
# #################################################

# #################################################
# ===> Metis compilation
# #################################################

if (COIN_ENABLE_DOWNLOAD_METIS)
  set(METIS_VERSION "4.0.3")
  
  if (NOT EXISTS ${EP_InstallDir}/include/metis)
    make_directory(${EP_InstallDir}/include/metis)
  endif ()
  
  set(METIS_URL        "http:////glaros.dtc.umn.edu/gkhome/fetch/sw/metis/OLD/metis-${METIS_VERSION}.tar.gz" CACHE FILEPATH "Path to metis-${METIS_VERSION}.tar.gz source archive")
  set(METIS_InstallDir "${EP_InstallDir}/Metis-${METIS_VERSION}/${CMAKE_CFG_INTDIR}/")
  
  ExternalProject_Add(EP_Metis
                      PREFIX            ${METIS_InstallDir}
                      URL               ${METIS_URL}
                      UPDATE_COMMAND    ""
                      PATCH_COMMAND     ""
                      CONFIGURE_COMMAND ""
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${METIS_InstallDir}/src/EP_Metis/ ${CMAKE_MAKE_PROGRAM}
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${METIS_InstallDir}/src/EP_Metis/libmetis.a   ${EP_InstallDir}/lib
                                     && ${CMAKE_COMMAND} -E copy ${METIS_InstallDir}/src/EP_Metis/Lib/macros.h ${EP_InstallDir}/include/metis/
                                     && ${CMAKE_COMMAND} -E copy ${METIS_InstallDir}/src/EP_Metis/Lib/struct.h ${EP_InstallDir}/include/metis/
                                     && ${CMAKE_COMMAND} -E copy ${METIS_InstallDir}/src/EP_Metis/Lib/proto.h  ${EP_InstallDir}/include/metis/
                                     && ${CMAKE_COMMAND} -E copy ${METIS_InstallDir}/src/EP_Metis/Lib/metis.h  ${EP_InstallDir}/include/metis/
                                     && ${CMAKE_COMMAND} -E copy ${METIS_InstallDir}/src/EP_Metis/Lib/defs.h   ${EP_InstallDir}/include/metis/
                                     && ${CMAKE_COMMAND} -E copy ${METIS_InstallDir}/src/EP_Metis/Lib/rename.h ${EP_InstallDir}/include/metis/
                      )
endif ()

# #################################################
# <=== Metis compilation
# #################################################

# #################################################
# ===> Mumps compilation
# #################################################

if (COIN_ENABLE_DOWNLOAD_MUMPS)
  set(MUMPS_VERSION "4.10.0")
  set(COIN_HAS_MUMPS  ON CACHE BOOL "Clp uses the MUMPS linear solver" FORCE)
  set(IPOPT_HAS_MUMPS ON CACHE BOOL "Enable Mumps solver" FORCE)
  
  set(MUMPS_DEPENDS "")

  if (COIN_ENABLE_DOWNLOAD_METIS)
    set(MUMPS_DEPENDS ${MUMPS_DEPENDS} EP_Metis)
    
    set(MUMPS_METIS_INC_PATH "${EP_InstallDir}/include/metis" CACHE PATH "The METIS library include Path" FORCE)
    set(MUMPS_METIS_LIB_PATH "${EP_InstallDir}/lib"           CACHE PATH "The METIS library library Path" FORCE)
  else ()
    set(MUMPS_METIS_INC_PATH "None" CACHE PATH "The METIS library include Path" FORCE)
    set(MUMPS_METIS_LIB_PATH "None" CACHE PATH "The METIS library library Path" FORCE)
  endif ()

  if (COIN_ENABLE_DOWNLOAD_CLAPACK)
    message(FATAL_ERROR "MUMPS cannot be compiled using CLapack")
  endif ()
  
  set(MUMPS_LAPACK_LIB_PATH "${EP_InstallDir}/lib" CACHE PATH "The Lapack library library Path")
  if (COIN_ENABLE_FIND_LAPACK)
    set(MUMPS_LAPACK_LIB_PATH "${LAPACK_LINK_PATH}" CACHE PATH "The Lapack library library Path")
  endif ()
  
  if (COIN_ENABLE_DOWNLOAD_LAPACK)
    set(MUMPS_DEPENDS ${MUMPS_DEPENDS} EP_Lapack)
  endif ()
  
  set(MUMPS_URL        "http:////mumps.enseeiht.fr/MUMPS_${MUMPS_VERSION}.tar.gz" CACHE FILEPATH "Path toMUMPS_${MUMPS_VERSION}.tar.gz source archive")
  set(MUMPS_InstallDir "${EP_InstallDir}/Mumps-${MUMPS_VERSION}/${CMAKE_CFG_INTDIR}/")

  if (COIN_USE_SYSTEM_LAPACK)
    set(MUMPS_LAPACK_PATH "${LAPACK_LINK_PATH}")
  else ()
    set(MUMPS_LAPACK_PATH "${EP_InstallDir}/lib")
  endif ()
  
  # TODO: we need to add the path to mumps_mpi.h once Mumps is patched ...
  ExternalProject_Add(EP_Mumps
                      PREFIX            ${MUMPS_InstallDir}
                      DEPENDS           ${MUMPS_DEPENDS}
                      URL               ${MUMPS_URL}
                      UPDATE_COMMAND    ""
                      PATCH_COMMAND     ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/CMakeLists_mumps.txt ${MUMPS_InstallDir}/src/EP_Mumps/CMakeLists.txt
#		                     && ${CMAKE_COMMAND} -E chdir ${MUMPS_InstallDir}/src/EP_Mumps ${PATCH_EXECUTABLE} -p1 < ${CMAKE_CURRENT_SOURCE_DIR}/mumps_mpi.patch
#		                     && ${CMAKE_COMMAND} -E chdir ${MUMPS_InstallDir}/src/EP_Mumps ${PATCH_EXECUTABLE} -p1 < ${CMAKE_CURRENT_SOURCE_DIR}/mumps.patch
                      CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${MUMPS_InstallDir}/src/EP_Mumps/build
                                     && ${CMAKE_COMMAND} -E chdir ${MUMPS_InstallDir}/src/EP_Mumps/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DMUMPS_USE_LIBSEQ=ON -DMUMPS_USE_METIS=${COIN_ENABLE_DOWNLOAD_METIS} -DMUMPS_LAPACK_LIB_PATH:Path=${MUMPS_LAPACK_PATH} -DMUMPS_METIS_INC_PATH:Path=${MUMPS_METIS_INC_PATH} -DMUMPS_METIS_LIB_PATH:Path=${MUMPS_METIS_LIB_PATH} -DMUMPS_INSTALL_COIN=ON -DMUMPS_USE_F2C=${COIN_ENABLE_DOWNLOAD_CLAPACK} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE} -G ${CMAKE_GENERATOR} ..
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${MUMPS_InstallDir}/src/EP_Mumps/build ${CMAKE_MAKE_PROGRAM}
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${MUMPS_InstallDir}/src/EP_Mumps/build ${CMAKE_MAKE_PROGRAM} install
                      )
endif ()

# #################################################
# <=== Mumps compilation
# #################################################

# #################################################
# ===> Tests
# #################################################

if (COIN_ENABLE_DOWNLOAD_DATA_TEST)
  set(DATA_TEST_VERSION "1.0.7")
  
  set(DATA_TEST_URL "http:////www.coin-or.org/download/source/Data/Data-${DATA_TEST_VERSION}.tgz" CACHE FILEPATH "Path to Data-${DATA_TEST_VERSION} source archive")
  
  ExternalProject_Add(EP_DATA_TEST
                      PREFIX            ${EP_InstallDir}/DATA_TEST
                      URL               ${DATA_TEST_URL}
                      PATCH_COMMAND     ""
                      UPDATE_COMMAND    ""
                      CONFIGURE_COMMAND ""
                      BUILD_COMMAND     ""
                      INSTALL_COMMAND   ""
                      )

  include(VolTests.cmake)
endif ()

if (COIN_ENABLE_DOWNLOAD_MIPLIB2000)
  set(MIPLIB2000_VERSION "1.1.3")
  
  set(MIPLIB2000_URL "http:////miplib2010.zib.de/download/miplib2010-${MIPLIB2000_VERSION}-benchmark.zip" CACHE FILEPATH "Path to miplib2010-${MIPLIB2000_VERSION}-benchmark.zip source archive")
  
  ExternalProject_Add(EP_MIPLIB2000
                      PREFIX            ${EP_InstallDir}/MIPLIB2000
                      URL               ${MIPLIB2000_URL}
                      PATCH_COMMAND     ""
                      UPDATE_COMMAND    ""
                      CONFIGURE_COMMAND ""
                      BUILD_COMMAND     ""
                      INSTALL_COMMAND   ""
                      )

  include(VolMiplib2000Tests.cmake)
endif ()

# #################################################
# <=== Tests
# #################################################

# #################################################
# ===> Patch
# #################################################

if (WIN32 AND COIN_ENABLE_DOWNLOAD_PATCH)
  set(PATCH_VERSION "2.5.9-7")
  
  set(PATCH_URL "https:////sourceforge.net//projects//gnuwin32//files//patch//${PATCH_VERSION}//patch-${PATCH_VERSION}-bin.zip" CACHE FILEPATH "Path to Patch-${PATCH_VERSION} binary archive")
  
  ExternalProject_Add(EP_PATCH
                      PREFIX            ${EP_InstallDir}/Patch-${PATCH_VERSION}/
                      URL               ${PATCH_URL}
                      PATCH_COMMAND     ""
                      UPDATE_COMMAND    ""
                      CONFIGURE_COMMAND ""
                      BUILD_COMMAND     ""
                      INSTALL_COMMAND   ""
                      )
  
  set(PATCH_EXECUTABLE "${EP_InstallDir}/Patch-${PATCH_VERSION}/src/EP_PATCH/bin/patch.exe" CACHE FILEPATH "Path to the patch executable")
else ()
  find_program(TMP_PATCH_EXECUTABLE patch)
  set(PATCH_EXECUTABLE "${TMP_PATCH_EXECUTABLE}" CACHE FILEPATH "Path to the patch executable")
endif ()

# #################################################
# <=== Patch
# #################################################

set(CMAKE_GENERATOR    "${CMAKE_GENERATOR_OLD}")
set(CMAKE_MAKE_PROGRAM "${CMAKE_MAKE_PROGRAM_OLD}")

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
  if (COIN_ENABLE_DOWNLOAD_METIS)
    add_dependencies(${_target} EP_Metis)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_MUMPS)
    add_dependencies(${_target} EP_Mumps)
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
  if (COIN_ENABLE_DOWNLOAD_LAPACK OR COIN_ENABLE_DOWNLOAD_CLAPACK)
    add_dependencies(${_target} EP_Lapack)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_GLPK)
    add_dependencies(${_target} EP_glpk)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_METIS)
    add_dependencies(${_target} EP_Metis)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_MUMPS)
    add_dependencies(${_target} EP_Mumps)
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
