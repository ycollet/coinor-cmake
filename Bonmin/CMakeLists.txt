cmake_minimum_required(VERSION 3.0.2)

project(Bonmin)

# Bonmin options
set(COIN_BONMIN_CHECKLEVEL "0" CACHE STRING "The debug sanity check level of Bonmin (0 if no test)")
set(COIN_BONMIN_VERBOSITY  "0" CACHE STRING "The debug verbosity level of Bonmin (0 if no output)")

# TODO
# COIN_HAS_FILTERSQP

option(IPOPT_HAS_AMPL                   "Enable Ampl interface" OFF)
option(IPOPT_HAS_PARDISO                "Enable Pardiso solver" OFF)
option(IPOPT_HAS_HSL                    "Enable HSL interface"  OFF)
option(IPOPT_HAS_WSMP                   "Enable WSMP solver"    OFF)
option(IPOPT_HAS_MUMPS                  "Enable Mumps solver"   OFF)
option(IPOPT_BUILD_EXAMPLES             "Enable the building of examples" OFF)
option(IPOPT_ENABLE_LINEARSOLVERLOADER  "Build the dynamic linear solver loader" ON)
option(IPOPT_ENABLE_INEXACT             "Build the inexact solver" ON)
option(IPOPT_HAS_PARDISO_MKL            "Enable if you are using Pardiso from MKL" OFF)
option(IPOPT_HAS_PARDISO_OLDINTERFACE   "Enable if you are not using at least a 4.0 version of Pardiso" OFF)
option(IPOPT_HAS_PARDISO_PARALLEL       "Enable if you are using the parallel version of Pardiso" OFF)
option(IPOPT_ENABLE_LINEARSOLVERLOADER  "Build the dynamic linear solver loader" ON)
option(IPOPT_ENABLE_PARDISOSOLVERLOADER "Build the dynamic pardiso solver loader" OFF)
option(IPOPT_ENABLE_INEXACT             "Build the inexact solver" ON)

set(IPOPT_PARDISO_LIBNAME "mkl_sequential"     CACHE STRING "The name of the MKL library to use")
set(IPOPT_PARDISO_PATH    "/opt/intel/mkl/lib" CACHE STRING "The path to the MKL library")

set(COIN_IPOPT_CHECKLEVEL "0" CACHE STRING "The debug sanity check level of IpOpt (0 if no test)")
set(COIN_IPOPT_VERBOSITY  "0" CACHE STRING "The debug verbosity level of IpOpt (0 if no output)")

option(COIN_ENABLE_READLINE "Enable the use of the readline library" OFF)
option(COIN_ENABLE_NEW_DIR_STRUCT "Enable the use of the CoinOR directory structure" OFF)

# Cbc options
option(CBC_USE_THREADS "Enable the compilation of the SMP version of CBC" OFF)
set(CBC_DEFAULT_SOLVER "clp" CACHE STRING "The name of the default solver to be used in cbc-generic (clp, dylp, glpk, soplex)")
set(COIN_CBC_CHECKLEVEL "0" CACHE STRING "The debug sanity check level of Cbc (0 if no test)")
set(COIN_CBC_VERBOSITY  "0" CACHE STRING "The debug verbosity level of Cbc (0 if no output)")

# Clp options
option(COIN_HAS_ABC "Use the Aboca solver" OFF)
set(COIN_ABC_LEVEL      "0" CACHE STRING "Use the Aboca solver (1, 2, 3, 4) - 0, Aboca solver is not used")
set(COIN_CLP_CHECKLEVEL "0" CACHE STRING "The debug sanity check level of Clp (0 if no test)")
set(COIN_CLP_VERBOSITY  "0" CACHE STRING "The debug verbosity level of Clp (0 if no output)")

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

option(COIN_HAS_MKL "Use Intel MKL library (requires Intel compiler)" OFF)

# Cgl options
set(COIN_CGL_CHECKLEVEL "0" CACHE STRING "The debug sanity check level of Cgl (0 if no test)")
set(COIN_CGL_VERBOSITY  "0" CACHE STRING "The debug verbosity level of Cgl (0 if no output)")

# Osi options
option(USE_OSI_XPRESS "Use Xpress solver" OFF)
option(USE_OSI_CPLEX  "Use Cplex solver"  OFF)
option(USE_OSI_GLPK   "Use GLPK solver"   OFF)
option(USE_OSI_GUROBI "Use GUROBI solver" OFF)
option(USE_OSI_MOSEK  "Use Mosek solver"  OFF)
option(USE_OSI_SOPLEX "Use Soplex solver" OFF)
option(COMPILE_OSI_XPRESS "Compile the OSI Xpress solver" OFF)
option(COMPILE_OSI_CPLEX  "Compile the OSI Cplex solver"  OFF)
option(COMPILE_OSI_GLPK   "Compile the OSI GLPK solver"   OFF)
option(COMPILE_OSI_GUROBI "Compile the OSI GUROBI solver" OFF)
option(COMPILE_OSI_MOSEK  "Compile the OSI Mosek solver"  OFF)
option(COMPILE_OSI_SOPLEX "Compile the OSI Soplex solver" OFF)

set(COIN_OSI_CHECKLEVEL "0" CACHE STRING "The debug sanity check level of Osi (0 if no test)")
set(COIN_OSI_VERBOSITY  "0" CACHE STRING "The debug verbosity level of Osi (0 if no output)")

# CoinUtils options
option(COINUTILS_USE_THREADS              "enables compilation of thread aware CoinUtils (mempool so far)" OFF)
option(COINUTILS_USE_MEMPOOL_OVERRIDE_NEW "enables the CoinUtils mempool to override global new/delete" OFF)
option(COINUTILS_USE_MEMPOOL_MAXPOOLED    "Specify the default maximum memory allocation size that is served by the memory pool. If negative (or 'no') then the memory pool is disabled completely. Otherwise its value can be overridden at runtime using the COINUTILS_MEMPOOL_MAXPOOLED environment variable." OFF)
option(COINUTILS_HAS_ZLIB  "CoinUtils uses Zlib" OFF)
option(COINUTILS_HAS_BZLIB "CoinUtils uses BZlib" OFF)
option(COIN_HAS_LAPACK     "Enable the Lapack support of CoinUtils" OFF)
option(COIN_HAS_BLAS       "Enable the Blas support of CoinUtils" OFF)
option(COIN_HAS_ASL        "Enable the ASL support" OFF)
option(COIN_USE_FAST_CODE  "Use fast code for CoinUtils and Clp" OFF)

