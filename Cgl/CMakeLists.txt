cmake_minimum_required(VERSION 3.0.2)

project(Cgl)

# Threads path
set(COIN_THREADS_INC_PATH "None" CACHE PATH "The path to the PThreads header files")
set(COIN_THREADS_LIB_PATH "None" CACHE PATH "The path to the PThreads library files")

mark_as_advanced(COIN_THREADS_INC_PATH
                 COIN_THREADS_LIB_PATH)

# External solvers
option(USE_OSI_XPRESS "Use Xpress solver" OFF)
option(USE_OSI_CPLEX  "Use Cplex solver"  OFF)
option(USE_OSI_GLPK   "Use GLPK solver"   OFF)
option(USE_OSI_GUROBI "Use GUROBI solver" OFF)
option(USE_OSI_MOSEK  "Use Mosek solver"  OFF)
option(USE_OSI_SOPLEX "Use Soplex solver" OFF)
option(USE_VOL        "Use Vol solver"    OFF)
option(USE_DYLP       "Use DyLP solver"   OFF)
option(COMPILE_OSI_XPRESS "Compile the OSI Xpress solver" OFF)
option(COMPILE_OSI_CPLEX  "Compile the OSI Cplex solver"  OFF)
option(COMPILE_OSI_GLPK   "Compile the OSI GLPK solver"   OFF)
option(COMPILE_OSI_GUROBI "Compile the OSI GUROBI solver" OFF)
option(COMPILE_OSI_MOSEK  "Compile the OSI Mosek solver"  OFF)
option(COMPILE_OSI_SOPLEX "Compile the OSI Soplex solver" OFF)
set(COIN_XPRESS_DIR   "None" CACHE PATH "The Xpress solver Path")
set(COIN_CPLEX_DIR    "None" CACHE PATH "The Cplex solver Path")
set(COIN_GUROBI_DIR   "None" CACHE PATH "The GUROBI solver Path")
set(COIN_MOSEK_DIR    "None" CACHE PATH "The Mosek solver Path")
set(COIN_SOPLEX_DIR   "None" CACHE PATH "The Soplex solver Path")
set(COIN_SYMPHONY_DIR "None" CACHE PATH "The Symphony solver Path")
set(COIN_VOL_DIR      "None" CACHE PATH "The Vol solver Path")
set(COIN_DYLP_DIR     "None" CACHE PATH "The DyLP solver Path")

# Compile only the main part and use an external directory to link / use includes
option(USE_COINOR_BIN "Use and external directory where the headers / libraries used are stored" OFF)
set(COINOR_DIR "None" CACHE PATH "The Path where all the used CoinOR libraries are stored")

mark_as_advanced(USE_COINOR_BIN
                 COINOR_DIR)

# Compilation options
option(ENABLE_SHARED_LIBRARIES       "Build libraries as shared libraries" OFF)
option(COIN_COMPILE_STATIC           "Activate the static linking" OFF)
option(COIN_COMPILE_COVERAGE         "Activate the code coverage compilation" OFF)
option(COIN_COMPILE_PROFILE          "Activate the code profiling compilation" OFF)
option(COIN_COMPILE_PROFILE_VALGRIND "Activate the code profiling compilation for valgrind" OFF)
option(COIN_COMPILE_LTO              "Activate the whole program optimization (using LTO)" OFF)
option(COIN_COMPILE_WHOPR            "Activate the whole program optimization (using WHOPR)" OFF)
option(COIN_COMPILE_WARNINGS         "Activate a set of warning options" OFF)

# Set paths of source
set(Coin_DIR "${CMAKE_SOURCE_DIR}" CACHE PATH "The Cgl Path")

mark_as_advanced(ENABLE_SHARED_LIBRARIES
                 COIN_COMPILE_STATIC
		 COIN_COMPILE_COVERAGE
		 COIN_COMPILE_PROFILE
		 COIN_COMPILE_PROFILE_VALGRIND
		 COIN_COMPILE_LTO
		 COIN_COMPILE_WHOPR
		 COIN_COMPILE_WARNINGS
		 Coin_DIR)

