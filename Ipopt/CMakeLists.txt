cmake_minimum_required(VERSION 2.8)

project(IpOpt)

# FUNNY_LAPACK_FINT

#undef HAVE_PARDISO
#undef HAVE_MPI_INITIALIZED - Define to 1 if you have the `MPI_Initialized' function.
#undef HAVE_PARDISO_MKL - Define to 1 if you are using Pardiso from MKL
#undef HAVE_PARDISO_OLDINTERFACE - Define to 1 if you are not using at least a 4.0 version of Pardiso
#undef HAVE_PARDISO_PARALLEL - Define to 1 if you are using the parallel version of Pardiso
#undef HAVE_WSMP - Define to 1 if WSMP is available

option(IPOPT_HAS_AMPL                  "Enable Ampl interface" OFF)
option(IPOPT_HAS_PARDISO               "Enable Pardiso solver" OFF)
option(IPOPT_HAS_HSL                   "Enable HSL interface"  OFF)
option(IPOPT_HAS_WSMP                  "Enable WSMP solver"    OFF)
option(IPOPT_HAS_MUMPS                 "Enable Mumps solver"   OFF)
option(IPOPT_BUILD_EXAMPLES            "Enable the building of examples" OFF)
option(IPOPT_ENABLE_LINEARSOLVERLOADER "Build the dynamic linear solver loader" ON)
option(IPOPT_ENABLE_INEXACT            "Build the inexact solver" ON)

set(COIN_IPOPT_CHECKLEVEL "0" CACHE STRING "The debug sanity check level of IpOpt (0 if no test)")
set(COIN_IPOPT_VERBOSITY  "0" CACHE STRING "The debug verbosity level of IpOpt (0 if no output)")

set(COIN_HAS_MUMPS OFF CACHE BOOL "Enable the Mumps linear solver (default solver enabled)" FORCE)
set(COIN_HAS_MUMPS_INCLUDE_PATH "None" CACHE PATH "The MUMPS linear solver include Path")
set(COIN_HAS_MUMPS_LIBRARY_PATH "None" CACHE PATH "The MUMPS linear solver absolute library Path")

set(COIN_HAS_WSMP OFF CACHE BOOL "Enable the WSMP linear solver" FORCE)
set(COIN_HAS_WSMP_INCLUDE_PATH "None" CACHE PATH "The WSMP linear solver include Path")
set(COIN_HAS_WSMP_LIBRARY_PATH "None" CACHE PATH "The WSMP linear solver absolute library Path")

# Compilation options
option(ENABLE_SHARED_LIBRARIES       "Build libraries as shared libraries" OFF)
option(COIN_COMPILE_STATIC           "Activate the static linking" OFF)
option(COIN_COMPILE_COVERAGE         "Activate the code coverage compilation" OFF)
option(COIN_COMPILE_PROFILE          "Activate the code profiling compilation" OFF)
option(COIN_COMPILE_PROFILE_VALGRIND "Activate the code profiling compilation for valgrind" OFF)
option(COIN_COMPILE_LTO              "Activate the whole program optimization (using LTO)" OFF)
option(COIN_COMPILE_WHOPR            "Activate the whole program optimization (using WHOPR)" OFF)
option(COIN_USE_FAST_CODE            "Use intensive optimization flags" OFF)
option(COIN_COMPILE_WARNINGS         "Activate a set of warning options" OFF)
option(COIN_COMPILE_CXX11            "Activate C++11 compilation" OFF)

mark_as_advanced(ENABLE_SHARED_LIBRARIES
                 COIN_COMPILE_STATIC
                 COIN_COMPILE_COVERAGE
                 COIN_COMPILE_PROFILE
                 COIN_COMPILE_PROFILE_VALGRIND
                 COIN_COMPILE_LTO
                 COIN_COMPILE_WHOPR
                 COIN_USE_FAST_CODE
                 COIN_COMPILE_WARNINGS
                 COIN_COMPILE_CXX11
		 COIN_HAS_MUMPS
                 COIN_HAS_MUMPS_INCLUDE_PATH
                 COIN_HAS_MUMPS_LIBRARY_PATH
                 COIN_HAS_WSMP
                 COIN_HAS_WSMP_INCLUDE_PATH
                 COIN_HAS_WSMP_LIBRARY_PATH
                 COIN_IPOPT_CHECKLEVEL
                 COIN_IPOPT_VERBOSITY)