set(COIN_COINUTILS_CHECKLEVEL "0" CACHE STRING "The debug sanity check level of CoinUtils (0 if no test)")
set(COIN_COINUTILS_VERBOSITY  "0" CACHE STRING "The debug verbosity level of CoinUtils (0 if no output)")

# Threads path
set(COIN_THREADS_INC_PATH "None" CACHE PATH "The path to the PThreads header files")
set(COIN_THREADS_LIB_PATH "None" CACHE PATH "The path to the PThreads library files")

# External solvers
option(USE_VOL        "Use Vol solver"    OFF)
option(USE_DYLP       "Use DyLP solver"   OFF)
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

# Compilation options
option(ENABLE_SHARED_LIBRARIES       "Build libraries as shared libraries" OFF)
option(COIN_COMPILE_STATIC           "Activate the static linking" OFF)
option(COIN_COMPILE_COVERAGE         "Activate the code coverage compilation" OFF)
option(COIN_COMPILE_PROFILE          "Activate the code profiling compilation" OFF)
option(COIN_COMPILE_PROFILE_VALGRIND "Activate the code profiling compilation for valgrind" OFF)
option(COIN_COMPILE_LTO              "Activate the whole program optimization" OFF)
option(COIN_COMPILE_WARNINGS         "Activate a set of warning options" OFF)
option(COIN_COMPILE_CXX11            "Activate C++11 compilation" OFF)
option(COIN_TESTS_DISABLE_TIMEOUT    "Disable the timeout of the tests" OFF)

option(USE_PROCESSOR_EXTENSIONS      "Use sse / mmx / avx extensions during compilation" OFF)
option(COIN_ENABLE_COMPAT            "Enable libc compatibility" OFF)

# Set paths of source
set(COIN_DIR "${CMAKE_CURRENT_SOURCE_DIR}" CACHE PATH "The Bonmin Path")

mark_as_advanced(ENABLE_SHARED_LIBRARIES
                 COIN_ENABLE_READLINE
                 COIN_COMPILE_STATIC
                 COIN_COMPILE_COVERAGE
                 COIN_COMPILE_PROFILE
                 COIN_COMPILE_PROFILE_VALGRIND
                 COIN_COMPILE_LTO
                 COIN_COMPILE_WARNINGS
                 COIN_COMPILE_CXX11
		 COIN_TESTS_DISABLE_TIMEOUT
                 COIN_DIR
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
		 IPOPT_HAS_PARDISO_MKL
		 IPOPT_HAS_PARDISO_OLDINTERFACE
		 IPOPT_HAS_PARDISO_PARALLEL
                 COIN_HAS_ABC
                 COIN_ABC_LEVEL
                 COIN_CLP_CHECKLEVEL
                 COIN_CLP_VERBOSITY
                 COIN_HAS_MKL
                 COIN_THREADS_INC_PATH
                 COIN_THREADS_LIB_PATH
                 USE_COINOR_BIN
                 COINOR_DIR
                 USE_PROCESSOR_EXTENSIONS
                 COIN_CGL_CHECKLEVEL
                 COIN_CGL_VERBOSITY
                 CBC_USE_THREADS
                 CBC_DEFAULT_SOLVER
                 COIN_CBC_CHECKLEVEL
                 COIN_CBC_VERBOSITY
                 COIN_OSI_CHECKLEVEL
                 COIN_OSI_VERBOSITY
                 COIN_USE_FAST_CODE)

# Set paths for binary and library generation inside the build directory:
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH}
                      ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

include(coin-macros)
include(GetAcInitVersion)
include(CheckCLinkerFlag)

Enable_Testing ()

#------------------------------------------------------------
# Check options
#------------------------------------------------------------

if (IPOPT_ENABLE_INEXACT AND NOT (IPOPT_HAS_PARDISO OR IPOPT_HAS_PARDISO_MKL OR IPOPT_HAS_PARDISO_OLDINTERFACE OR IPOPT_HAS_PARDISO_PARALLEL))
  message(FATAL_ERROR "Error: Inexact solver is only available through MKL. Please activate the MKL")
endif ()

#------------------------------------------------------------
# Detect 64 bits
#------------------------------------------------------------

if (CMAKE_SIZEOF_VOID_P EQUAL 4)
  set(HAVE_64_BIT 0)
else ()
  set(HAVE_64_BIT 1)
endif ()

# Various definitions
set(COIN_HAS_CGL 1) # Set this to 1 if cgl is compiled
set(COIN_HAS_CLP 1) # Set this to 1 if clp is compiled

# Name of package
set(PACKAGE           "Bonmin")
# Define to the address where bug reports for this package should be sent.
set(PACKAGE_BUGREPORT "bugs@coin-or.org")
# Define to the full name of this package.
set(PACKAGE_NAME      "Bonmin")
# Define to the full name and version of this package.
set(PACKAGE_STRING    "Bonmin")
# Define to the one symbol short name of this package.
set(PACKAGE_TARNAME   "bonmin")

if (CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/bonmin_binary" 
      CACHE PATH "Bonmin install prefix" FORCE)
endif ()

include(CheckCCompilerFlag)
if (COIN_COMPILE_LTO)
  if (NOT CMAKE_VERSION VERSION_LESS "3.9")
    cmake_policy(SET CMP0069 NEW)
    include(CheckIPOSupported)
    check_ipo_supported()
  endif ()
endif ()

if (COIN_ENABLE_COMPAT)
  # Disable extra stdc++ symbols (@GLIBCXX_3.4.21)
  add_definitions(-D_GLIBCXX_USE_CXX11_ABI=0)
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -include ${CMAKE_CURRENT_SOURCE_DIR}/cmake/compatibility.h")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -include ${CMAKE_CURRENT_SOURCE_DIR}/cmake/compatibility.h")
endif ()

