cmake_minimum_required(VERSION 3.0.2)

project(Symphony)

# Symphony options
option(USE_CGL_CUTS            "Use CGL cuts" ON)
option(USE_GMPL                "Use GMPL language" OFF)
option(SENSITIVITY_ANALYSIS    "Enable sensitivity analysis" OFF)
option(ROOT_NODE_ONLY          "Root node only" OFF)
option(COMPILE_FRAC_BRANCHING  "Compile frac branching" OFF)
option(DO_TESTS                "Do tests" OFF)
option(TM_BASIS_TESTS          "TM Basis tests" OFF)
option(TRACE_PATH              "Trace PATH" OFF)
option(CHECK_CUT_VALIDITY      "Check cut validity" OFF)
option(STATISTICS              "Statistics" OFF)
option(PSEUDO_COSTS            "Pseudo costs" OFF)
option(DRAWGRAPH               "Draw graph" OFF)
option(STATICEXE               "Build a static executable" OFF)
option(SIGHANDLER              "Use a signal handler" ON)
option(SYM_WITH_APPL           "Symphony with APPL" ON)
option(SYM_COMPILE_IN_CG       "Symphony compile in CG" ON)
option(SYM_COMPILE_IN_CP       "Symphony compile in CP" ON)
option(SYM_COMPILE_IN_LP       "Symphony compile in LP" ON)
option(SYM_COMPILE_IN_TM       "Symphony compile in TM" ON)
option(SYM_COMPILE_IN_LP       "Symphony compile in LP" ON)
option(SYM_PARALLEL            "Enable parallel" OFF)
option(USE_OPENMP              "Use OpenMP" OFF)
option(USE_CL                  "Use OpenCL" OFF)

option(SYMPHONY_BUILD_EXAMPLES "Enable the building of examples" OFF)

option(COIN_HAS_READLINE       "Readline support" OFF)
option(CLP_LP_SOLVER           "Clp LP solver support" ON)
option(GLPK_LP_SOLVER          "Glpk LP solver support" OFF)
option(OSL_LP_SOLVER           "OSL LP solver support" OFF)
option(CPLEX_LP_SOLVER         "CPLEX LP solver support" OFF)
option(SOPLEX_LP_SOLVER        "SOPlex LP solver support" OFF)
option(XPRESS_LP_SOLVER        "Xpress LP solver support" OFF)

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

option(COIN_HAS_MKL "Use Intel MKL library (requires Intel compiler)" OFF)

# Cgl options
set(COIN_CGL_CHECKLEVEL "0" CACHE STRING "The debug sanity check level of Cgl (0 if no test)")
set(COIN_CGL_VERBOSITY  "0" CACHE STRING "The debug verbosity level of Cgl (0 if no output)")

# Osi options
set(COIN_OSI_CHECKLEVEL "0" CACHE STRING "The debug sanity check level of Osi (0 if no test)")
set(COIN_OSI_VERBOSITY  "0" CACHE STRING "The debug verbosity level of Osi (0 if no output)")
option(USE_OSI_CLP    "Use Xpress solver" ON)
option(USE_OSI_XPRESS "Use Xpress solver" OFF)
option(USE_OSI_CPLEX  "Use Cplex solver"  OFF)
option(USE_OSI_GLPK   "Use GLPK solver"   OFF)
option(USE_OSI_GUROBI "Use GUROBI solver" OFF)
option(USE_OSI_MOSEK  "Use Mosek solver"  OFF)
option(USE_OSI_SOPLEX "Use Soplex solver" OFF)
option(COMPILE_OSI_CLP    "Compile the OSI Clp solver"    OFF)
option(COMPILE_OSI_XPRESS "Compile the OSI Xpress solver" OFF)
option(COMPILE_OSI_CPLEX  "Compile the OSI Cplex solver"  OFF)
option(COMPILE_OSI_GLPK   "Compile the OSI GLPK solver"   OFF)
option(COMPILE_OSI_GUROBI "Compile the OSI GUROBI solver" OFF)
option(COMPILE_OSI_MOSEK  "Compile the OSI Mosek solver"  OFF)
option(COMPILE_OSI_SOPLEX "Compile the OSI Soplex solver" OFF)