# Set paths for binary and library generation inside the build directory:
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH}
                      ${CMAKE_SOURCE_DIR}/cmake)

include(coin-macros)

Enable_Testing()

#------------------------------------------------------------
# Detect 64 bits
#------------------------------------------------------------

if (CMAKE_SIZEOF_VOID_P EQUAL 4)
  set(HAVE_64_BIT 0)
else ()
  set(HAVE_64_BIT 1)
endif ()

# Various definitions

# Name of package
set(PACKAGE           "IpOpt")
# Define to the address where bug reports for this package should be sent.
set(PACKAGE_BUGREPORT "bugs@coin-or.org")
# Define to the full name of this package.
set(PACKAGE_NAME      "IpOpt")
# Define to the full name and version of this package.
set(PACKAGE_STRING    "IpOpt")
# Define to the one symbol short name of this package.
set(PACKAGE_TARNAME   "ipopt")
# Define to the version of this package.
set(PACKAGE_VERSION   "3.12.4")

if (CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/ipopt_binary" 
      CACHE PATH "IpOpt install prefix" FORCE)
endif (CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)

# Check some directories

coin_check_and_add_include_path(COIN_HAS_MUMPS_INCLUDE_PATH)
coin_check_and_add_library_path(COIN_HAS_MUMPS_LIBRARY_PATH)
coin_check_and_add_include_path(COIN_HAS_WSMP_INCLUDE_PATH)
coin_check_and_add_library_path(COIN_HAS_WSMP_LIBRARY_PATH)

link_directories(${CMAKE_BINARY_DIR}/Dependencies/lib)

#-----------------------------------------------------------------------------
# Manage compilation options
#-----------------------------------------------------------------------------

if (UNIX)
  if (COIN_COMPILE_STATIC)
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static -z muldefs")
    endif ()
  elseif (COIN_COMPILE_COVERAGE)
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
      set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} --coverage -fno-inline")
    endif ()
    if (CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
      set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -fprofile-arcs -ftest-coverage -Xclang -coverage-cfg-checksum -Xclang -coverage-no-function-names-in-data -Xclang -coverage-version='408*'")
    endif ()
  elseif (COIN_COMPILE_PROFILE)
    set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -pg")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -pg")
  elseif (COIN_COMPILE_PROFILE_VALGRIND)
    set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -p")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -p")
  else ()
    set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -Wno-deprecated -fPIC")
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -z muldefs")
    endif ()
  endif ()
  
  if (COIN_COMPILE_LTO)
    if (CMAKE_CXX_COMPILER_ID STREQUAL "Intel")
      set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -lto")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lto")
    endif ()
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
      set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -flto")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -flto")
    endif ()
  elseif (COIN_COMPILE_WHOPR)
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
      set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -fwhopr")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fwhopr")
    endif ()
  endif ()
elseif (WIN32)
  if (MSVC)
    if (COIN_COMPILE_LTO OR COIN_COMPILE_WHOPR)
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /GL ")
      set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS} /GL ")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /LTCG ")
    endif ()
  endif ()
endif ()

#-----------------------------------------------------------------------------
# Manage specific VS flags
#-----------------------------------------------------------------------------

if (MSVC)
  # Avoid Warning C4530 by using the flag /EHsc
  set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} /EHsc ")
  set(CMAKE_C_FLAGS          "${CMAKE_C_FLAGS} /EHsc ")
  set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /EHsc ")
endif ()

#-----------------------------------------------------------------------------
# Manage threads include dir under Windows
#-----------------------------------------------------------------------------

if (WIN32)
  if (NOT COIN_THREADS_INC_PATH STREQUAL "None")
    include_directories(${COIN_THREADS_INC_PATH})
  endif ()
  if (NOT COIN_THREADS_LIB_PATH STREQUAL "None")
    link_directories(${COIN_THREADS_LIB_PATH})
  endif ()
endif ()

# Check for a fortran compiler
include(CMakeDetermineFortranCompiler)
if (NOT CMAKE_Fortran_COMPILER)
  message(STATUS "WARNING: fortran compiler not found. Disabling f77/f95 bindings")
endif ()

# Define FORTRAN_INTEGER_TYPE for Ipopt.
set(FORTRAN_INTEGER_TYPE int)

#-----------------------------------------------------------------------------
# Detect name mangling convention used between Fortran and C
#-----------------------------------------------------------------------------