# Desactivate some relocation types for portability
if (UNIX)
  check_c_compiler_flag("-Wa,-mrelax-relocations=no" HAVE_RELAX_RELOC_FLAG)
  if (HAVE_RELAX_RELOC_FLAG)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wa,-mrelax-relocations=no")
  endif ()
endif ()

# Check for readline
set(COIN_HAS_READLINE "OFF")
if (COIN_ENABLE_READLINE)
  find_package(Readline)
  if (READLINE_FOUND)
    set(COIN_HAS_READLINE "ON")
    
    include_directories(${READLINE_INCLUDE_DIR})
  endif ()
endif ()

if (USE_PROCESSOR_EXTENSIONS)
  # Check for SSE* and AVX*
  find_package(SSE)
  if (MMX_FOUND OR
      SSE2_FOUND OR SSE3_FOUND OR SSSE3_FOUND OR SSE4_1_FOUND OR SSE4_2_FOUND OR
      AVX_FOUND OR AVX2_FOUND)
    set(CMAKE_C_FLAGS       "${CMAKE_C_FLAGS} ${SSE_COMPILER_FLAGS}")
    set(CMAKE_CXX_FLAGS     "${CMAKE_CXX_FLAGS} ${SSE_COMPILER_FLAGS}")
    set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} ${SSE_COMPILER_FLAGS}")
  endif ()
endif ()

# Check for MKL
if (COIN_HAS_MKL)
  find_package(MKL)
  
  if (MKL_FOUND)
    message(STATUS "MKL library found")
  else ()
    message(STATUS "MKL library not found")
  endif ()
  
  # Copy libiomp5md.dll in the build directory
  if (WIN32)
    if (HAVE_64_BIT)
      set(MKL_DLL_DIR ${MKL_ROOT}/bin/intel64)
    else ()
      set(MKL_DLL_DIR ${MKL_ROOT}/bin/ia32)
    endif ()
    
    execute_process(COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_BINARY_DIR}/bin/
                    COMMAND ${CMAKE_COMMAND} -E copy ${MKL_DLL_DIR}/libiomp5md.dll ${CMAKE_BINARY_DIR}/bin/
                    COMMAND ${CMAKE_COMMAND} -E echo "Copying ${MKL_DLL_DIR}/libiomp5md.dll into ${CMAKE_BINARY_DIR}/bin/")
  endif ()
  
  set(COIN_MKL_LIBS "${MKL_LIBRARIES}")
  if (WIN32)
    set(COIN_MKL_LIBS ${COIN_MKL_LIBS} mkl_intel_thread libiomp5md)
  else ()
    set(COIN_MKL_LIBS ${COIN_MKL_LIBS} mkl_gnu_thread gomp dl)
  endif ()
  
  include_directories(${MKL_INCLUDE_DIRS})
  
  if (HAVE_64_BIT)
    link_directories(${MKLROOT_PATH}/mkl/lib/intel64)
  else ()
    link_directories(${MKLROOT_PATH}/mkl/lib/ia32)
  endif ()
  
  set(COIN_HAS_LAPACK ON CACHE BOOL "Use Intel MKL library (requires Intel compiler)")
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

if (COIN_PERFORM_CHECKOUT)
  find_package(Subversion)
  
  exec_program(${Subversion_SVN_EXECUTABLE}
               ARGS checkout https://projects.coin-or.org/svn/Bonmin/trunk ${CMAKE_BINARY_DIR}/SVN)
  
  set(COIN_DIR ${CMAKE_BINARY_DIR}/SVN)
endif ()

if (NOT COINOR_DIR STREQUAL "None")
  link_directories(${COINOR_DIR})
endif ()

#-----------------------------------------------------------------------------
# Manage compilation options
#-----------------------------------------------------------------------------

if (UNIX)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-deprecated")
  set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -Wno-deprecated")

  if (NOT ENABLE_SHARED_LIBRARIES)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC")
    set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -fPIC")
  endif ()
  if (COIN_COMPILE_WARNINGS)
    # Try to locate unitizalized variables
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wshadow -Wuninitialized ")
    set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -Wall -Wshadow -Wmissing-prototypes -Wuninitialized ")
  endif ()
  if (COIN_COMPILE_STATIC)
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU" AND NOT APPLE)
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static")
      
      check_c_linker_flag("-z muldef" ZFLAGDEFINED)
      if (ZFLAGDEFINED)
	set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -z muldefs")
      endif ()
    endif ()
  endif ()
  if (COIN_COMPILE_COVERAGE)
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -O0 --coverage")
      set(CMAKE_C_FLAGS_DEBUG    "${CMAKE_C_FLAGS_DEBUG} -O0 --coverage")
      set(CMAKE_CXX_FLAGS_DEBUG  "${CMAKE_CXX_FLAGS_DEBUG} -O0 --coverage")
    endif ()
    if (CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fprofile-arcs -ftest-coverage -Xclang -coverage-cfg-checksum -Xclang -coverage-no-function-names-in-data -Xclang -coverage-version='408*'")
    endif ()
  endif ()
  if (COIN_COMPILE_PROFILE)
    set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -pg")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -pg")
  endif ()
  if (COIN_COMPILE_PROFILE_VALGRIND)
    set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -p")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -p")
  else ()
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU" AND NOT APPLE)
      check_c_linker_flag("-z muldef" ZFLAGDEFINED)
      if (ZFLAGDEFINED)
	set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -z muldefs")
      endif ()
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
                           SYMBOL_NAMESPACE "F77_")
  
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

# Manage coverage via lcov automatically

if (COIN_COMPILE_COVERAGE AND NOT ((CMAKE_BUILD_TYPE STREQUAL "DEBUG") OR (CMAKE_BUILD_TYPE STREQUAL "RELWITHDEBINFO")))
  message(STATUS "Warning: to enable coverage, you must compile in DEBUG ou RELWITHDEBINFO mode")