# CoinUtils options
option(COINUTILS_USE_THREADS              "enables compilation of thread aware CoinUtils (mempool so far)" OFF)
option(COINUTILS_USE_MEMPOOL_OVERRIDE_NEW "enables the CoinUtils mempool to override global new/delete" OFF)
option(COINUTILS_USE_MEMPOOL_MAXPOOLED    "Specify the default maximum memory allocation size that is served by the memory pool. If negative (or 'no') then the memory pool is disabled completely. Otherwise its value can be overridden at runtime using the COINUTILS_MEMPOOL_MAXPOOLED environment variable." OFF)
option(COINUTILS_HAS_ZLIB  "CoinUtils uses Zlib" OFF)
option(COINUTILS_HAS_BZLIB "CoinUtils uses BZlib" OFF)
option(COIN_HAS_LAPACK     "Enable the Lapack support of CoinUtils" OFF)
option(COIN_HAS_BLAS       "Enable the Blas support of CoinUtils" OFF)
option(COIN_HAS_ASL        "Enable the ASL support" OFF)

set(COIN_COINUTILS_CHECKLEVEL "0" CACHE STRING "The debug sanity check level of CoinUtils (0 if no test)")
set(COIN_COINUTILS_VERBOSITY  "0" CACHE STRING "The debug verbosity level of CoinUtils (0 if no output)")

mark_as_advanced(COINUTILS_USE_THREADS
                 COINUTILS_USE_MEMPOOL_OVERRIDE_NEW
                 COINUTILS_USE_MEMPOOL_MAXPOOLED
                 COINUTILS_HAS_ZLIB
                 COINUTILS_HAS_BZLIB
                 COIN_HAS_LAPACK
                 COIN_HAS_BLAS
                 COIN_HAS_ASL
                 COIN_COINUTILS_CHECKLEVEL
                 COIN_COINUTILS_VERBOSITY)

# Clp options
option(COIN_ENABLE_AMD "Clp uses the AMD linear solver" OFF)
set(COIN_HAS_AMD_INCLUDE_PATH "None" CACHE PATH "The AMD linear solver include Path")
set(COIN_HAS_AMD_LIBRARY_PATH "None" CACHE PATH "The AMD linear solver absolute library Path")

option(COIN_ENABLE_CHOLMOD "Clp use the CholMod linear solver" OFF)
set(COIN_HAS_CHOLMOD_INCLUDE_PATH "None" CACHE PATH "The CholMod linear solver include Path")
set(COIN_HAS_CHOLMOD_LIBRARY_PATH "None" CACHE PATH "The CholMod linear solver absolute library Path")

option(COIN_HAS_GLPK "Clp uses GLPK" OFF)
set(COIN_HAS_GLPK_INCLUDE_PATH "None" CACHE PATH "The GLPK linear solver include Path")
set(COIN_HAS_GLPK_LIBRARY_PATH "None" CACHE PATH "The GLPK linear solver absolute library Path")

option(COIN_HAS_MUMPS "Clp uses the MUMPS linear solver" OFF)
set(COIN_HAS_MUMPS_INCLUDE_PATH "None" CACHE PATH "The MUMPS linear solver include Path")
set(COIN_HAS_MUMPS_LIBRARY_PATH "None" CACHE PATH "The MUMPS linear solver absolute library Path")

option(COIN_HAS_WSMP "Clp uses the WSMP linear solver" OFF)
set(COIN_HAS_WSMP_INCLUDE_PATH "None" CACHE PATH "The WSMP linear solver include Path")
set(COIN_HAS_WSMP_LIBRARY_PATH "None" CACHE PATH "The WSMP linear solver absolute library Path")