if (CMAKE_Fortran_COMPILER)
  enable_language(Fortran)
  
  include(FortranCInterface)
  
  FortranCInterface_HEADER(${CMAKE_BINARY_DIR}/F77Mangle.h
                           MACRO_NAMESPACE "F77_"
                           SYMBOL_NAMESPACE "F77_"
                           SYMBOLS mysub mymod:my_sub)
  
  file(STRINGS ${CMAKE_BINARY_DIR}/F77Mangle.h CONTENTS REGEX "F77_GLOBAL\\(.*,.*\\) +(.*)")
  string(REGEX MATCH "F77_GLOBAL\\(.*,.*\\) +(.*)" RESULT ${CONTENTS})
  set(F77_FUNC "F77_FUNC(name,NAME) ${CMAKE_MATCH_1}")
  
  file(STRINGS ${CMAKE_BINARY_DIR}/F77Mangle.h CONTENTS REGEX "F77_GLOBAL_\\(.*,.*\\) +(.*)")
  string(REGEX MATCH "F77_GLOBAL_\\(.*,.*\\) +(.*)" RESULT ${CONTENTS})
  set(F77_FUNC_ "F77_FUNC_(name,NAME) ${CMAKE_MATCH_1}")
  
  set(F77_FUNC "F77_FUNC(name,NAME) name##_")
  set(F77_FUNC_ "F77_FUNC_(name,NAME) name##__")
else ()
  set(F77_FUNC "F77_FUNC(name,NAME) name##_")
  set(F77_FUNC_ "F77_FUNC_(name,NAME) name##__")
endif ()

# End detect fortran mangling

if (NOT WIN32 AND COIN_COMPILE_WARNINGS)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-deprecated -fPIC ")
  set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -Wno-deprecated -fPIC ")
  # Try to locate unitizalized variables
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wshadow -Wuninitialized ")
  set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -Wall -Wshadow -Wmissing-prototypes -Wuninitialized ")
endif ()

# Manage coverage via lcov automatically