endif ()

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
                    COMMAND ${LCOV_PATH} --directory ${CMAKE_CURRENT_SOURCE_DIR} --zerocounters
                    COMMAND ${LCOV_PATH} --capture --initial --directory ${CMAKE_CURRENT_SOURCE_DIR} --output-file ${CMAKE_BINARY_DIR}/coverage.info
                    COMMAND ${CMAKE_COMMAND} -E chdir ${CMAKE_BINARY_DIR} ${CMAKE_CTEST_COMMAND} -LE "(LONG|FAIL)" -L SAMPLE
                    COMMAND ${LCOV_PATH} --capture --directory ${CMAKE_CURRENT_SOURCE_DIR} --output-file ${CMAKE_BINARY_DIR}/coverage.info
                    COMMAND ${LCOV_PATH} --remove ${CMAKE_BINARY_DIR}/coverage.info '/usr/*' '${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/*' --output-file ${CMAKE_BINARY_DIR}/coverage.info.cleaned
                    COMMAND ${GENHTML_PATH} -o ${CMAKE_BINARY_DIR}/coverage ${CMAKE_BINARY_DIR}/coverage.info.cleaned
                    COMMAND ${CMAKE_COMMAND} -E remove ${CMAKE_BINARY_DIR}/coverage.info ${CMAKE_BINARY_DIR}/coverage.info.cleaned
		    VERBATIM
                    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
                    COMMENT "Resetting code coverage counters to zero.
Processing code coverage counters and generating report.
You can zip the directory ${CMAKE_BINARY_DIR}/coverage and upload the content to a web server.")
endif ()

# End of coverage

#
# Add uninstall-target
#

add_custom_target(uninstall
                  COMMAND ${CMAKE_COMMAND} -P "${CMAKE_CURRENT_SOURCE_DIR}/cmake/uninstall.cmake")

# Directories where to find the source code
if (NOT COIN_ENABLE_NEW_DIR_STRUCT)	
  if (EXISTS ${COIN_DIR}/CoinUtils/CoinUtils)
    # Structure obtained via:
    # git clone https://github.com/coin-or/coinbrew
    # git clone https://github.com/coin-or/Bonmin
    # cd Bonmin
    # ../coinbrew/coinbrew fetch --git --main-proj=. --skip="Bonmin"
    set(BuildTools_DIR    ${COIN_DIR}/BuildTools)
    set(CoinUtils_DIR     ${COIN_DIR}/CoinUtils/CoinUtils)
    set(CoinUtilsTest_DIR ${COIN_DIR}/CoinUtils/CoinUtils/test)
    set(Osi_DIR           ${COIN_DIR}/Osi/Osi)
    set(Clp_DIR           ${COIN_DIR}/Clp/Clp)
    set(Cgl_DIR           ${COIN_DIR}/Cgl/Cgl)
    set(Cbc_DIR           ${COIN_DIR}/Cbc/Cbc)
    set(Bonmin_DIR        ${COIN_DIR}/Bonmin)
  else ()
    # Structure from subversion checkout
    set(BuildTools_DIR    ${COIN_DIR}/BuildTools)
    set(CoinUtils_DIR     ${COIN_DIR}/CoinUtils)
    set(CoinUtilsTest_DIR ${COIN_DIR}/CoinUtils/test)
    set(Osi_DIR           ${COIN_DIR}/Osi)
    set(Clp_DIR           ${COIN_DIR}/Clp)
    set(Cgl_DIR           ${COIN_DIR}/Cgl)
    set(Cbc_DIR           ${COIN_DIR}/Cbc)
    set(Bonmin_DIR        ${COIN_DIR}/Bonmin)
  endif ()
else ()
  # Structure obtained via:
  # git clone https://github.com/coin-or/coinbrew
  # coinbrew/coinbrew fetch --git --main-proj="Bonmin"
  set(BuildTools_DIR    ${COIN_DIR}/../BuildTools)
  set(CoinUtils_DIR     ${COIN_DIR}/../CoinUtils/CoinUtils)
  set(CoinUtilsTest_DIR ${COIN_DIR}/../CoinUtils/CoinUtils/test)
  set(Osi_DIR           ${COIN_DIR}/../Osi/Osi)
  set(Clp_DIR           ${COIN_DIR}/../Clp/Clp)
  set(Cgl_DIR           ${COIN_DIR}/../Cgl/Cgl)
  set(Cbc_DIR           ${COIN_DIR}/../Cbc/Cbc)
  set(Bonmin_DIR        ${COIN_DIR}/Bonmin)
endif ()

include(CheckIncludeFileCXX)
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
if (COIN_ENABLE_READLINE)
  check_include_file("readline/readline.h" HAVE_READLINE_READLINE_H)
endif ()
check_include_file("stdint.h"    HAVE_STDINT_H)
check_include_file("stdlib.h"    HAVE_STDLIB_H)
check_include_file("stdio.h"     HAVE_STDIO_H)
check_include_file("stdarg.h"    HAVE_STDARG_H)
check_include_file("stddef.h"    HAVE_STDDEF_H)
check_include_file("strings.h"   HAVE_STRINGS_H)
check_include_file("string.h"    HAVE_STRING_H)
check_include_file("sys/stat.h"  HAVE_SYS_STAT_H)
check_include_file("sys/types.h" HAVE_SYS_TYPES_H)
check_include_file("time.h"      HAVE_TIME_H)
check_include_file("unistd.h"    HAVE_UNISTD_H)
check_include_file("windows.h"   HAVE_WINDOWS_H)
check_include_file("zlib.h"      HAVE_ZLIB_H)
check_include_file_cxx("cctype"    HAVE_CCTYPE)
check_include_file_cxx("cmath"     HAVE_CMATH)
check_include_file_cxx("cieeefp"   HAVE_CIEEEFP)
check_include_file_cxx("cfloat"    HAVE_CFLOAT)
check_include_file_cxx("cinttypes" HAVE_CINTTYPES)
check_include_file_cxx("cassert"   HAVE_CASSERT)
check_include_file_cxx("cstdio"    HAVE_CSTDIO)
check_include_file_cxx("cstdlib"   HAVE_CSTDLIB)
check_include_file_cxx("cstdarg"   HAVE_CSTDARG)
check_include_file_cxx("cstddef"   HAVE_CSTDDEF)
check_include_file_cxx("cstring"   HAVE_CSTRING)
check_include_file_cxx("ctime"     HAVE_CTIME)

string(SUBSTRING ${CMAKE_SHARED_LIBRARY_SUFFIX} 1 -1 SHAREDLIBEXT)

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