option(COIN_HAS_ABC "Use the Aboca solver" OFF)
set(COIN_ABC_LEVEL      "0" CACHE STRING "Use the Aboca solver (1, 2, 3, 4) - 0, Aboca solver is not used")
set(COIN_CLP_CHECKLEVEL "0" CACHE STRING "The debug sanity check level of Clp (0 if no test)")
set(COIN_CLP_VERBOSITY  "0" CACHE STRING "The debug verbosity level of Clp (0 if no output)")

mark_as_advanced(COIN_ENABLE_AMD
                 COIN_HAS_AMD_INCLUDE_PATH
                 COIN_HAS_AMD_LIBRARY_PATH
                 COIN_ENABLE_CHOLMOD
                 COIN_HAS_CHOLMOD_INCLUDE_PATH
                 COIN_HAS_CHOLMOD_LIBRARY_PATH
                 COIN_HAS_GLPK
                 COIN_HAS_GLPK_INCLUDE_PATH
                 COIN_HAS_GLPK_LIBRARY_PATH
                 COIN_HAS_MUMPS
                 COIN_HAS_MUMPS_INCLUDE_PATH
                 COIN_HAS_MUMPS_LIBRARY_PATH
                 COIN_HAS_WSMP
                 COIN_HAS_WSMP_INCLUDE_PATH
                 COIN_HAS_WSMP_LIBRARY_PATH
                 COIN_HAS_ABC
                 COIN_ABC_LEVEL
                 COIN_CLP_CHECKLEVEL
                 COIN_CLP_VERBOSITY)

# Cgl options
set(COIN_CGL_CHECKLEVEL "0" CACHE STRING "The debug sanity check level of Cgl (0 if no test)")
set(COIN_CGL_VERBOSITY  "0" CACHE STRING "The debug verbosity level of Cgl (0 if no output)")

# Osi options
set(COIN_OSI_CHECKLEVEL "0" CACHE STRING "The debug sanity check level of Osi (0 if no test)")
set(COIN_OSI_VERBOSITY  "0" CACHE STRING "The debug verbosity level of Osi (0 if no output)")

# Use fast code
option(COIN_USE_FAST_CODE "Use fast code for CoinUtils and Clp" OFF)

mark_as_advanced(COIN_CGL_CHECKLEVEL
                 COIN_CGL_VERBOSITY
		 COIN_OSI_CHECKLEVEL
		 COIN_OSI_VERBOSITY
		 COIN_USE_FAST_CODE)

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
# Set to 1 if the CoinUtils package is available
set(COIN_HAS_COINUTILS 1)
# Set to 1 if the Osi package is available
set(COIN_HAS_OSI       1)
# Set to 1 if the OsiTests package is available
set(COIN_HAS_OSITESTS  1)
# Set to 1 if the Sample package is available
set(COIN_HAS_SAMPLE    1)
set(COIN_HAS_CGL       1) # Set this to 1 if cgl is compiled
set(COIN_HAS_CLP       1) # Set this to 1 if clp is compiled

# Name of package
set(PACKAGE           "Cgl")
# Define to the address where bug reports for this package should be sent.
set(PACKAGE_BUGREPORT "bugs@coin-or.org")
# Define to the full name of this package.
set(PACKAGE_NAME      "Cgl")
# Define to the full name and version of this package.
set(PACKAGE_STRING    "Cgl")
# Define to the one symbol short name of this package.
set(PACKAGE_TARNAME   "cgl")
# Define to the version of this package.
set(PACKAGE_VERSION   "0.58.6")

if (CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/../cgl_binary" 
      CACHE PATH "Cgl install prefix" FORCE)
endif (CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)

# Check for AMD and CHOLMOD

if (COIN_ENABLE_AMD)
  find_package(AMD)
  if (AMD_FOUND)
    set(COIN_HAS_AMD_INCLUDE_PATH "${AMD_INCLUDE_DIRS}")
    set(COIN_HAS_AMD_LIBRARY_PATH "None")
    set(COIN_HAS_AMD ON)
  endif ()
endif ()