if (COIN_COMPILE_COVERAGE)
  if (WIN32)
    message(FATAL_ERROR "Error: code coverage analysis is only available under Linux for now.")
  endif ()
  
  find_program(GCOV_PATH gcov)
  find_program(LCOV_PATH lcov)
  find_program(GENHTML_PATH genhtml)

  if (NOT GCOV_PATH)
    message(FATAL_ERROR "gcov not found! Please install lcov and gcov. Aborting...")
  endif ()
  
  if (NOT LCOV_PATH)
    message(FATAL_ERROR "lcov not found! Please install lcov and gcov. Aborting...")
  endif ()
  
  if (NOT GENHTML_PATH)
    message(FATAL_ERROR "genhtml not found! Please install lcov and gcov. Aborting...")
  endif ()
  
  # /!\ FAILURE IF AT LEAST ONE TEST FAILS
  # Capturing lcov counters and generating report
  add_custom_target(coverage
    COMMAND ${LCOV_PATH} --directory . --zerocounters
    COMMAND ${CMAKE_COMMAND} -E chdir ${CMAKE_BINARY_DIR} ${CMAKE_CTEST_COMMAND} -LE LONG -LE FAIL
    COMMAND ${LCOV_PATH} --capture --directory . --output-file ${CMAKE_BINARY_DIR}/coverage.info
    COMMAND ${LCOV_PATH} --remove ${CMAKE_BINARY_DIR}/coverage.info '/usr/*' '${CMAKE_BINARY_DIR}/Dependencies/*' --output-file ${CMAKE_BINARY_DIR}/coverage.info.cleaned
    COMMAND ${GENHTML_PATH} -o ${CMAKE_BINARY_DIR}/coverage ${CMAKE_BINARY_DIR}/coverage.info.cleaned
    COMMAND ${CMAKE_COMMAND} -E remove ${CMAKE_BINARY_DIR}/coverage.info ${CMAKE_BINARY_DIR}/coverage.info.cleaned
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
    COMMENT "Resetting code coverage counters to zero.
Processing code coverage counters and generating report.
You can zip the directory ${CMAKE_BINARY_DIR}/coverage and upload the content to a web server.")
endif ()

# End of coverage

include(CheckIncludeFile)

check_include_file("assert.h"    HAVE_ASSERT_H)
check_include_file("cassert"     HAVE_CASSERT)
check_include_file("cctype"      HAVE_CCTYPE)
check_include_file("cfloat"      HAVE_CFLOAT)
check_include_file("cieeefp"     HAVE_CIEEEFP)
check_include_file("cmath"       HAVE_CMATH)
check_include_file("cstdarg"     HAVE_CSTDARG)
check_include_file("cstddef"     HAVE_CSTDDEF)
check_include_file("cstdio"      HAVE_CSTDIO)
check_include_file("cstlib"      HAVE_CSTLIB)
check_include_file("cstring"     HAVE_CSTRING)
check_include_file("ctime"       HAVE_CTIME)
check_include_file("ctype.h"     HAVE_CTYPE_H)
check_include_file("dlfcn.h"     HAVE_DLFCN_H)
check_include_file("float.h"     HAVE_FLOAT_H)
check_include_file("ieeefp.h"    HAVE_IEEEFP_H)
check_include_file("inttypes.h"  HAVE_INTTYPES_H)
check_include_file("math.h"      HAVE_MATH_H)
check_include_file("stdarg.h"    HAVE_STDARG_H)
check_include_file("stddef.h"    HAVE_STDDEF_H)
check_include_file("stdint.h"    HAVE_STDINT_H)
check_include_file("stdio.h"     HAVE_STDIO_H)
check_include_file("stdlib.h"    HAVE_STDLIB_H)
check_include_file("strings.h"   HAVE_STRINGS_H)
check_include_file("string.h"    HAVE_STRING_H)
check_include_file("sys/stat.h"  HAVE_SYS_STAT_H)
check_include_file("sys/types.h" HAVE_SYS_TYPES_H)
check_include_file("time.h"      HAVE_TIME_H)
check_include_file("unistd.h"    HAVE_UNISTD_H)
check_include_file("windows.h"   HAVE_WINDOWS_H)

include(CheckCXXCompilerFlag)

if (COIN_COMPILE_CXX11 AND NOT WIN32)
  # VS2013 activate C++11 by default
  check_cxx_compiler_flag(-std=c++11 HAVE_STD_CPP11_FLAG)
  if (HAVE_STD_CPP11_FLAG)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
  else ()
    check_cxx_compiler_flag(-std=c++0x HAVE_STD_CPP0X_FLAG)
    if (HAVE_STD_CPP0X_FLAG)
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
    endif ()
  endif ()
endif ()

check_cxx_compiler_flag(-Qunused-arguments HAVE_QUNUSED_ARGUMENTS)
if (HAVE_QUNUSED_ARGUMENTS)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Qunused-arguments")
endif ()

include(CheckTypeSize)

CHECK_TYPE_SIZE("int *" SIZEOF_INT_P)

include(CheckSymbolExists)
include(CheckFunctionExists)

if (HAVE_ASSERT_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "assert.h")
endif ()
if (HAVE_CASSERT)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "cassert")
endif ()
if (HAVE_CCTYPE)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "cctype")
endif ()
if (HAVE_CFLOAT)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "cfloat")
endif ()
if (HAVE_CIEEEFP)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "cieeefp")
endif ()
if (HAVE_CMATH)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "cmath")
endif ()
if (HAVE_CSTDARG)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "cstdarg")
endif ()
if (HAVE_CSTDDEF)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "cstddef")
endif ()
if (HAVE_CSTDIO)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "cstdio")
endif ()
if (HAVE_CSTLIB)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "cstdlib")
endif ()
if (HAVE_CSTRING)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "cstring")
endif ()
if (HAVE_CTIME)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "ctime")
endif ()
if (HAVE_CTYPE_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "ctype.h")
endif ()
if (HAVE_DLFCN_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "dlfcn.h")
endif ()
if (HAVE_FLOAT_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "float.h")
endif ()
if (HAVE_IEEEFP_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "ieeefp.h")
endif ()
if (HAVE_INTTYPES_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "inttypes.h")
endif ()
if (HAVE_MATH_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "math.h")
endif ()
if (HAVE_STDARG_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "stdarg.h")
endif ()
if (HAVE_STDDEF_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "stddef.h")
endif ()
if (HAVE_STDINT_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "stdint.h")
endif ()
if (HAVE_STDIO_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "stdio.h")
endif ()
if (HAVE_STDLIB_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "stdlib.h")
endif ()
if (HAVE_STRINGS_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "strings.h")
endif ()
if (HAVE_STRING_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "string.h")
endif ()
if (HAVE_SYS_STAT_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "sys/stat.h")
endif ()
if (HAVE_SYS_TYPES_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "sys/types.h")
endif ()
if (HAVE_TIME_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "time.h")
endif ()
if (HAVE_UNISTD_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "unistd.h")
endif ()
if (HAVE_WINDOWS_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "windows.h")
endif ()