if (UNIX)
  if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU" AND NOT APPLE)
    check_cxx_compiler_flag(-Wno-unused-local-typedefs GCC_HAS_TYPEDEFS)
    if (GCC_HAS_TYPEDEFS)
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-unused-local-typedefs")
    endif ()
  endif ()
  
  if (NOT APPLE)
    check_cxx_compiler_flag(-Wno-narrowing GCC_HAS_NARROWING)
    if (GCC_HAS_NARROWING)
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-narrowing")
      set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -Wno-narrowing")
    endif ()
  endif ()
endif ()

include(CheckTypeSize)

check_type_size("int64_t"   SIZEOF_INT64_T)
check_type_size("int"       SIZEOF_INT)
check_type_size("int *"     SIZEOF_INT_P)
check_type_size("long"      SIZEOF_LONG)
check_type_size("long long" SIZEOF_LONG_LONG)

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

if (("${MSVC_VERSION}" STREQUAL "1900") OR ("${MSVC_VERSION}" STREQUAL "1910"))
  add_definitions(/DHAVE_SNPRINTF /DHAVE_STRUCT_TIMESPEC)
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
      if ((CMAKE_CXX_COMPILER_VERSION VERSION_GREATER 5.0 OR CMAKE_CXX_COMPILER_VERSION VERSION_EQUAL 5.0) OR
	  (CMAKE_CXX_COMPILER_VERSION VERSION_LESS 8.0 OR CMAKE_CXX_COMPILER_VERSION VERSION_EQUAL 8.0))
	# cilkplus is to be removed from gcc starting from version 8
        message(STATUS "gcc Version >= 5.0")
        set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -fcilkplus ")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fcilkplus ")
      else ()
        message(STATUS "gcc Version < 5.0 or Version > 8.0")
        message(FATAL_ERROR "Error: gcc has no Cilk extension yet (gcc-4.9 is the first version with Cilk support)")
      endif ()
    endif ()
  endif ()
endif ()

include(CheckSymbolExists)
include(CheckCXXSymbolExists)
include(CheckFunctionExists)

check_function_exists(memcpy USE_MEMCPY)

if (USE_MEMCPY)
  add_definitions(-DUSE_MEMCPY)
endif ()

if (NOT WIN32)
  set(CMAKE_REQUIRED_LIBRARIES m)
else ()
  set(CMAKE_REQUIRED_LIBRARIES )
endif ()
check_cxx_symbol_exists(std::isfinite "cmath" COIN_C_FINITE_R)
if (COIN_C_FINITE_R)
  set(COIN_C_FINITE std::isfinite)
endif ()
if (NOT COIN_C_FINITE_R)
  check_symbol_exists(isfinite "math.h" COIN_C_FINITE_R)
  if (COIN_C_FINITE_R)
    set(COIN_C_FINITE isfinite)
  endif ()
endif ()
if (NOT COIN_C_FINITE_R)
  check_symbol_exists(_finite "math.h" COIN_C_FINITE_R)
  if (COIN_C_FINITE_R)
    set(COIN_C_FINITE _finite)
  endif ()
endif ()
if (NOT COIN_C_FINITE_R)
  check_symbol_exists(finite "math.h" COIN_C_FINITE_R)
  if (COIN_C_FINITE_R)
    set(COIN_C_FINITE finite)
  endif ()
endif ()

check_cxx_symbol_exists(std::isnan "cmath" COIN_C_ISNAN_R)
if (COIN_C_ISNAN_R)
  set(COIN_C_ISNAN std::isnan)
endif ()
if (NOT COIN_C_ISNAN_R)
  check_symbol_exists(isnan "math.h" COIN_C_ISNAN_R)
  if (COIN_C_ISNAN_R)
    set(COIN_C_NAN isnan)
  endif ()
endif ()
if (NOT COIN_C_ISNAN_R)
  check_symbol_exists(_isnan "math.h" COIN_C_ISNAN_R)
  if (COIN_C_NAN_R)
    set(COIN_C_NAN _isnan)
  endif ()
endif ()
if (NOT COIN_C_ISNAN_R)
  check_symbol_exists(isnand "ieeefp.h" COIN_C_ISNAN_R)
  if (COIN_C_NAN_R)
    set(COIN_C_NAN isnand)
  endif ()
endif ()

set(CMAKE_REQUIRED_LIBRARIES )

check_symbol_exists(clock_gettime time.h     HAVE_CLOCK_GETTIME)
check_symbol_exists(gettimeofday  sys/time.h HAVE_GETTIMEOFDAY)

check_function_exists(dran48     HAVE_DRAND48)
check_function_exists(rand       HAVE_RAND)
check_function_exists(snprintf   HAVE_SNPRINTF)
check_function_exists(std::rand  HAVE_STD__RAND)
check_function_exists(va_copy    HAVE_VA_COPY)
check_function_exists(vsnprintf  HAVE_VSNPRINTF)
check_function_exists(_snprintf  HAVE__SNPRINTF)
check_function_exists(_vsnprintf HAVE__VSNPRINTF)

if (WIN32)
  # snprintf not correctly detected under Visual Studio.
  # Hack: we just activate snprintf under Windows. 
  # TO BE FIXED
  set(HAVE_STDIO_H    1)
  set(HAVE_SNPRINTF   1)
  set(HAVE__SNPRINTF  1)
  set(HAVE_VSNPRINTF  1)
  set(HAVE__VSNPRINTF 1)
  set(HAVE_VA_COPY    1)
endif ()