# CoinUtils options
option(COINUTILS_USE_THREADS              "enables compilation of thread aware CoinUtils (mempool so far)" OFF)
option(COINUTILS_USE_MEMPOOL_OVERRIDE_NEW "enables the CoinUtils mempool to override global new/delete" OFF)
option(COINUTILS_USE_MEMPOOL_MAXPOOLED    "Specify the default maximum memory allocation size that is served by the memory pool. If negative (or 'no') then the memory pool is disabled completely. Otherwise its value can be overridden at runtime using the COINUTILS_MEMPOOL_MAXPOOLED environment variable." OFF)
option(COINUTILS_HAS_ZLIB  "CoinUtils uses Zlib" OFF)
option(COINUTILS_HAS_BZLIB "CoinUtils uses BZlib" OFF)
option(COIN_HAS_LAPACK     "Enable the Lapack support of CoinUtils" OFF)
option(COIN_HAS_BLAS       "Enable the Blas support of CoinUtils" OFF)
option(COIN_HAS_ASL        "Enable the ASL support" OFF)
option(COIN_USE_FAST_CODE  "Use fast code for CoinUtils" OFF)

set(COIN_COINUTILS_CHECKLEVEL "0" CACHE STRING "The debug sanity check level of CoinUtils (0 if no test)")
set(COIN_COINUTILS_VERBOSITY  "0" CACHE STRING "The debug verbosity level of CoinUtils (0 if no output)")

# External solvers
option(USE_VOL        "Use Vol solver"    OFF)
option(USE_DYLP       "Use DyLP solver"   OFF)
set(COIN_XPRESS_DIR "None" CACHE PATH "The Xpress solver Path")
set(COIN_CPLEX_DIR  "None" CACHE PATH "The Cplex solver Path")
set(COIN_GUROBI_DIR "None" CACHE PATH "The GUROBI solver Path")
set(COIN_MOSEK_DIR  "None" CACHE PATH "The Mosek solver Path")
set(COIN_SOPLEX_DIR "None" CACHE PATH "The Soplex solver Path")
set(COIN_VOL_DIR    "None" CACHE PATH "The Vol solver Path")
set(COIN_DYLP_DIR   "None" CACHE PATH "The DyLP solver Path")

# Compilation options
option(ENABLE_SHARED_LIBRARIES       "Build libraries as shared libraries" OFF)
option(COIN_COMPILE_STATIC           "Activate the static linking" OFF)
option(COIN_COMPILE_COVERAGE         "Activate the code coverage compilation" OFF)
option(COIN_COMPILE_PROFILE          "Activate the code profiling compilation" OFF)
option(COIN_COMPILE_PROFILE_VALGRIND "Activate the code profiling compilation for valgrind" OFF)
option(COIN_COMPILE_LTO              "Activate the whole program optimization (using LTO)" OFF)
option(COIN_COMPILE_WHOPR            "Activate the whole program optimization (using WHOPR)" OFF)
option(COIN_COMPILE_WARNINGS         "Activate a set of warning options" OFF)
option(COIN_COMPILE_CXX11            "Activate C++11 compilation" OFF)

# Set paths of source
set(Coin_DIR "${CMAKE_SOURCE_DIR}" CACHE PATH "The Clp Path")

# Compile only the main part and use an external directory to link / use includes
option(USE_COINOR_BIN "Use and external directory where the headers / libraries used are stored" OFF)
set(COINOR_DIR "None" CACHE PATH "The Path where all the used CoinOR libraries are stored")