CHECK_SYMBOL_EXISTS(isfinite "${TEST_INCLUDE_LIST}" COIN_C_FINITE_R)
if (COIN_C_FINITE_R)
  set(COIN_C_FINITE isfinite)
endif ()
CHECK_SYMBOL_EXISTS(finite "${TEST_INCLUDE_LIST}" COIN_C_FINITE_R)
if (COIN_C_FINITE_R)
  set(COIN_C_FINITE finite)
endif ()
CHECK_SYMBOL_EXISTS(_finite "${TEST_INCLUDE_LIST}" COIN_C_FINITE_R)
if (COIN_C_FINITE_R)
  set(COIN_C_FINITE _finite)
endif ()

CHECK_FUNCTION_EXISTS(dran48     HAVE_DRAND48)
CHECK_FUNCTION_EXISTS(rand       HAVE_RAND)
CHECK_FUNCTION_EXISTS(snprintf   HAVE_SNPRINTF)
CHECK_FUNCTION_EXISTS(std::rand  HAVE_STD__RAND)
CHECK_FUNCTION_EXISTS(va_copy    HAVE_VA_COPY)
CHECK_FUNCTION_EXISTS(vsnprintf  HAVE_VSNPRINTF)
CHECK_FUNCTION_EXISTS(_snprintf  HAVE__SNPRINTF)
CHECK_FUNCTION_EXISTS(_vsnprintf HAVE__VSNPRINTF)

# Define to dummy `main' function (if any) required to link to the Fortran libraries.
# F77_DUMMY_MAIN

# Define to a macro mangling the given C identifier (in lower and upper
# case), which must not contain underscores, for linking with Fortran.
# F77_FUNC

# As F77_FUNC, but for C identifiers containing underscores.
# F77_FUNC_

# Define if F77 and FC dummy `main' functions are identical.
# FC_DUMMY_MAIN_EQ_F77

if (COIN_USE_FAST_CODE)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fomit-frame-pointer ")
  set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS} -fomit-frame-pointer ")
  
  if (CMAKE_CXX_COMPILER_ID STREQUAL "Intel")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-math-errno -fp-trap=none ")
    set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS} -fno-math-errno -fp-trap=none ")
  endif ()

  if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -ffast-math -fno-math-errno -fno-trapping-math ")
    set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS} -ffast-math -fno-math-errno -fno-trapping-math ")
  endif ()
  
endif ()

add_definitions(-DHAVE_CONFIG_H)

#-----------------------------------------------
# Doxygen documentation
#-----------------------------------------------

set(doc_dir doc)
find_package(Doxygen)

if(DOXYGEN AND ENABLE_DOXYGEN)
  configure_file(${CMAKE_SOURCE_DIR}/doxydoc/doxygen.conf.in ${CMAKE_BINARY_DIR}/doxydoc/doxygen.conf)

  add_custom_target(docs 
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_BINARY_DIR}/doxydoc/doxygen.conf)
endif(DOXYGEN AND ENABLE_DOXYGEN)

subdirs(ThirdParty)

include_directories(${CMAKE_BINARY_DIR}/Dependencies/include)
link_directories(${CMAKE_BINARY_DIR}/Dependencies/lib)

#
# HSL Management
#


if (COIN_ENABLE_DOWNLOAD_METIS) # METIS found
  add_definitions(-DCOINHSL_HAS_METIS)
endif ()

if (IPOPT_ENABLE_LINEARSOLVERLOADER)
  add_definitions(-DHAVE_LINEARSOLVERLOADER)
  
  find_package(DL REQUIRED)
  
  set(BUILD_LINEARSOLVERLOADER ON)
  set(BUILD_PARDISOLOADER      ON)
else ()
  set(BUILD_LINEARSOLVERLOADER OFF)
  set(BUILD_PARDISOLOADER      OFF)
endif ()

if (IPOPT_HASH_MUMPS)
  add_definitions(-DHAVE_MUMPS)
  
  set(COINHSL_HAS_MUMPS ON)
endif()

if (IPOPT_HASH_WSMP)
  add_definitions(-DHAVE_WSMP)
  
  set(COINHSL_HAS_WSMP ON)
endif()