if (COIN_ENABLE_CHOLMOD)
  find_package(CHOLMOD)
  if (CHOLMOD_FOUND)
    set(COIN_HAS_CHOLMOD_INCLUDE_PATH "${CHOLMOD_INCLUDE_DIRS}")
    set(COIN_HAS_CHOLMOD_LIBRARY_PATH "None")
    set(COIN_HAS_CHOLMOD ON)
  endif ()
endif ()

if (((COIN_HAS_CHOLMOD AND NOT COIN_HAS_AMD) OR (NOT COIN_HAS_CHOLMOD AND COIN_HAS_AMD)) OR
    ((COIN_ENABLE_CHOLMOD AND NOT COIN_ENABLE_AMD) OR (NOT COIN_ENABLE_CHOLMOD AND COIN_ENABLE_AMD)))
  message(FATAL_ERROR "CHOLMOD and AMD must be both activated or both desactivated")
endif ()

# Check some directories

coin_check_and_add_include_library_path(COIN_XPRESS_DIR)
coin_check_and_add_include_library_path(COIN_CPLEX_DIR)
coin_check_and_add_include_library_path(COIN_GUROBI_DIR)
coin_check_and_add_include_library_path(COIN_MOSEK_DIR)
coin_check_and_add_include_library_path(COIN_SOPLEX_DIR)
coin_check_and_add_include_library_path(COIN_VOL_DIR)
coin_check_and_add_include_library_path(COIN_DYLP_DIR)
if (USE_COINOR_BIN)
  coin_check_and_add_include_library_path(COINOR_DIR)
endif ()

coin_check_and_add_include_path(COIN_HAS_AMD_INCLUDE_PATH)
coin_check_and_add_library_path(COIN_HAS_AMD_LIBRARY_PATH)
coin_check_and_add_include_path(COIN_HAS_CHOLMOD_INCLUDE_PATH)
coin_check_and_add_library_path(COIN_HAS_CHOLMOD_LIBRARY_PATH)
coin_check_and_add_include_path(COIN_HAS_GLPK_INCLUDE_PATH)
coin_check_and_add_library_path(COIN_HAS_GLPK_LIBRARY_PATH)
coin_check_and_add_include_path(COIN_HAS_MUMPS_INCLUDE_PATH)
coin_check_and_add_library_path(COIN_HAS_MUMPS_LIBRARY_PATH)
coin_check_and_add_include_path(COIN_HAS_WSMP_INCLUDE_PATH)
coin_check_and_add_library_path(COIN_HAS_WSMP_LIBRARY_PATH)

if (NOT "${Coin_DIR}" STREQUAL "${CMAKE_SOURCE_DIR}")
  if (NOT EXISTS "${Coin_DIR}")
    message(FATAL_ERROR "Error: Coin_DIR = ${Coin_DIR} which is not an existing directory")
  endif ()
endif ()

link_directories(${CMAKE_BINARY_DIR}/Dependencies/lib)

if (NOT "${COINOR_DIR}" STREQUAL "None")
  link_directories(${COINOR_DIR})
endif ()

#-----------------------------------------------------------------------------
# Manage compilation options
#-----------------------------------------------------------------------------

if (UNIX)
  if (COIN_COMPILE_STATIC)
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static -z muldefs")
  elseif (COIN_COMPILE_COVERAGE)
    set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} --coverage -fno-inline")
  elseif (COIN_COMPILE_PROFILE)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pg")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -pg")
  elseif (COIN_COMPILE_PROFILE_VALGRIND)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -p")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -p")
  else ()
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -z muldefs")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-deprecated -fPIC")
  endif ()
  
  if (COIN_COMPILE_LTO)
    if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Intel")
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -lto")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lto")
    endif ()
    if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -flto")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -flto")
    endif ()
  elseif (COIN_COMPILE_WHOPR)
    if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fwhopr")
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
# Manage threads include dir under Windows
#-----------------------------------------------------------------------------