mark_as_advanced(USE_COINOR_BIN
                 COINOR_DIR
		 COIN_HAS_READLINE
                 CLP_LP_SOLVER
                 GLPK_LP_SOLVER
                 OSL_LP_SOLVER
                 CPLEX_LP_SOLVER
                 SOPLEX_LP_SOLVER
                 XPRESS_LP_SOLVER
                 USE_CGL_CUTS
                 USE_GMPL
                 SENSITIVITY_ANALYSIS
                 ROOT_NODE_ONLY
                 COMPILE_FRAC_BRANCHING
                 DO_TESTS
                 TM_BASIS_TESTS
                 TRACE_PATH
                 CHECK_CUT_VALIDITY
                 STATISTICS
                 PSEUDO_COSTS
                 DRAWGRAPH
                 STATICEXE
                 SIGHANDLER
                 SYM_WITH_APPL
                 SYM_COMPILE_IN_CG
                 SYM_COMPILE_IN_CP
                 SYM_COMPILE_IN_LP
                 SYM_COMPILE_IN_TM
                 SYM_COMPILE_IN_LP
                 SYM_PARALLEL
                 USE_OPENMP
                 USE_CL
		 ENABLE_SHARED_LIBRARIES
                 COIN_COMPILE_STATIC
                 COIN_COMPILE_COVERAGE
                 COIN_COMPILE_PROFILE
                 COIN_COMPILE_PROFILE_VALGRIND
                 COIN_COMPILE_LTO
                 COIN_COMPILE_WHOPR
                 COIN_COMPILE_WARNINGS
                 COIN_COMPILE_CXX11
                 Coin_DIR
		 COINUTILS_USE_THREADS
                 COINUTILS_USE_MEMPOOL_OVERRIDE_NEW
                 COINUTILS_USE_MEMPOOL_MAXPOOLED
                 COINUTILS_HAS_ZLIB
                 COINUTILS_HAS_BZLIB
                 COIN_HAS_LAPACK
                 COIN_HAS_BLAS
                 COIN_HAS_ASL
                 COIN_COINUTILS_CHECKLEVEL
                 COIN_COINUTILS_VERBOSITY
		 COIN_ENABLE_AMD
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
                 COIN_CLP_VERBOSITY
                 COIN_HAS_MKL
		 COIN_CGL_CHECKLEVEL
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
include(GetAcInitVersion)

Enable_Testing ()

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

# Name of package
set(PACKAGE           "Symphony")
# Define to the address where bug reports for this package should be sent.
set(PACKAGE_BUGREPORT "bugs@coin-or.org")
# Define to the full name of this package.
set(PACKAGE_NAME      "Symphony")
# Define to the full name and version of this package.
set(PACKAGE_STRING    "Symphony")
# Define to the one symbol short name of this package.
set(PACKAGE_TARNAME   "symphony")

if (CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/symphony_binary" 
      CACHE PATH "SYMPHONY install prefix" FORCE)
endif (CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)

# Check for MKL
if ((CMAKE_CXX_COMPILER_ID STREQUAL "Intel") AND COIN_HAS_MKL)
  find_package(MKL)
  
  if (MKL_FOUND)
    message(status "MKL library found")
  else ()
    message(status "MKL library not found")
  endif ()
  
  if (HAVE_64_BIT)
    set(COIN_MKL_LIBS "mkl_intel_lp64 mkl_sequential mkl_core")
  else ()
    set(COIN_MKL_LIBS "mkl_intel_c mkl_sequential mkl_core")
  endif ()
  
  include_directories(${MKL_INCLUDE_DIRS})
  
  if (HAVE_64_BIT)
    link_directories(${MKL_ROOT}/lib/intel64)
  else ()
    link_directories(${MKL_ROOT}/lib/ia32)
  endif ()
endif ()

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

if (MINGW)
  message(STATUS "Under MinGW, we disable sighandler")
  set(SIGHANDLER OFF)
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

if (NOT Coin_DIR STREQUAL CMAKE_SOURCE_DIR)
  if (NOT EXISTS "${Coin_DIR}")
    message(FATAL_ERROR "Error: Coin_DIR = ${Coin_DIR} which is not an existing directory")
  endif ()
endif ()

link_directories(${CMAKE_BINARY_DIR}/Dependencies/lib)

if (NOT COINOR_DIR STREQUAL "None")
  link_directories(${COINOR_DIR})
endif ()

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
      set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} /GL ")
      set(CMAKE_C_FLAGS          "${CMAKE_C_FLAGS} /GL ")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /LTCG ")
    endif ()
  endif ()
endif ()

#-----------------------------------------------------------------------------
# Manage specific VS flags
#-----------------------------------------------------------------------------