if (COIN_USE_FAST_CODE)
  add_definitions(-DCOIN_FAST_CODE -DCLP_FAST_CODE -DCOIN_USE_RESTRICT -DCOIN_NOTEST_DUPLICATE)
  
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fomit-frame-pointer ")
  set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -fomit-frame-pointer ")
  
  if (CMAKE_CXX_COMPILER_ID STREQUAL "Intel")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-math-errno -fp-trap=none ")
    set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -fno-math-errno -fp-trap=none ")
  endif ()

  if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -ffast-math -fno-math-errno -fno-trapping-math ")
    set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -ffast-math -fno-math-errno -fno-trapping-math ")
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
if (CBC_USE_THREADS)
  set(CBC_THREAD 1)
  add_definitions(-DTHREAD -DCBC_THREAD) 
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
  configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Cgl/doxydoc/doxygen.conf.in       ${CMAKE_BINARY_DIR}/Cgl/doxydoc/doxygen.conf)
  configure_file(${CMAKE_CURRENT_SOURCE_DIR}/doxydoc/doxygen.conf.in           ${CMAKE_BINARY_DIR}/doxydoc/doxygen.conf)
  configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Clp/doxydoc/doxygen.conf.in       ${CMAKE_BINARY_DIR}/Clp/doxydoc/doxygen.conf)
  configure_file(${CMAKE_CURRENT_SOURCE_DIR}/CoinUtils/doxydoc/doxygen.conf.in ${CMAKE_BINARY_DIR}/CoinUtils/doxydoc/doxygen.conf)
  configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Cbc/doxydoc/doxygen.conf.in       ${CMAKE_BINARY_DIR}/Cbc/doxydoc/doxygen.conf)
  configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Bonmin/doxydoc/doxygen.conf.in    ${CMAKE_BINARY_DIR}/Bonmin/doxydoc/doxygen.conf)
  configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Osi/Osi/doxydoc/doxygen.conf.in   ${CMAKE_BINARY_DIR}/Osi/Osi/doxydoc/doxygen.conf)

  add_custom_target(docs 
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_BINARY_DIR}/Cgl/doxydoc/doxygen.conf
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_BINARY_DIR}/doxydoc/doxygen.conf
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_BINARY_DIR}/Clp/doxydoc/doxygen.conf
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_BINARY_DIR}/CoinUtils/doxydoc/doxygen.conf
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_BINARY_DIR}/Cbc/doxydoc/doxygen.conf
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_BINARY_DIR}/Bonmin/doxydoc/doxygen.conf
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_BINARY_DIR}/Osi/Osi/doxydoc/doxygen.conf)
endif ()

if (IPOPT_ENABLE_LINEARSOLVERLOADER)
  add_definitions(-DHAVE_LINEARSOLVERLOADER)
  
  find_package(DL)
endif ()

if (IPOPT_HAS_MUMPS)
  add_definitions(-DHAVE_MUMPS)
  
  set(COINHSL_HAS_MUMPS ON)
endif ()

if (IPOPT_HAS_WSMP)
  add_definitions(-DHAVE_WSMP)
  
  set(COINHSL_HAS_WSMP ON)
endif ()

subdirs(ThirdParty)