if (WIN32)
  if (NOT "${COIN_THREADS_INC_PATH}" STREQUAL "None")
    include_directories(${COIN_THREADS_INC_PATH})
  endif ()
  if (NOT "${COIN_THREADS_LIB_PATH}" STREQUAL "None")
    link_directories(${COIN_THREADS_LIB_PATH})
  endif ()
endif ()

#-----------------------------------------------------------------------------
# Detect name mangling convention used between Fortran and C
#-----------------------------------------------------------------------------

if (NOT WIN32)
  #enable_language(Fortran)
  #
  #include(FortranCInterface)
  #
  #FortranCInterface_HEADER(${CMAKE_BINARY_DIR}/F77Mangle.h
  #                         MACRO_NAMESPACE "F77_"
  #               SYMBOL_NAMESPACE "F77_"
  #               SYMBOLS mysub mymod:my_sub
  #              )
  #
  #file(STRINGS ${CMAKE_BINARY_DIR}/F77Mangle.h CONTENTS REGEX "F77_GLOBAL\\(.*,.*\\) +(.*)")
  #string(REGEX MATCH "F77_GLOBAL\\(.*,.*\\) +(.*)" RESULT ${CONTENTS})
  #set(F77_FUNC "F77_FUNC(name,NAME) ${CMAKE_MATCH_1}")
  #
  #file(STRINGS ${CMAKE_BINARY_DIR}/F77Mangle.h CONTENTS REGEX "F77_GLOBAL_\\(.*,.*\\) +(.*)")
  #string(REGEX MATCH "F77_GLOBAL_\\(.*,.*\\) +(.*)" RESULT ${CONTENTS})
  #set(F77_FUNC_ "F77_FUNC_(name,NAME) ${CMAKE_MATCH_1}")
  
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

set(BuildTools_DIR ${Coin_DIR}/BuildTools)
set(CoinUtils_DIR ${Coin_DIR}/CoinUtils)
set(Osi_DIR ${Coin_DIR}/Osi)
set(Clp_DIR ${Coin_DIR}/Clp)
set(Cgl_DIR ${Coin_DIR}/Cgl)

include(CheckIncludeFile)

check_include_file("bzlib.h"     HAVE_BZLIB_H)
check_include_file("dlfcn.h"     HAVE_DLFCN_H)
check_include_file("endian.h"    HAVE_ENDIAN_H)
check_include_file("float.h"     HAVE_FLOAT_H)
check_include_file("ieeefp.h"    HAVE_IEEEFP_H)
check_include_file("inttypes.h"  HAVE_INTTYPES_H)
check_include_file("math.h"      HAVE_MATH_H)
check_include_file("memory.h"    HAVE_MEMORY_H)
check_include_file("readline/readline.h" HAVE_READLINE_READLINE_H)
check_include_file("stdint.h"    HAVE_STDINT_H)
check_include_file("stdlib.h"    HAVE_STDLIB_H)
check_include_file("strings.h"   HAVE_STRINGS_H)
check_include_file("string.h"    HAVE_STRING_H)
check_include_file("sys/stat.h"  HAVE_SYS_STAT_H)
check_include_file("sys/types.h" HAVE_SYS_TYPES_H)
check_include_file("unistd.h"    HAVE_UNISTD_H)
check_include_file("windows.h"   HAVE_WINDOWS_H)
check_include_file("zlib.h"      HAVE_ZLIB_H)
check_include_file("cmath"       HAVE_CMATH)
check_include_file("cieeefp"     HAVE_CIEEEFP)
check_include_file("cfloat"      HAVE_CFLOAT)
check_include_file("cinttypes"   HAVE_CINTTYPES)

#include(CheckCXXCompilerFlag)
#
#check_cxx_compiler_flag(-std=c++11 HAVE_STD_CPP11_FLAG)
#if (HAVE_STD_CPP11_FLAG)
#  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
#else ()
#  check_cxx_compiler_flag(-std=c++0x HAVE_STD_CPP0X_FLAG)
#  if (HAVE_STD_CPP0X_FLAG)
#    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
#  endif ()
#endif ()