if (MSVC)
  # Avoid Warning C4530 by using the flag /EHsc
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /EHsc ")
  set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS} /EHsc ")
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
else ()
  set(F77_FUNC  "F77_FUNC(name,NAME)  name##_")
  set(F77_FUNC_ "F77_FUNC_(name,NAME) name##__")
endif ()

set(F77_DUMMY_MAIN "" CACHE STRING "Define to dummy 'main' function (if any) required to link to the Fortran libraries.")
set(FC_DUMMY_MAIN  "" CACHE STRING "Define to dummy 'main' function (if any) required to link to the Fortran libraries.")
option(FC_DUMMY_MAIN_EQ_F77 "Define if F77 and FC dummy 'main' functions are identical." OFF)

if (FC_DUMMY_MAIN_EQ_F77)
  set(FC_DUMMY_MAIN "${F77_DUMMY_MAIN}")
endif ()

mark_as_advanced(F77_FUNC
                 F77_FUNC_
		 F77_DUMMY_MAIN
		 FC_DUMMY_MAIN
		 FC_DUMMY_MAIN_EQ_F77)

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

# Directories where to find the source code

set(BuildTools_DIR    ${Coin_DIR}/BuildTools)
set(CoinUtils_DIR     ${Coin_DIR}/CoinUtils)
set(CoinUtilsTest_DIR ${Coin_DIR}/CoinUtils/test)
set(Osi_DIR           ${Coin_DIR}/Osi)
set(Clp_DIR           ${Coin_DIR}/Clp)
set(Cgl_DIR           ${Coin_DIR}/Cgl)
set(SYMPHONY_DIR      ${Coin_DIR}/)

include(CheckIncludeFile)
include(VA_COPY)

check_include_file("assert.h"    HAVE_ASSERT_H)
check_include_file("bzlib.h"     HAVE_BZLIB_H)
check_include_file("ctype.h"     HAVE_CTYPE_H)
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
check_include_file("cassert"     HAVE_CASSERT)
check_include_file("cstdio"      HAVE_CSTDIO)
check_include_file("cstdlib"     HAVE_CSTDLIB)
check_include_file("cstdarg"     HAVE_CSTDARG)
check_include_file("cstddef"     HAVE_CSTDDEF)
check_include_file("cstring"     HAVE_CSTRING)
check_include_file("ctime"       HAVE_CTIME)

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

CHECK_TYPE_SIZE("int64_t"   SIZEOF_INT64_T)
CHECK_TYPE_SIZE("int"       SIZEOF_INT)
CHECK_TYPE_SIZE("int *"     SIZEOF_INT_P)
CHECK_TYPE_SIZE("long"      SIZEOF_LONG)
CHECK_TYPE_SIZE("long long" SIZEOF_LONG_LONG)

set(COIN_INTPTR_T "int")
set(COIN_INT64_T  "int")
set(COIN_UINT64_T "unsigned int")

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

include(AC_HEADER_STDC)

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

if (CMAKE_CXX_COMPILER_ID STREQUAL "Intel")
  add_definitions(-DINTEL_COMPILER)
endif ()

if (COIN_HAS_ABC)
  set(CLP_HAS_ABC ${COIN_ABC_LEVEL})
  add_definitions(-DCLP_HAS_ABC=${COIN_ABC_LEVEL})
  if (CMAKE_CXX_COMPILER_ID STREQUAL "Intel")
    if (WIN32)
      set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   /Qintel-extensions")
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /Qintel-extensions")
    else ()
      set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -intel-extensions ")
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -intel-extensions ")
    endif ()
  elseif ((COIN_ABC_LEVEL STREQUAL "3") OR (COIN_ABC_LEVEL STREQUAL "4"))
    # If we compile using gcc-5.0.*, we can remove the following definition
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
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
include(CheckFunctionExists)

check_function_exists(memcpy USE_MEMCPY)

if (USE_MEMCPY)
  add_definitions(-DUSE_MEMCPY)
endif ()