include_directories(${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/include)
link_directories(${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/lib)

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
  
  subdirs(Cgl)
  subdirs(Clp)
  subdirs(Osi/Osi)
  subdirs(Osi/OsiClp)
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

subdirs(Osi/OsiCbc)
subdirs(Cbc)
subdirs(Ipopt)
subdirs(Bonmin)

#
# Install dll dependencies
#

if (WIN32)
  install(DIRECTORY ${CMAKE_BINARY_DIR}/bin
          DESTINATION bin
          PATTERN "*.dll")
endif ()

#
# Perform some tests
#

# Create a directory to store results from tests
if (NOT EXISTS ${CMAKE_BINARY_DIR}/tests)
  make_directory(${CMAKE_BINARY_DIR}/tests)
endif ()

if (COIN_HAS_CLP)
  set(TEST_LIB_PATH "${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/lib")
  set(TEST_BIN_PATH "${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/bin")
  
  # With MPS files
  
  add_test(NAME afiro_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/afiro.mps -solution ${CMAKE_BINARY_DIR}/tests/afiro.out -solve)
  set_tests_properties(afiro_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(afiro_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(afiro_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  # This test seems to be specific for Ipopt
  #add_test(NAME conic_mps_cbc_standard 
  #         COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/conic.mps -solution ${CMAKE_BINARY_DIR}/tests/conic.out -solve)
  #set_tests_properties(conic_mps_cbc_standard PROPERTIES TIMEOUT 3000)
  #set_tests_properties(conic_mps_cbc_standard PROPERTIES LABELS "MPS;LONG")
  #if (WIN32)
  #  set_tests_properties(conic_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  #endif ()
  
  add_test(NAME exmip1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/exmip1.mps -solution ${CMAKE_BINARY_DIR}/tests/exmip1.out -solve)
  set_tests_properties(exmip1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(exmip1_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(exmip1_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME galenet_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/galenet.mps -solution ${CMAKE_BINARY_DIR}/tests/galenet.out -solve)
  set_tests_properties(galenet_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(galenet_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(galenet_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME nw460_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/nw460.mps -solution ${CMAKE_BINARY_DIR}/tests/nw460.out -solve)
  set_tests_properties(nw460_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(nw460_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(nw460_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME p0548_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/p0548.mps -solution ${CMAKE_BINARY_DIR}/tests/p0548.out -solve)
  set_tests_properties(p0548_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(p0548_mps_cbc_standard PROPERTIES LABEL "MPS")
  if (WIN32)
    set_tests_properties(p0548_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME scOneInt_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/scOneInt.mps -solution ${CMAKE_BINARY_DIR}/tests/scOneInt.out -solve)
  set_tests_properties(scOneInt_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(scOneInt_mps_cbc_standard PROPERTIES TIMEOUT "MPS")
  if (WIN32)
    set_tests_properties(scOneInt_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME tp3_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/tp3.mps -solution ${CMAKE_BINARY_DIR}/tests/tp3.out -solve)
  set_tests_properties(tp3_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(tp3_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(tp3_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME wedding_16_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/wedding_16.mps -solution ${CMAKE_BINARY_DIR}/tests/wedding_16.out -solve)
  set_tests_properties(wedding_16_mps_cbc_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(wedding_16_mps_cbc_standard PROPERTIES LABELS "MPS;LONG")
  if (WIN32)
    set_tests_properties(wedding_16_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME atm_5_10_1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/atm_5_10_1.mps -solution ${CMAKE_BINARY_DIR}/tests/atm_5_10_1.out -solve)
  set_tests_properties(atm_5_10_1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(atm_5_10_1_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(atm_5_10_1_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME e226_mps_cbc_standard
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/e226.mps -solution ${CMAKE_BINARY_DIR}/tests/e226.out -solve)
  set_tests_properties(e226_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(e226_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(e226_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME finnis_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/finnis.mps -solution ${CMAKE_BINARY_DIR}/tests/finnis.out -solve)
  set_tests_properties(finnis_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(finnis_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(finnis_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME hello_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/hello.mps -solution ${CMAKE_BINARY_DIR}/tests/hello.out -solve)
  set_tests_properties(hello_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(hello_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(hello_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME p0033_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/p0033.mps -solution ${CMAKE_BINARY_DIR}/tests/p0033.out -solve)
  set_tests_properties(p0033_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(p0033_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(p0033_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME pack1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/pack1.mps -solution ${CMAKE_BINARY_DIR}/tests/pack1.out -solve)
  set_tests_properties(pack1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(pack1_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(pack1_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME share2qp_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/share2qp.mps -solution ${CMAKE_BINARY_DIR}/tests/share2qp.out -solve)
  set_tests_properties(share2qp_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(share2qp_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(share2qp_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME tp4_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/tp4.mps -solution ${CMAKE_BINARY_DIR}/tests/tp4.out -solve)
  set_tests_properties(tp4_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(tp4_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(tp4_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME brandy_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/brandy.mps -solution ${CMAKE_BINARY_DIR}/tests/brandy.out -solve)
  set_tests_properties(brandy_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(brandy_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(brandy_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME exmip1.5_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/exmip1.5.mps -solution ${CMAKE_BINARY_DIR}/tests/exmip1.5.out -solve)
  set_tests_properties(exmip1.5_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(exmip1.5_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(exmip1.5_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME galenetbnds_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/galenetbnds.mps -solution ${CMAKE_BINARY_DIR}/tests/galenetbnds.out -solve)
  set_tests_properties(galenetbnds_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(galenetbnds_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(galenetbnds_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME lseu_mps_cbc_standard
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/lseu.mps -solution ${CMAKE_BINARY_DIR}/tests/lseu.out -solve)
  set_tests_properties(lseu_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(lseu_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(lseu_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME p0201_mps_cbc_standard
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/p0201.mps -solution ${CMAKE_BINARY_DIR}/tests/p0201.out -solve)
  set_tests_properties(p0201_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(p0201_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(p0201_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME retail3_mps_cbc_standard
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/retail3.mps -solution ${CMAKE_BINARY_DIR}/tests/retail3.out -solve)
  set_tests_properties(retail3_mps_cbc_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(retail3_mps_cbc_standard PROPERTIES LABELS "MPS;LONG")
  if (WIN32)
    set_tests_properties(retail3_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME spec_sections_mps_cbc_standard
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/spec_sections.mps -solution ${CMAKE_BINARY_DIR}/tests/spec_sections.out -solve)
  set_tests_properties(spec_sections_mps_cbc_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(spec_sections_mps_cbc_standard PROPERTIES LABELS "MPS;LONG")
  if (WIN32)
    set_tests_properties(spec_sections_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME tp5_mps_cbc_standard
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/tp5.mps -solution ${CMAKE_BINARY_DIR}/tests/tp5.out -solve)
  set_tests_properties(tp5_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(tp5_mps_cbc_standard PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(tp5_mps_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  # With LP files
  
  add_test(NAME exmip1_lp_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${COIN_DIR}/Data/Sample/exmip1.lp -solution ${CMAKE_BINARY_DIR}/tests/exmip1_lp.out -solve)
  set_tests_properties(exmip1_lp_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(exmip1_lp_cbc_standard PROPERTIES LABELS "LP")
  if (WIN32)
    set_tests_properties(exmip1_lp_cbc_standard PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
endif ()

if (CBC_BUILD_CBC_GENERIC)
  # With MPS files
  
  add_test(NAME afiro_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/afiro.mps -solution ${CMAKE_BINARY_DIR}/tests/afiro.out -solve)
  set_tests_properties(afiro_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(afiro_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(afiro_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  # This test seems to be specific for Ipopt
  #add_test(NAME conic_mps_cbc_generic 
  #         COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/conic.mps -solution ${CMAKE_BINARY_DIR}/tests/conic.out -solve)
  #set_tests_properties(conic_mps_cbc_generic PROPERTIES TIMEOUT 30)
  #set_tests_properties(conic_mps_cbc_generic PROPERTIES LABELS "MPS")
  #if (WIN32)
  #  set_tests_properties(conic_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  #endif ()
  
  add_test(NAME exmip1_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/exmip1.mps -solution ${CMAKE_BINARY_DIR}/tests/exmip1.out -solve)
  set_tests_properties(exmip1_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(exmip1_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(exmip1_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME galenet_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/galenet.mps -solution ${CMAKE_BINARY_DIR}/tests/galenet.out -solve)
  set_tests_properties(galenet_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(galenet_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(galenet_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME nw460_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/nw460.mps -solution ${CMAKE_BINARY_DIR}/tests/nw460.out -solve)
  set_tests_properties(nw460_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(nw460_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(nw460_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME p0548_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/p0548.mps -solution ${CMAKE_BINARY_DIR}/tests/p0548.out -solve)
  set_tests_properties(p0548_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(p0548_mps_cbc_generic PROPERTIES LABEL "MPS")
  if (WIN32)
    set_tests_properties(p0548_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME scOneInt_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/scOneInt.mps -solution ${CMAKE_BINARY_DIR}/tests/scOneInt.out -solve)
  set_tests_properties(scOneInt_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(scOneInt_mps_cbc_generic PROPERTIES TIMEOUT "MPS")
  if (WIN32)
    set_tests_properties(scOneInt_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME tp3_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/tp3.mps -solution ${CMAKE_BINARY_DIR}/tests/tp3.out -solve)
  set_tests_properties(tp3_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(tp3_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(tp3_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME wedding_16_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/wedding_16.mps -solution ${CMAKE_BINARY_DIR}/tests/wedding_16.out -solve)
  set_tests_properties(wedding_16_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(wedding_16_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(wedding_16_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME atm_5_10_1_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/atm_5_10_1.mps -solution ${CMAKE_BINARY_DIR}/tests/atm_5_10_1.out -solve)
  set_tests_properties(atm_5_10_1_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(atm_5_10_1_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(atm_5_10_1_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME e226_mps_cbc_generic
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/e226.mps -solution ${CMAKE_BINARY_DIR}/tests/e226.out -solve)
  set_tests_properties(e226_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(e226_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(e226_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME finnis_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/finnis.mps -solution ${CMAKE_BINARY_DIR}/tests/finnis.out -solve)
  set_tests_properties(finnis_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(finnis_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(finnis_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME hello_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/hello.mps -solution ${CMAKE_BINARY_DIR}/tests/hello.out -solve)
  set_tests_properties(hello_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(hello_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(hello_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME p0033_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/p0033.mps -solution ${CMAKE_BINARY_DIR}/tests/p0033.out -solve)
  set_tests_properties(p0033_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(p0033_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(p0033_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME pack1_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/pack1.mps -solution ${CMAKE_BINARY_DIR}/tests/pack1.out -solve)
  set_tests_properties(pack1_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(pack1_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(pack1_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME share2qp_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/share2qp.mps -solution ${CMAKE_BINARY_DIR}/tests/share2qp.out -solve)
  set_tests_properties(share2qp_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(share2qp_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(share2qp_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME tp4_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/tp4.mps -solution ${CMAKE_BINARY_DIR}/tests/tp4.out -solve)
  set_tests_properties(tp4_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(tp4_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(tp4_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME brandy_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/brandy.mps -solution ${CMAKE_BINARY_DIR}/tests/brandy.out -solve)
  set_tests_properties(brandy_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(brandy_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(brandy_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME exmip1.5_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/exmip1.5.mps -solution ${CMAKE_BINARY_DIR}/tests/exmip1.5.out -solve)
  set_tests_properties(exmip1.5_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(exmip1.5_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(exmip1.5_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME galenetbnds_mps_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/galenetbnds.mps -solution ${CMAKE_BINARY_DIR}/tests/galenetbnds.out -solve)
  set_tests_properties(galenetbnds_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(galenetbnds_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(galenetbnds_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME lseu_mps_cbc_generic
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/lseu.mps -solution ${CMAKE_BINARY_DIR}/tests/lseu.out -solve)
  set_tests_properties(lseu_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(lseu_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(lseu_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME p0201_mps_cbc_generic
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/p0201.mps -solution ${CMAKE_BINARY_DIR}/tests/p0201.out -solve)
  set_tests_properties(p0201_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(p0201_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(p0201_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME retail3_mps_cbc_generic
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/retail3.mps -solution ${CMAKE_BINARY_DIR}/tests/retail3.out -solve)
  set_tests_properties(retail3_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(retail3_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(retail3_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME spec_sections_mps_cbc_generic
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/spec_sections.mps -solution ${CMAKE_BINARY_DIR}/tests/spec_sections.out -solve)
  set_tests_properties(spec_sections_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(spec_sections_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(spec_sections_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_test(NAME tp5_mps_cbc_generic
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/tp5.mps -solution ${CMAKE_BINARY_DIR}/tests/tp5.out -solve)
  set_tests_properties(tp5_mps_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(tp5_mps_cbc_generic PROPERTIES LABELS "MPS")
  if (WIN32)
    set_tests_properties(tp5_mps_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  # With LP files
  
  add_test(NAME exmip1_lp_cbc_generic 
           COMMAND $<TARGET_FILE:cbc-generic> ${COIN_DIR}/Data/Sample/exmip1.lp -solution ${CMAKE_BINARY_DIR}/tests/exmip1_lp.out -solve)
  set_tests_properties(exmip1_lp_cbc_generic PROPERTIES TIMEOUT 30)
  set_tests_properties(exmip1_lp_cbc_generic PROPERTIES LABELS "LP")
  if (WIN32)
    set_tests_properties(exmip1_lp_cbc_generic PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
endif ()

#
# Packaging
#

set(CPACK_PACKAGE_NAME      "${PACKAGE_NAME}")
set(CPACK_PACKAGE_FILE_NAME "${CPACK_PACKAGE_NAME}-${BONMIN_VERSION}-${CMAKE_SYSTEM_NAME}")

message(STATUS "Package filename: ${CPACK_PACKAGE_FILE_NAME}")

set(CPACK_PACKAGE_INSTALL_DIRECTORY "${PACKAGE_NAME}")
set(CPACK_PACKAGE_VERSION "${BONMIN_VERSION}")

set(CPACK_PACKAGE_RELOCATABLE TRUE)

if (WIN32)
  set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "${CPACK_PACKAGE_NAME}")
  set(CPACK_MONOLITHIC_INSTALL ON)
  set(CPACK_NSIS_CONTACT "${PACKAGE_BUGREPORT}")
  set(CPACK_NSIS_MODIFY_PATH ON)
  set(CPACK_NSIS_PACKAGE_NAME "Bonmin ${BONMIN_VERSION}")
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
  set(CPACK_RPM_PACKAGE_SUMMARY "Bonmin is minlp solver library from CoinOR.")
  set(CPACK_RPM_PACKAGE_DESCRIPTION 
    "The Bonmin suite includes:

    * A set of linear and nonlinear solvers to manager the resolution of various problems.
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

color_message("${color_green}************************")
color_message("*                      *")
color_message("* Configuration sum-up *")
color_message("*                      *")
color_message("************************")
color_message("${color_reset} ")

color_message("${color_cyan}Installation directory:${color_reset} ${CMAKE_INSTALL_PREFIX}")
color_message("${color_cyan}Build type:${color_reset} ${CMAKE_BUILD_TYPE}")

get_directory_property(ALL_INCLUDES INCLUDE_DIRECTORIES)
get_directory_property(ALL_LINKS    LINK_DIRECTORIES)
get_directory_property(ALL_DEFS     COMPILE_DEFINITIONS)

message(STATUS "${color_cyan}Include directories:${color_reset}     ${ALL_INCLUDES}")
message(STATUS "${color_cyan}Link directories:${color_reset}        ${ALL_LINKS}")
message(STATUS "${color_cyan}Compilation definitions:${color_reset} ${ALL_DEFS}")