#check_cxx_compiler_flag(-Qunused-arguments HAVE_QUNUSED_ARGUMENTS)
#if (HAVE_QUNUSED_ARGUMENTS)
#  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Qunused-arguments")
#endif ()

include(CheckTypeSize)

CHECK_TYPE_SIZE("int64_t"   SIZEOF_INT64_T)
CHECK_TYPE_SIZE("int"       SIZEOF_INT)
CHECK_TYPE_SIZE("int *"     SIZEOF_INT_P)
CHECK_TYPE_SIZE("long"      SIZEOF_LONG)
CHECK_TYPE_SIZE("long long" SIZEOF_LONG_LONG)

#if (SIZEOF_INT64_T EQUAL "8")
#  set(COIN_INTPTR_T "int64_t")
#  set(COIN_INT64_T  "int64_t")
#  set(COIN_UINT64_T "uint64_t")
#elseif (SIZEOF_LONG_LONG EQUAL "8")
if (SIZEOF_LONG_LONG EQUAL "8")
  set(COIN_INTPTR_T "long long")
  set(COIN_INT64_T  "long long")
  set(COIN_UINT64_T "unsigned long long")
elseif (SIZEOF_LONG EQUAL "8")
  set(COIN_INTPTR_T "long")
  set(COIN_INT64_T  "long")
  set(COIN_UINT64_T "unsigned long")
elseif (SIZEOF_INT EQUAL "8")
  set(COIN_INTPTR_T "int")
  set(COIN_INT64_T  "int")
  set(COIN_UINT64_T "unsigned int")
endif ()

# With the trunk version of Cbc, Threads and Cilk are allowed
#if (COIN_HAS_ABC AND (COINUTILS_USE_THREADS OR CBC_USE_THREADS))
#  message(FATAL_ERROR "Error: Threads and Cilk (ABC) are incompatible")
#endif ()

if ((COIN_ABC_LEVEL LESS 0) OR (COIN_ABC_LEVEL GREATER 4))
  message(FATAL_ERROR "Error: COIN_ABC_LEVEL must be between 0 and 4")
endif ()

if (WIN32)
  # From Linux endian.h
  #define __LITTLE_ENDIAN 1234
  #define __BIG_ENDIAN    4321
  # Under Windows __BYTE_ORDER is not defined and endian.h doesn't exist
  add_definitions(-D__BYTE_ORDER=1234)
endif ()

if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Intel")
  add_definitions(-DINTEL_COMPILER)
endif ()

if (COIN_HAS_ABC)
  set(CLP_HAS_ABC ${COIN_ABC_LEVEL})
  add_definitions(-DCLP_HAS_ABC=${COIN_ABC_LEVEL})
  if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Intel")
    if (WIN32)
      set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   /Qintel-extensions")
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /Qintel-extensions")
    else ()
      set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -intel-extensions ")
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -intel-extensions ")
    endif ()
  elseif ((COIN_ABC_LEVEL STREQUAL "3") OR (COIN_ABC_LEVEL STREQUAL "4"))
    # If we compile using gcc-5.0.*, we can remove the following definition
    if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
      if (CMAKE_CXX_COMPILER_VERSION VERSION_GREATER 5.0 OR CMAKE_CXX_COMPILER_VERSION VERSION_EQUAL 5.0)
        message(STATUS "gcc Version >= 5.0")
        set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -fcilkplus ")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fcilkplus ")
      else ()
        message(STATUS "gcc Version < 5.0")
        message(FATAL_ERROR "Error: gcc has no Cilk extension yet (gcc-4.9 is the first version with Cilk support")
      endif ()
    endif ()
  endif ()
endif ()

include(CheckSymbolExists)