if (HAVE_CMATH)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST} "cmath")
endif ()
if (HAVE_MATH_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST} "math.h")
endif ()
if (HAVE_CFLOAT)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST} "cfloat")
endif ()
if (HAVE_FLOAT_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST} "float.h")
endif ()
if (HAVE_CIEEEFP)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST} "cieeefp")
endif ()
if (HAVE_IEEEFP_H)
  set(TEST_INCLUDE_LIST ${TEST_INCLUDE_LIST} "ieeefp.h")
endif ()

set(CMAKE_REQUIRED_LIBRARIES m)
check_symbol_exists(isfinite "${TEST_INCLUDE_LIST}" COIN_C_FINITE_R)
if (COIN_C_FINITE_R)
  set(COIN_C_FINITE isfinite)
endif ()
if (NOT COIN_C_FINITE_R)
  set(CMAKE_REQUIRED_LIBRARIES m)
  check_symbol_exists(_finite "${TEST_INCLUDE_LIST}" COIN_C_FINITE_R)
  if (COIN_C_FINITE_R)
    set(COIN_C_FINITE _finite)
  endif ()
endif ()
if (NOT COIN_C_FINITE_R)
  set(CMAKE_REQUIRED_LIBRARIES m)
  check_symbol_exists(finite "${TEST_INCLUDE_LIST}" COIN_C_FINITE_R)
  if (COIN_C_FINITE_R)
    set(COIN_C_FINITE ifinite)
  endif ()
endif ()

set(CMAKE_REQUIRED_LIBRARIES m)
check_symbol_exists(isnan "${TEST_INCLUDE_LIST}" COIN_C_ISNAN_R)
if (COIN_C_ISNAN_R)
  set(COIN_C_NAN isnan)
endif ()
if (NOT COIN_C_ISNAN_R)
  set(CMAKE_REQUIRED_LIBRARIES m)
  check_symbol_exists(std::isnan "${TEST_INCLUDE_LIST}" COIN_C_ISNAN_R)
  if (COIN_C_NAN_R)
    set(COIN_C_NAN std::isnan)
  endif ()
endif ()
if (NOT COIN_C_ISNAN_R)
  set(CMAKE_REQUIRED_LIBRARIES m)
  check_symbol_exists(_isnan "${TEST_INCLUDE_LIST}" COIN_C_ISNAN_R)
  if (COIN_C_NAN_R)
    set(COIN_C_NAN _isnan)
  endif ()
endif ()
if (NOT COIN_C_ISNAN_R)
  set(CMAKE_REQUIRED_LIBRARIES m)
  check_symbol_exists(isnand "${TEST_INCLUDE_LIST}" COIN_C_ISNAN_R)
  if (COIN_C_NAN_R)
    set(COIN_C_NAN isnand)
  endif ()
endif ()

check_symbol_exists(clock_gettime sys/time.h HAVE_CLOCK_GETTIME)
check_symbol_exists(gettimeofday  sys/time.h HAVE_GETTIMEOFDAY)

include(CheckFunctionExists)

check_function_exists(srandom HAS_SRANDOM)
check_function_exists(random  HAS_RANDOM)

if (COIN_USE_FAST_CODE)
  add_definitions(-DCOIN_FAST_CODE -DCLP_FAST_CODE -DCOIN_USE_RESTRICT -DCOIN_NOTEST_DUPLICATE)
  
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

if (USE_OSI_CLP)
  set(COIN_HAS_CLP 1)
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
  add_definitions(-DCOIN_HAS_VOL)
endif ()
if (USE_DYLP)
  set(COIN_HAS_DYLP 1)
  add_definitions(-DCOIN_HAS_DYLP)
endif ()

add_definitions(-DHAVE_CONFIG_H)

#-----------------------------------------------
# Doxygen documentation
#-----------------------------------------------

set(doc_dir doc)
find_package(Doxygen)