set(BUILD_INEXACT OFF)
if (IPOPT_ENABLE_INEXACT AND IPOPT_HAS_PARDISO)
  set(BUILD_INEXACT ON)
endif ()
if (IPOPT_ENABLE_INEXACT AND NOT IPOPT_HAS_PARDISO)
  set(BUILD_INEXACT OFF)
  message(STATUS "Warning: Inexact solver needs Pardiso. Inexact solver disabled")
endif ()

subdirs(Ipopt)

#
# Packaging
#

set(CPACK_PACKAGE_NAME      "${PACKAGE_NAME}")
set(CPACK_PACKAGE_FILE_NAME "${CPACK_PACKAGE_NAME}-${PACKAGE_VERSION}-${CMAKE_SYSTEM_NAME}")

message(STATUS "Package filename: ${CPACK_PACKAGE_FILE_NAME}")

set(CPACK_PACKAGE_INSTALL_DIRECTORY "${PACKAGE_NAME}")
set(CPACK_PACKAGE_VERSION "${PACKAGE_VERSION}")

set(CPACK_PACKAGE_RELOCATABLE TRUE)

if (WIN32)
  set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "${CPACK_PACKAGE_NAME}")
  set(CPACK_MONOLITHIC_INSTALL ON)
  set(CPACK_NSIS_CONTACT "${PACKAGE_BUGREPORT}")
  set(CPACK_NSIS_MODIFY_PATH ON)
  set(CPACK_NSIS_PACKAGE_NAME "IpOpt ${PACKAGE_VERSION}")
elseif (APPLE)
  set(CPACK_COMPONENTS_ALL_IN_ONE_PACKAGE ON)
  set(CPACK_PACKAGE_DEFAULT_LOCATION "/opt/${CPACK_PACKAGE_NAME}")
  set(CPACK_PACKAGING_INSTALL_PREFIX "/")
else (WIN32)
  set(CPACK_COMPONENTS_ALL_IN_ONE_PACKAGE ON)
  set(CPACK_PACKAGE_DEFAULT_LOCATION "/opt/${CPACK_PACKAGE_NAME}")
  set(CPACK_PACKAGING_INSTALL_PREFIX "/")
  
  set(CPACK_DEBIAN_PACKAGE_SECTION "Libraries")
  set(CPACK_DEBIAN_PACKAGE_MAINTAINER "${PACKAGE_BUGREPORT}")
  
  set(CPACK_RPM_COMPONENT_INSTALL ON)
  set(CPACK_RPM_PACKAGE_RELOCATABLE ON)
  set(CPACK_RPM_PACKAGE_LICENSE "Copyrighted")
  set(CPACK_RPM_PACKAGE_GROUP "Development/Libraries")
  set(CPACK_RPM_PACKAGE_URL "${PACKAGE_URL}")
  set(CPACK_RPM_PACKAGE_SUMMARY "IpOpt is a non linear constrained solver library from CoinOR.")
  set(CPACK_RPM_PACKAGE_DESCRIPTION 
    "The CoinUtils suite includes:

    * The IpOpt non linear constrained solver.
"
    )
endif ()

include(CPack)
include(CTest)

###########################
#                         #
# Sum-up of configuration #
#                         #
###########################

# available colors: {u,b,bg, } black, red, green, yellow, blue, purple, cyan, white, reset

COLOR_MESSAGE("${color_green}")
COLOR_MESSAGE("************************")
COLOR_MESSAGE("*                      *")
COLOR_MESSAGE("* Configuration sum-up *")
COLOR_MESSAGE("*                      *")
COLOR_MESSAGE("************************")
COLOR_MESSAGE("${color_reset} ")

COLOR_MESSAGE("${color_cyan}Installation directory:${color_reset} ${CMAKE_INSTALL_PREFIX}")
COLOR_MESSAGE("${color_cyan}Build type:${color_reset} ${CMAKE_BUILD_TYPE}")

get_directory_property(ALL_INCLUDES INCLUDE_DIRECTORIES)
get_directory_property(ALL_LINKS    LINK_DIRECTORIES)
get_directory_property(ALL_DEFS     COMPILE_DEFINITIONS)

message(STATUS "${color_cyan}Include directories:${color_reset}     ${ALL_INCLUDES}")
message(STATUS "${color_cyan}Link directories:${color_reset}        ${ALL_LINKS}")
message(STATUS "${color_cyan}Compilation definitions:${color_reset} ${ALL_DEFS}")