if (HAVE_CMATH)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "cmath")
endif ()
if (HAVE_MATH_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "math.h")
endif ()
if (HAVE_CFLOAT)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "cfloat")
endif ()
if (HAVE_FLOAT_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "float.h")
endif ()
if (HAVE_CIEEEFP)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "cieeefp")
endif ()
if (HAVE_IEEEFP_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST}
                        "ieeefp.h")
endif()

CHECK_SYMBOL_EXISTS(isfinite ${TEST_INCLUDE_LIST} COIN_C_FINITE_R)
if (COIN_C_FINITE_R)
  set(COIN_C_FINITE isfinite)
endif ()
CHECK_SYMBOL_EXISTS(finite ${TEST_INCLUDE_LIST} COIN_C_FINITE_R)
if (COIN_C_FINITE_R)
  set(COIN_C_FINITE finite)
endif ()
CHECK_SYMBOL_EXISTS(_finite ${TEST_INCLUDE_LIST} COIN_C_FINITE_R)
if (COIN_C_FINITE_R)
  set(COIN_C_FINITE _finite)
endif ()

CHECK_SYMBOL_EXISTS(isnan ${TEST_INCLUDE_LIST} COIN_C_ISNAN_R)
if (COIN_C_NAN_R)
  set(COIN_C_NAN isnan)
endif ()
CHECK_SYMBOL_EXISTS(std::isnan ${TEST_INCLUDE_LIST} COIN_C_ISNAN_R)
if (COIN_C_NAN_R)
  set(COIN_C_NAN std::isnan)
endif ()
CHECK_SYMBOL_EXISTS(_isnan ${TEST_INCLUDE_LIST} COIN_C_ISNAN_R)
if (COIN_C_NAN_R)
  set(COIN_C_NAN _isnan)
endif ()
CHECK_SYMBOL_EXISTS(isnand ${TEST_INCLUDE_LIST} COIN_C_ISNAN_R)
if (COIN_C_NAN_R)
  set(COIN_C_NAN isnand)
endif ()

# HAVE_CLOCK_GETTIME
find_library(RTLIB
             NAMES rt)

if (NOT RTLIB-NOTFOUND)
  set(HAVE_CLOCK_GETTIME 1)
endif ()

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
  add_definitions(-DCOIN_FAST_CODE -DCLP_FAST_CODE -DUSE_MEMCPY -DCOIN_USE_RESTRICT -DCOIN_NOTEST_DUPLICATE)
  
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fomit-frame-pointer ")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fomit-frame-pointer ")
  
  if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Intel")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-math-errno -fp-trap=none ")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fno-math-errno -fp-trap=none ")
  endif ()

  if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -ffast-math -fno-math-errno -fno-trapping-math ")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -ffast-math -fno-math-errno -fno-trapping-math ")
  endif ()
  
endif ()

if (COINUTILS_USE_THREADS)
  set(COINUTILS_PTHREADS 1)
endif ()
if (COINUTILS_USE_MEMPOOL_OVERRIDE_NEW)
  set(COINUTILS_MEMPOOL_OVERRIDE_NEW ON)
endif ()
if (COINUTILS_USE_MEMPOOL_MAXPOOLED)
  set(COINUTILS_MEMPOOL_MAXPOOLED 4096)
else ()
  set(COINUTILS_MEMPOOL_MAXPOOLED -1)
endif ()
if (USE_OSI_XPRESS)
  set(COIN_HAS_XPR 1)
endif ()
if (USE_OSI_CPLEX)
  set(COIN_HAS_CPX 1)
endif ()
if (USE_OSI_GLPK)
  set(COIN_HAS_GLPK 1)
endif ()
if (USE_OSI_GUROBI)
  set(COIN_HAS_GRB 1)
endif ()
if (USE_OSI_MOSEK)
  set(COIN_HAS_MSK 1)
endif ()
if (USE_OSI_SOPLEX)
  set(COIN_HAS_SPX 1)
endif ()
if (USE_VOL)
  set(COIN_HAS_VOL 1)
endif ()
if (USE_DYLP)
  set(COIN_HAS_DYLP 1)