if (DOXYGEN AND ENABLE_DOXYGEN)
  configure_file(${CMAKE_SOURCE_DIR}/Clp/doxydoc/doxygen.conf.in       ${CMAKE_BINARY_DIR}/Clp/doxydoc/doxygen.conf)
  configure_file(${CMAKE_SOURCE_DIR}/Cgl/doxydoc/doxygen.conf.in       ${CMAKE_BINARY_DIR}/Cgl/doxydoc/doxygen.conf)
  configure_file(${CMAKE_SOURCE_DIR}/CoinUtils/doxydoc/doxygen.conf.in ${CMAKE_BINARY_DIR}/CoinUtils/doxydoc/doxygen.conf)
  configure_file(${CMAKE_SOURCE_DIR}/Osi/doxydoc/doxygen.conf.in       ${CMAKE_BINARY_DIR}/Osi/doxydoc/doxygen.conf)

  add_custom_target(docs 
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_BINARY_DIR}/Clp/doxydoc/doxygen.conf
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_BINARY_DIR}/Cgl/doxydoc/doxygen.conf
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_BINARY_DIR}/CoinUtils/doxydoc/doxygen.conf
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_BINARY_DIR}/Osi/doxydoc/doxygen.conf)
endif ()

if (USE_OPENMP)
  find_package(OpenMP)
  if (OPENMP_FOUND)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
    set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   ${OpenMP_C_FLAGS}")
  endif ()
endif ()

# Set some definitions
if (CLP_LP_SOLVER)
  add_definitions(-D__OSI_CLP__)
endif ()

if (CPLEX_LP_SOLVER)
  add_definitions(-D__OSI_CPLEX__)
endif ()

if (GLPK_LP_SOLVER)
  add_definitions(-D__OSI_GLPK__)
else ()
  if (USE_GMPL)
    add_definitions(-DUSE_GLPMPL)
  endif ()
endif ()

if (SOPLEX_LP_SOLVER)
  add_definitions(-D__OSI_SOPLEX__)
endif ()

if (XPRESS_LP_SOLVER)
  add_definitions(-D__OSI_XPRESS__)
endif ()

# Additional Definitions

if (COIN_HAS_READLINE)
  add_definitions(-DHAS_READLINE)
endif ()

if (SENSITIVITY_ANALYSIS)
  add_definitions(-DSENSITIVITY_ANALYSIS)
endif ()

if (USE_CGL_CUTS)
  add_definitions(-DUSE_CGL_CUTS)
endif ()

if (ROOT_NODE_ONLY)
  add_definitions(-DROOT_NODE_ONLY)
endif ()

if (COMPILE_FRAC_BRANCHING)
  add_definitions(-DCOMPILE_FRAC_BRANCHING)
endif ()

if (DO_TESTS)
  add_definitions(-DDO_TESTS)
endif ()

if (TM_BASIS_TESTS)
  add_definitions(-DTM_BASIS_TESTS)
endif ()

if (TRACE_PATH)
  add_definitions(-DTRACE_PATH)
endif ()

if (CHECK_CUT_VALIDITY)
  add_definitions(-DCHECK_CUT_VALIDITY)
endif ()

if (STATISTICS)
  add_definitions(-DSTATISTICS)
endif ()

if (PSEUDO_COSTS)
  add_definitions(-DPSEUDO_COSTS)
endif ()

if (SIGHANDLER)
  add_definitions(-DSIGHANDLER)
endif ()

if (UNIX)
  add_definitions(-D__LINUX)
elseif (DARWIN)
  add_definitions(-D__DARWIN)
else ()
  add_definitions(-D__)
endif ()

if (SYM_PARALLEL)
  #PCPPFLAGS += $(AM_CPPFLAGS) $(SYMPDEFS) -I`$(CYGPATH_W) $(PVM_ROOT)/include`
  #PLDADD += $(LDADD) -lgpvm3 -lpvm3
  #APPLPCPPFLAGS += $(PCPPFLAGS) -DUSE_SYM_APPLICATION
endif ()

#add_definitions(-DUSE_SYM_APPLICATION) # only for libSymAppl
#add_definitions(-D_OPENMP)
if (MINGW)
  add_definitions(-D__NONE__)
else ()
  add_definitions(-DHAS_RANDOM -DHAS_SRANDOM -D__NONE__)
endif ()

subdirs(ThirdParty)

include_directories(${CMAKE_BINARY_DIR}/Dependencies/include)
link_directories(${CMAKE_BINARY_DIR}/Dependencies/lib)