endif ()

add_definitions(-DHAVE_CONFIG_H)

#-----------------------------------------------
# Doxygen documentation
#-----------------------------------------------

set(doc_dir doc)
find_package(Doxygen)

if(DOXYGEN AND ENABLE_DOXYGEN)
  configure_file(${CMAKE_SOURCE_DIR}/Cgl/doxydoc/doxygen.conf.in       ${CMAKE_SOURCE_DIR}/Cgl/doxydoc/doxygen.conf)
  configure_file(${CMAKE_SOURCE_DIR}/doxydoc/doxygen.conf.in           ${CMAKE_SOURCE_DIR}/doxydoc/doxygen.conf)
  configure_file(${CMAKE_SOURCE_DIR}/Clp/doxydoc/doxygen.conf.in       ${CMAKE_SOURCE_DIR}/Clp/doxydoc/doxygen.conf)
  configure_file(${CMAKE_SOURCE_DIR}/CoinUtils/doxydoc/doxygen.conf.in ${CMAKE_SOURCE_DIR}/CoinUtils/doxydoc/doxygen.conf)
  configure_file(${CMAKE_SOURCE_DIR}/Osi/doxydoc/doxygen.conf.in       ${CMAKE_SOURCE_DIR}/Osi/doxydoc/doxygen.conf)

  add_custom_target(docs 
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_SOURCE_DIR}/Cgl/doxydoc/doxygen.conf
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_SOURCE_DIR}/doxydoc/doxygen.conf
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_SOURCE_DIR}/Clp/doxydoc/doxygen.conf
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_SOURCE_DIR}/CoinUtils/doxydoc/doxygen.conf
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_SOURCE_DIR}/Osi/doxydoc/doxygen.conf)
endif(DOXYGEN AND ENABLE_DOXYGEN)

subdirs(ThirdParty)

include_directories(${CMAKE_BINARY_DIR}/Dependencies/include)
link_directories(${CMAKE_BINARY_DIR}/Dependencies/lib)

include_directories(Osi/src/Osi)
include_directories(Osi/src/OsiCommonTest)

if (NOT USE_COINOR_BIN)
  if (COIN_ENABLE_DOWNLOAD_ZLIB)
    set(COINUTILS_HAS_ZLIB ON)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_BZLIB)
    set(COINUTILS_HAS_BZLIB ON)
  endif ()
  
  subdirs(CoinUtils)
  
  subdirs(Osi/Osi)
else ()
  include_directories(${COINOR_DIR}/include/coin)
endif ()

subdirs(Cgl)
subdirs(Clp)
subdirs(Osi/OsiClp) 

if (USE_OSI_XPRESS OR COMPILE_OSI_XPRESS)
  subdirs(Osi/OsiXpr) 
endif ()
if (USE_OSI_CPLEX OR COMPILE_OSI_CPLEX)
  subdirs(Osi/OsiCpx) 
endif ()
if (USE_OSI_GLPK OR COMPILE_OSI_GLPK)
  subdirs(Osi/OsiGlpk) 
endif ()
if (USE_OSI_GUROBI OR COMPILE_OSI_GUROBI)
  subdirs(Osi/OsiGrb) 
endif ()
if (USE_OSI_MOSEK OR COMPILE_OSI_MOSEK)
  subdirs(Osi/OsiMsk) 
endif ()
if (USE_OSI_SOPLEX OR COMPILE_OSI_SOPLEX)
  subdirs(Osi/OsiSpx) 
endif ()

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
  set(CPACK_NSIS_PACKAGE_NAME "Cgl ${PACKAGE_VERSION}")
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
  set(CPACK_RPM_PACKAGE_SUMMARY "Cgl is a cut library from CoinOR.")
  set(CPACK_RPM_PACKAGE_DESCRIPTION 
    "The Cgl suite includes:

    * The Clp linear solver.
    * A set of cuts for Cbc / Clp.
"
    )
endif ()

include(CPack)
include(CTest)