include_directories(${CMAKE_BINARY_DIR}/SYMPHONY/include)

include_directories(${SYMPHONY_DIR}/SYMPHONY/include)

include_directories(${CoinUtils_DIR}/src)

include_directories(${Clp_DIR}/src)
include_directories(${Clp_DIR}/src/OsiClp)

include_directories(${Cgl_DIR}/src)
include_directories(${Cgl_DIR}/src/CglAllDifferent)
include_directories(${Cgl_DIR}/src/CglKnapsackCover)
include_directories(${Cgl_DIR}/src/CglRedSplit2)
include_directories(${Cgl_DIR}/src/CglZeroHalf)
include_directories(${Cgl_DIR}/src/CglClique)
include_directories(${Cgl_DIR}/src/CglDuplicateRow)
include_directories(${Cgl_DIR}/src/CglLandP)
include_directories(${Cgl_DIR}/src/CglMixedIntegerRounding)
include_directories(${Cgl_DIR}/src/CglResidualCapacity)
include_directories(${Cgl_DIR}/src/CglFlowCover)
include_directories(${Cgl_DIR}/src/CglLiftAndProject)
include_directories(${Cgl_DIR}/src/CglMixedIntegerRounding2)
include_directories(${Cgl_DIR}/src/CglPreProcess)
include_directories(${Cgl_DIR}/src/CglSimpleRounding)
include_directories(${Cgl_DIR}/src/CglGMI)
include_directories(${Cgl_DIR}/src/CglOddHole)
include_directories(${Cgl_DIR}/src/CglProbing)
include_directories(${Cgl_DIR}/src/CglGomory)
include_directories(${Cgl_DIR}/src/CglRedSplit)
include_directories(${Cgl_DIR}/src/CglTwomir)

include_directories(${Osi_DIR}/src/Osi)
include_directories(${SYMPHONY_DIR}/src/OsiSym)

include_directories(${Osi_DIR}/src/OsiCommonTest)

if (NOT USE_COINOR_BIN)
  if (COIN_ENABLE_DOWNLOAD_ZLIB)
    set(COINUTILS_HAS_ZLIB ON)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_BZLIB)
    set(COINUTILS_HAS_BZLIB ON)
  endif ()
  
  subdirs(CoinUtils)
  subdirs(Cgl)
  subdirs(Clp)
  subdirs(Osi/Osi)
  
  if (USE_OSI_CLP OR COMPILE_OSI_CLP)
    subdirs(Osi/OsiClp) 
  endif ()
else ()
  include_directories(${COINOR_DIR}/include/coin)
endif ()

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

subdirs(SYMPHONY)

#
# Packaging
#

set(CPACK_PACKAGE_NAME      "${PACKAGE_NAME}")
set(CPACK_PACKAGE_FILE_NAME "${CPACK_PACKAGE_NAME}-${SYMPHONY_VERSION}-${CMAKE_SYSTEM_NAME}")

message(STATUS "Package filename: ${CPACK_PACKAGE_FILE_NAME}")

set(CPACK_PACKAGE_INSTALL_DIRECTORY "${PACKAGE_NAME}")
set(CPACK_PACKAGE_VERSION "${SYMPHONY_VERSION}")

set(CPACK_PACKAGE_RELOCATABLE TRUE)

if (WIN32)
  set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "${CPACK_PACKAGE_NAME}")
  set(CPACK_MONOLITHIC_INSTALL ON)
  set(CPACK_NSIS_CONTACT "${PACKAGE_BUGREPORT}")
  set(CPACK_NSIS_MODIFY_PATH ON)
  set(CPACK_NSIS_PACKAGE_NAME "SYMPHONY ${SYMPHONY_VERSION}")
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
  set(CPACK_RPM_PACKAGE_SUMMARY "SYMPHONY is MIP solver library from CoinOR.")
  set(CPACK_RPM_PACKAGE_DESCRIPTION 
    "The SYMPHONY suite includes:

    * A set of linear solvers to manager the resolution of various problems.
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

COLOR_MESSAGE("${color_green}************************")
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
