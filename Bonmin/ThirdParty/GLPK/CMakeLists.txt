cmake_minimum_required(VERSION 3.0.2)

project(Glpk C)

option(GLPK_BUILD_EXAMPLES "build the Glpk examples"       OFF)
option(GLPK_WITH_DL        "enable shared library support" OFF)
option(GLPK_WITH_OBDC      "enable MathProg ODBC support"  OFF)
option(GLPK_WITH_MYSQL     "enable MathProg MySQL support" OFF)
option(GLPK_WITH_GMP       "use GNU MP bignum library"     OFF)
option(GLPK_WITH_OLDAPI    "build the Glpk old API"        OFF)
option(GLPK_WITH_CPLEXAPI  "build the Glpk CPLEX API"      OFF)

option(COIN_ENABLE_DOWNLOAD_DATA_TEST "Enable the download / run of Data tests from Coin website" OFF)

# Compilation options
option(ENABLE_SHARED_LIBRARIES       "Build libraries as shared libraries" OFF)
option(GLPK_COMPILE_STATIC           "Activate the static linking" OFF)
# Using lcov for code coverage (Linux only) - gcov and lcov must be installed on the system.
# The following steps are performed:
# - first, activate GLPK_COMPILE_COVERAGE
# - activate all the solvers
# - compile: 'make'
# - run the tests: 'make test'
# - generate the coverage report: 'make coverage'
#
# You can trigger a code coverage analysis by issuing the following commande: 'make coverage'
# Be careful to activate the right set of tests (not the long one).
option(GLPK_COMPILE_COVERAGE         "Activate the code coverage compilation" OFF)
option(GLPK_COMPILE_PROFILE          "Activate the code profiling compilation" OFF)
option(GLPK_COMPILE_PROFILE_VALGRIND "Activate the code profiling compilation for valgrind" OFF)
option(GLPK_COMPILE_LTO              "Activate the whole program optimization (using LTO)" OFF)
option(GLPK_COMPILE_WHOPR            "Activate the whole program optimization (using WHOPR)" OFF)
option(GLPK_COMPILE_WARNINGS         "Activate a set of warning options" OFF)

mark_as_advanced(ENABLE_SHARED_LIBRARIES
                 GLPK_COMPILE_STATIC
                 GLPK_COMPILE_COVERAGE
                 GLPK_COMPILE_PROFILE
                 GLPK_COMPILE_PROFILE_VALGRIND
                 GLPK_COMPILE_LTO
                 GLPK_COMPILE_WHOPR
                 GLPK_COMPILE_WARNINGS)

# Set paths for binary and library generation inside the build directory:
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH}
                      ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

Enable_Testing ()

#------------------------------------------------------------
# Detect 64 bits
#------------------------------------------------------------

if (CMAKE_SIZEOF_VOID_P EQUAL 4)
  set(HAVE_64_BIT 0)
else ()
  set(HAVE_64_BIT 1)
endif ()

include(glpk-macros)
include(GetAcInitVersion)

get_ac_init_version(${CMAKE_CURRENT_SOURCE_DIR}/configure.ac GLPK)

# Name of package
set(PACKAGE           "Glpk")
# Define to the address where bug reports for this package should be sent.
set(PACKAGE_BUGREPORT "bugs-glpk@gnu.org")
# Define to the full name of this package.
set(PACKAGE_NAME      "Glpk")
# Define to the full name and version of this package.
set(PACKAGE_STRING    "Glpk")
# Define to the one symbol short name of this package.
set(PACKAGE_TARNAME   "glpk")
# Define to the version of this package.
set(PACKAGE_VERSION   "${GLPK_VERSION_STRING}")
set(GLPK_VERSION      "${GLPK_VERSION_STRING}")

if (CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/../glpk_binary" 
      CACHE PATH "Glpk install prefix" FORCE)
endif ()

#-----------------------------------------------------------------------------
# Manage compilation options
#-----------------------------------------------------------------------------

if (UNIX)
  if (GLPK_COMPILE_STATIC)
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static -z muldefs")
    endif ()
  elseif (GLPK_COMPILE_COVERAGE)
    set(CMAKE_C_FLAGS_DEBUG    "${CMAKE_C_FLAGS_DEBUG} -O0 --coverage")
    set(CMAKE_CXX_FLAGS_DEBUG  "${CMAKE_CXX_FLAGS_DEBUG} -O0 --coverage")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -O0 --coverage")
  elseif (GLPK_COMPILE_PROFILE)
    set(CMAKE_C_FLAGS          "${CMAKE_C_FLAGS} -pg")
    set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -pg")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -pg")
  elseif (GLPK_COMPILE_PROFILE_VALGRIND)
    set(CMAKE_C_FLAGS          "${CMAKE_C_FLAGS} -p")
    set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -p")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -p")
  else ()
    set(CMAKE_C_FLAGS          "${CMAKE_C_FLAGS} -Wno-deprecated -fPIC")
    set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -Wno-deprecated -fPIC")
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -z muldefs")
    endif ()
  endif ()
  
  if (GLPK_COMPILE_LTO)
    if (CMAKE_CXX_COMPILER_ID STREQUAL "Intel")
      set(CMAKE_C_FLAGS          "${CMAKE_C_FLAGS} -lto")
      set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -lto")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lto")
    endif ()
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
      set(CMAKE_C_FLAGS          "${CMAKE_C_FLAGS} -flto")
      set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -flto")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -flto")
    endif ()
  elseif (GLPK_COMPILE_WHOPR)
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
      set(CMAKE_C_FLAGS          "${CMAKE_C_FLAGS} -fwhopr")
      set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -fwhopr")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fwhopr")
    endif ()
  endif ()
elseif (WIN32)
  if (MSVC)
    if (GLPK_COMPILE_LTO OR GLPK_COMPILE_WHOPR)
      set(CMAKE_C_FLAGS          "${CMAKE_C_FLAGS} /GL")
      set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} /GL")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /LTCG")
    endif ()
  endif ()
endif ()

include(CheckIncludeFile)
include(CheckFunctionExists)

# OBDC_DLNAME
# MYSQL_DLNAME

if (APPLE)
  set(LIBIODBC "libiodbc.dylib")
  set(LIBODBC  "libodbc.dylib")
  set(LIBMYSQL "libmysqlclient.dylib")
endif ()

if (LINUX)
  set(LIBIODBC "libiodbc.so")
  set(LIBODBC  "libodbc.so")
  set(LIBMYSQL "libmysqlclient.so")
endif ()

if (WIN32)
  set(LIBIODBC "libiodbc.dll")
  set(LIBODBC  "libodbc.dll")
  set(LIBMYSQL "libmysqlclient.dll")
endif ()

if (GLPK_WITH_OBDC)
  find_package(ODBC)
  set(HAVE_OBDC ${ODBC_FOUND})
  
  #set(ODBC_DLNAME "${LIBIODBC}") # Static case ?
  set(ODBC_DLNAME "${LIBODBC}")
endif ()

if (GLPK_WITH_MYSQL)
  find_package(MySQL)
  set(HAVE_MYSQL ${MYSQL_FOUND})
  
  add_include_directories(/usr/include/mysql)
  set(MYSQL_DLNAME "${LIBMYSQL}")
endif ()

# Check memcpy

check_function_exists(memcpy HAVE_MEMCPY)

check_include_file("gmp.h"      HAVE_GMP)
check_include_file("sys/time.h" HAVE_SYS_TIME_H)
check_include_file("dlfcn.h"    HAVE_DLFCN)

include(CheckSymbolExists)

check_symbol_exists(gettimeofday sys/time.h HAVE_GETTIMEOFDAY)

set(HAVE_LTDL OFF)

find_package(LTDL)
if (LTDL_FOUND)
  set(HAVE_LTDL ON)
  include_directories(${LTDL_INCLUDE_DIR})
  link_directories(${LTDL_LIBRARY_DIR})
endif ()

if (CMAKE_CXX_COMPILER_ID STREQUAL "Intel")
  add_definitions(-DINTEL_COMPILER)
endif ()

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/config.h.cmake ${CMAKE_BINARY_DIR}/Glpk/config.h)
include_directories(${CMAKE_BINARY_DIR}/Glpk)

add_definitions(-DHAVE_CONFIG_H)

#
# Add uninstall-target
#

add_custom_target(uninstall
                  COMMAND ${CMAKE_COMMAND} -P "${CMAKE_CURRENT_SOURCE_DIR}/cmake/uninstall.cmake")

#
# Windows compilation
#

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS)
endif ()

###################################
#                                 #
# Build libraries and executables #
#                                 #
###################################

# Library

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/amd)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/api)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/bflib)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/cglib)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/colamd)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/draft)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/env)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/intopt)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/minisat)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/misc)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/mpl)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/npp)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/proxy)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/simplex)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/zlib)

# libglpk_la_LDFLAGS = -version-info 37:2:1 -export-symbols-regex '^glp_*'

# Files from 4.61
set(LIST_SRCS src/lux.c
              src/glpapi10.c
              src/glpios10.c
              src/glpmat.c
              src/glpios01.c
              src/misc/dmp.c
              src/misc/bignum.c
              src/misc/keller.c
              src/misc/fp2rat.c
              src/misc/avl.c
              src/misc/strtrim.c
              src/misc/triang.c
              src/misc/mc13d.c
              src/misc/str2int.c
              src/misc/round2n.c
              src/misc/relax4.c
              src/misc/jd.c
              src/misc/wclique1.c
              src/misc/wclique.c
              src/misc/okalg.c
              src/misc/str2num.c
              src/misc/strspx.c
              src/misc/gcd.c
              src/misc/rng.c
              src/misc/dimacs.c
              src/misc/mygmp.c
              src/misc/ffalg.c
              src/misc/rng1.c
              src/misc/mc21a.c
              src/misc/qmd.c
              src/glpapi08.c
              src/glpnpp01.c
              src/cglib/clqcut.c
              src/cglib/gmicut.c
              src/cglib/cfg2.c
              src/cglib/cfg.c
              src/cglib/mirgen.c
              src/cglib/cfg1.c
              src/cglib/gmigen.c
              src/api/rdipt.c
              src/api/rdcc.c
              src/api/rdmcf.c
              src/api/wript.c
              src/api/asnokalg.c
              src/api/minisat1.c
              src/api/prob3.c
              src/api/rdasn.c
              src/api/rmfgen.c
              src/api/wrsol.c
              src/api/rdmaxf.c
              src/api/cplex.c
              src/api/prob2.c
              src/api/wrprob.c
              src/api/rdmip.c
              src/api/asnhall.c
              src/api/prsol.c
              src/api/graph.c
              src/api/wrmip.c
              src/api/prmip.c
              src/api/wrmcf.c
              src/api/rdsol.c
              src/api/ckcnf.c
              src/api/gridgen.c
              src/api/mcfrelax.c
              src/api/cpp.c
              src/api/topsort.c
              src/api/weak.c
              src/api/cpxbas.c
              src/api/intfeas1.c
              src/api/rdprob.c
              src/api/mpl.c
              src/api/mps.c
              src/api/netgen.c
              src/api/prob4.c
              src/api/pript.c
              src/api/prrngs.c
              src/api/wrcc.c
              src/api/mcfokalg.c
              src/api/prob5.c
              src/api/maxffalg.c
              src/api/wrcnf.c
              src/api/mcflp.c
              src/api/advbas.c
              src/api/strong.c
              src/api/asnlp.c
              src/api/wrmaxf.c
              src/api/ckasn.c
              src/api/rdcnf.c
              src/api/maxflp.c
              src/api/prob1.c
              src/api/wcliqex.c
              src/api/wrasn.c
              src/glpios07.c
              src/minisat/minisat.c
              src/glpapi07.c
              src/simplex/spychuzc.c
              src/simplex/spxchuzr.c
              src/simplex/spxnt.c
              src/simplex/spxlp.c
              src/simplex/spxprob.c
              src/simplex/spychuzr.c
              src/simplex/spydual.c
              src/simplex/spxchuzc.c
              src/simplex/spxat.c
              src/simplex/spxprim.c
              src/amd/amd_aat.c
              src/amd/amd_1.c
              src/amd/amd_control.c
              src/amd/amd_2.c
              src/amd/amd_defaults.c
              src/amd/amd_postorder.c
              src/amd/amd_order.c
              src/amd/amd_info.c
              src/amd/amd_post_tree.c
              src/amd/amd_preprocess.c
              src/amd/amd_valid.c
              src/amd/amd_dump.c
              src/glpapi12.c
              src/glpnpp04.c
              src/env/tls.c
              src/env/stdout.c
              src/env/time.c
              src/env/alloc.c
              src/env/error.c
              src/env/dlsup.c
              src/env/env.c
              src/env/stream.c
              src/bflib/btf.c
              src/bflib/btfint.c
              src/bflib/sva.c
              src/bflib/sgf.c
              src/bflib/fvs.c
              src/bflib/luf.c
              src/bflib/lufint.c
              src/bflib/fhv.c
              src/bflib/fhvint.c
              src/bflib/scf.c
              src/bflib/ifu.c
              src/bflib/scfint.c
              src/glpssx02.c
              src/bfx.c
              src/mpl/mplsql.c
              src/mpl/mpl5.c
              src/mpl/mpl6.c
              src/mpl/mpl2.c
              src/mpl/mpl1.c
              src/mpl/mpl4.c
              src/mpl/mpl3.c
              src/glpapi13.c
              src/glprgr.c
              src/glpnpp05.c
              src/colamd/colamd.c
              src/zlib/gzread.c
              src/zlib/gzwrite.c
              src/zlib/crc32.c
              src/zlib/uncompr.c
              src/zlib/compress.c
              src/zlib/zutil.c
              src/zlib/gzlib.c
              src/zlib/deflate.c
              src/zlib/gzclose.c
              src/zlib/adler32.c
              src/zlib/inffast.c
              src/zlib/zio.c
              src/zlib/inftrees.c
              src/zlib/trees.c
              src/zlib/inflate.c
              src/bfd.c
              src/glpios03.c
              src/glpssx01.c
              src/proxy/proxy.c
              src/proxy/proxy1.c
              src/proxy/main.c
              src/glpios12.c
              src/spv.c
              src/glpios02.c
              src/glpios09.c
              src/glpapi09.c
              src/glphbm.c
              src/glpspm.c
              src/glpipm.c
              src/glpscl.c
              src/glpnpp06.c
              src/glpnpp02.c
              src/glpios11.c
              src/glpnpp03.c
              src/glpapi06.c)

# Files for 4.62

set(LIST_SRCS_TO_ADD src/env/stdc.c)

add_source_files(LIST_SRCS "${LIST_SRCS_TO_ADD}" "4.62" "${GLPK_VERSION}")

# Files for 4.63

set(LIST_SRCS_TO_ADD    src/cglib/spv.c)
set(LIST_SRCS_TO_REMOVE src/spv.c)

add_source_files(LIST_SRCS "${LIST_SRCS_TO_ADD}" "4.63" "${GLPK_VERSION}")
remove_source_files(LIST_SRCS "${LIST_SRCS_TO_REMOVE}" "4.63" "${GLPK_VERSION}")

# Files for 4.64

set(LIST_SRCS_TO_ADD src/draft/lux.c
                     src/draft/glpapi10.c
                     src/draft/glpios10.c
                     src/draft/glpmat.c
                     src/draft/glpios01.c
                     src/draft/glpapi08.c
                     src/draft/glpnpp01.c
                     src/draft/glpios07.c
                     src/draft/glpapi07.c
                     src/draft/glpapi12.c
                     src/draft/glpnpp04.c
                     src/draft/glpssx02.c
                     src/draft/bfx.c
                     src/draft/glpapi13.c
                     src/draft/glprgr.c
                     src/draft/glpnpp05.c
                     src/draft/bfd.c
                     src/draft/glpios03.c
                     src/draft/glpssx01.c
                     src/draft/glpios12.c
                     src/draft/glpios02.c
                     src/draft/glpios09.c
                     src/draft/glpapi09.c
                     src/draft/glphbm.c
                     src/draft/glpspm.c
                     src/draft/glpipm.c
                     src/draft/glpscl.c
                     src/draft/glpnpp06.c
                     src/draft/glpnpp02.c
                     src/draft/glpios11.c
                     src/draft/glpnpp03.c
                     src/draft/glpapi06.c)

set(LIST_SRCS_TO_REMOVE src/lux.c
                        src/glpapi10.c
                        src/glpios10.c
                        src/glpmat.c
                        src/glpios01.c
                        src/glpapi08.c
                        src/glpnpp01.c
                        src/glpios07.c
                        src/glpapi07.c
                        src/glpapi12.c
                        src/glpnpp04.c
                        src/glpssx02.c
                        src/bfx.c
                        src/glpapi13.c
                        src/glprgr.c
                        src/glpnpp05.c
                        src/bfd.c
                        src/glpios03.c
                        src/glpssx01.c
                        src/glpios12.c
                        src/glpios02.c
                        src/glpios09.c
                        src/glpapi09.c
                        src/glphbm.c
                        src/glpspm.c
                        src/glpipm.c
                        src/glpscl.c
                        src/glpnpp06.c
                        src/glpnpp02.c
                        src/glpios11.c
                        src/glpnpp03.c
                        src/glpapi06.c)

add_source_files(LIST_SRCS "${LIST_SRCS_TO_ADD}" "4.64" "${GLPK_VERSION}")
remove_source_files(LIST_SRCS "${LIST_SRCS_TO_REMOVE}" "4.64" "${GLPK_VERSION}")

# Files for 4.65

set(LIST_SRCS_TO_ADD src/misc/fvs.c
                     src/misc/ks.c
                     src/misc/mt1.c
                     src/api/npp.c
                     src/npp/npp5.c
                     src/npp/npp1.c
                     src/npp/npp6.c
                     src/npp/npp3.c
                     src/npp/npp4.c
                     src/npp/npp2.c
                     src/intopt/fpump.c
                     src/intopt/clqcut.c
                     src/intopt/gmicut.c
                     src/intopt/cfg2.c
                     src/intopt/cfg.c
                     src/intopt/mirgen.c
                     src/intopt/spv.c
                     src/intopt/cfg1.c
                     src/intopt/gmigen.c
                     src/intopt/covgen.c)

set(LIST_SRCS_TO_REMOVE src/cglib/clqcut.c
                        src/cglib/gmicut.c
                        src/cglib/cfg2.c
                        src/cglib/cfg.c
                        src/cglib/mirgen.c
                        src/cglib/spv.c
                        src/cglib/cfg1.c
                        src/cglib/gmigen.c
                        src/bflib/fvs.c
                        src/draft/glpios10.c
                        src/draft/glpnpp01.c
                        src/draft/glpnpp04.c
                        src/draft/glpnpp05.c
                        src/draft/glpnpp06.c
                        src/draft/glpnpp02.c
                        src/draft/glpnpp03.c)

add_source_files(LIST_SRCS "${LIST_SRCS_TO_ADD}" "4.65" "${GLPK_VERSION}")
remove_source_files(LIST_SRCS "${LIST_SRCS_TO_REMOVE}" "4.65" "${GLPK_VERSION}")

if (ENABLE_SHARED_LIBRARIES)
  add_library(glpk SHARED ${LIST_SRCS})
else ()
  add_library(glpk STATIC ${LIST_SRCS})
endif ()

if (GLPK_WITH_OLDAPI)
  add_library(glpk-oldapi examples/oldapi/lpx.c)
endif ()

if (GLPK_WITH_CPLEXAPI)
  add_library(glpk-cplexapi examples/cplex/cplex.c)
  target_include_directories(glpk-cplexapi BEFORE PUBLIC examples/cplex)
endif ()

############
#          #
# Examples #
#          #
############

if (GLPK_BUILD_EXAMPLES)
  add_executable(glpsol ${CMAKE_CURRENT_SOURCE_DIR}/examples/glpsol.c)
  target_link_libraries(glpsol glpk)
  if (NOT WIN32)
    target_link_libraries(glpsol m)
  endif ()
  if (LTDL_FOUND)
    target_link_libraries(glpsol ${LTDL_LIBRARIES})
  endif ()
  
  add_executable(iptsamp examples/iptsamp.c)
  target_link_libraries(iptsamp glpk)
  if (NOT WIN32)
    target_link_libraries(iptsamp m)
  endif ()
  if (LTDL_FOUND)
    target_link_libraries(iptsamp ${LTDL_LIBRARIES})
  endif ()
  
  if (GLPK_VERSION STRGREATER "4.64")
    add_executable(nppsamp examples/nppsamp.c)
    target_link_libraries(nppsamp glpk)
    if (NOT WIN32)
      target_link_libraries(nppsamp m)
    endif ()
    if (LTDL_FOUND)
      target_link_libraries(nppsamp ${LTDL_LIBRARIES})
    endif ()
  endif ()
  
  add_executable(mplsamp1 examples/mplsamp1.c)
  target_link_libraries(mplsamp1 glpk)
  if (NOT WIN32)
    target_link_libraries(mplsamp1 m)
  endif ()
  if (LTDL_FOUND)
    target_link_libraries(mplsamp1 ${LTDL_LIBRARIES})
  endif ()
  
  add_executable(mplsamp2 examples/mplsamp2.c)
  target_link_libraries(mplsamp2 glpk)
  if (NOT WIN32)
    target_link_libraries(mplsamp2 m)
  endif ()
  if (LTDL_FOUND)
    target_link_libraries(mplsamp2 ${LTDL_LIBRARIES})
  endif ()
  
  add_executable(netgen examples/netgen.c)
  target_link_libraries(netgen glpk)
  if (NOT WIN32)
    target_link_libraries(netgen m)
  endif ()
  if (LTDL_FOUND)
    target_link_libraries(netgen ${LTDL_LIBRARIES})
  endif ()
  
  add_executable(sample examples/sample.c)
  target_link_libraries(sample glpk)
  if (NOT WIN32)
    target_link_libraries(sample m)
  endif ()
  if (LTDL_FOUND)
    target_link_libraries(sample ${LTDL_LIBRARIES})
  endif ()
  
  add_executable(spxsamp1 examples/spxsamp1.c)
  target_link_libraries(spxsamp1 glpk)
  if (NOT WIN32)
    target_link_libraries(spxsamp1 m)
  endif ()
  if (LTDL_FOUND)
    target_link_libraries(spxsamp1 ${LTDL_LIBRARIES})
  endif ()
  
  add_executable(spxsamp2 examples/spxsamp2.c)
  target_link_libraries(spxsamp2 glpk)
  if (NOT WIN32)
    target_link_libraries(spxsamp2 m)
  endif ()
  if (LTDL_FOUND)
    target_link_libraries(spxsamp2 ${LTDL_LIBRARIES})
  endif ()
  
  if (GLPK_WITH_OLDAPI)
    add_executable(lpxsamp examples/oldapi/lpxsamp.c)
    target_link_libraries(lpxsamp glpk-oldapi glpk)
    target_include_directories(lpxsamp BEFORE PUBLIC examples/oldapi)
    if (NOT WIN32)
      target_link_libraries(lpxsamp m)
    endif ()
    if (LTDL_FOUND)
      target_link_libraries(lpxsamp ${LTDL_LIBRARIES})
    endif ()
  endif ()
endif ()

######################
#                    #
# Installation rules #
#                    #
######################

install(TARGETS glpk
        DESTINATION lib)

if (GLPK_BUILD_EXAMPLES)
  install(TARGETS glpsol
          DESTINATION bin)
endif ()

install(FILES src/glpk.h
        DESTINATION include)

##########################################
#                                        #
# Manage coverage via lcov automatically #
#                                        #
##########################################

if (GLPK_COMPILE_COVERAGE AND NOT ((CMAKE_BUILD_TYPE STREQUAL "DEBUG") OR (CMAKE_BUILD_TYPE STREQUAL "RELWITHDEBINFO")))
  message(STATUS "Warning: to enable coverage, you must compile in DEBUG ou RELWITHDEBINFO mode")
endif ()

if (GLPK_COMPILE_COVERAGE)
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
                    COMMAND ${CMAKE_COMMAND} -E chdir ${CMAKE_BINARY_DIR} ${CMAKE_CTEST_COMMAND} -LE "(LONG|FAIL)" || true
                    COMMAND ${LCOV_PATH} --capture --directory ${CMAKE_CURRENT_SOURCE_DIR} --output-file ${CMAKE_BINARY_DIR}/coverage.info
                    COMMAND ${LCOV_PATH} --remove ${CMAKE_BINARY_DIR}/coverage.info "*/usr/include*" '${CMAKE_BINARY_DIR}/_dep/*' --output-file ${CMAKE_BINARY_DIR}/coverage.info.cleaned
                    COMMAND ${GENHTML_PATH} -o ${CMAKE_BINARY_DIR}/coverage ${CMAKE_BINARY_DIR}/coverage.info.cleaned
                    COMMAND ${CMAKE_COMMAND} -E remove ${CMAKE_BINARY_DIR}/coverage.info ${CMAKE_BINARY_DIR}/coverage.info.cleaned
		    VERBATIM
                    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
                    COMMENT "Resetting code coverage counters to zero.
Processing code coverage counters and generating report.
You can zip the directory ${CMAKE_BINARY_DIR}/coverage and upload the content to a web server.")
endif ()

######################
#                    #
# Perform some tests #
#                    #
######################

# #################################################
# ===> Tests
# #################################################

if (COIN_ENABLE_DOWNLOAD_DATA_TEST)
  include(ExternalProject)

  if (NOT EXISTS ${CMAKE_BINARY_DIR}/DATA_TEST)
    make_directory(${CMAKE_BINARY_DIR}/DATA_TEST)
  endif ()
  
  set(DATA_TEST_VERSION "1.0.7")
  
  ExternalProject_Add(EP_DATA_TEST
                      PREFIX ${CMAKE_BINARY_DIR}/DATA_TEST
                      URL http://www.coin-or.org/download/source/Data/Data-${DATA_TEST_VERSION}.tgz
                      PATCH_COMMAND     ""
                      CONFIGURE_COMMAND ""
                      BUILD_COMMAND     ""
                      INSTALL_COMMAND   ""
                      )

  include(GlpkTests.cmake)
endif()

# #################################################
# <=== Tests
# #################################################

# Create a directory to store results from tests
if (NOT EXISTS ${CMAKE_BINARY_DIR}/tests)
  make_directory(${CMAKE_BINARY_DIR}/tests)
endif ()

#
# Mps
#

if (GLPK_BUILD_EXAMPLES)
  add_test(NAME alloy_mps_glpsol
           COMMAND $<TARGET_FILE:glpsol> --mps ${CMAKE_CURRENT_SOURCE_DIR}/examples/alloy.mps)
  set_tests_properties(alloy_mps_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(alloy_mps_glpsol PROPERTIES LABELS "DISTRIB;MPS")
  if (WIN32)
    set_tests_properties(alloy_mps_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME furnace_mps_glpsol
           COMMAND $<TARGET_FILE:glpsol> --mps ${CMAKE_CURRENT_SOURCE_DIR}/examples/furnace.mps)
  set_tests_properties(furnace_mps_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(furnace_mps_glpsol PROPERTIES LABELS "DISTRIB;MPS")
  if (WIN32)
    set_tests_properties(furnace_mps_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME icecream_mps_glpsol
           COMMAND $<TARGET_FILE:glpsol> --mps ${CMAKE_CURRENT_SOURCE_DIR}/examples/icecream.mps)
  set_tests_properties(icecream_mps_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(icecream_mps_glpsol PROPERTIES LABELS "DISTRIB;MPS")
  if (WIN32)
    set_tests_properties(icecream_mps_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME murtagh_mps_glpsol
           COMMAND $<TARGET_FILE:glpsol> --mps ${CMAKE_CURRENT_SOURCE_DIR}/examples/murtagh.mps)
  set_tests_properties(murtagh_mps_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(murtagh_mps_glpsol PROPERTIES LABELS "DISTRIB;MPS")
  if (WIN32)
    set_tests_properties(murtagh_mps_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME plan_mps_glpsol
           COMMAND $<TARGET_FILE:glpsol> --mps ${CMAKE_CURRENT_SOURCE_DIR}/examples/plan.mps)
  set_tests_properties(plan_mps_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(plan_mps_glpsol PROPERTIES LABELS "DISTRIB;MPS")
  if (WIN32)
    set_tests_properties(plan_mps_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME samp1_mps_glpsol
           COMMAND $<TARGET_FILE:glpsol> --mps ${CMAKE_CURRENT_SOURCE_DIR}/examples/samp1.mps)
  set_tests_properties(samp1_mps_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(samp1_mps_glpsol PROPERTIES LABELS "DISTRIB;MPS")
  if (WIN32)
    set_tests_properties(samp1_mps_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME samp2_mps_glpsol
           COMMAND $<TARGET_FILE:glpsol> --mps ${CMAKE_CURRENT_SOURCE_DIR}/examples/samp2.mps)
  set_tests_properties(samp2_mps_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(samp2_mps_glpsol PROPERTIES LABELS "DISTRIB;MPS")
  if (WIN32)
    set_tests_properties(samp2_mps_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  #
  # Lp files
  #

  add_test(NAME plan_lp_glpsol
           COMMAND $<TARGET_FILE:glpsol> --lp ${CMAKE_CURRENT_SOURCE_DIR}/examples/plan.lp)
  set_tests_properties(plan_lp_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(plan_lp_glpsol PROPERTIES LABELS "DISTRIB;LP")
  if (WIN32)
    set_tests_properties(plan_lp_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  #
  # Mod files
  #

  add_test(NAME assign_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/assign.mod)
  set_tests_properties(assign_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(assign_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(assign_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME bpp_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/bpp.mod)
  set_tests_properties(bpp_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(bpp_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(bpp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME cal_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/cal.mod)
  set_tests_properties(cal_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(cal_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(cal_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME cf12a_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/cf12a.mod)
  set_tests_properties(cf12a_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(cf12a_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(cf12a_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME cf12b_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/cf12b.mod)
  set_tests_properties(cf12b_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(cf12b_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(cf12b_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME cflsq_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/cflsq.mod)
  set_tests_properties(cflsq_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(cflsq_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(cflsq_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME color_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/color.mod)
  set_tests_properties(color_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(color_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(color_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME cpp_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/cpp.mod)
  set_tests_properties(cpp_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(cpp_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(cpp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME crypto_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/crypto.mod)
  set_tests_properties(crypto_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(crypto_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(crypto_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME dea_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/dea.mod)
  set_tests_properties(dea_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(dea_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(dea_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME diet_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/diet.mod)
  set_tests_properties(diet_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(diet_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(diet_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME dist_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/dist.mod)
  set_tests_properties(dist_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(dist_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(dist_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME egypt_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/egypt.mod)
  set_tests_properties(egypt_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(egypt_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(egypt_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME fctp_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/fctp.mod)
  set_tests_properties(fctp_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(fctp_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(fctp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME food2_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/food2.mod)
  set_tests_properties(food2_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(food2_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(food2_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME food_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/food.mod)
  set_tests_properties(food_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(food_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(food_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME gap_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/gap.mod)
  set_tests_properties(gap_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(gap_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(gap_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME graph_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/graph.mod)
  set_tests_properties(graph_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(graph_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(graph_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME hashi_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/hashi.mod)
  set_tests_properties(hashi_mod_glpsol PROPERTIES TIMEOUT 3000)
  set_tests_properties(hashi_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG;LONG")
  if (WIN32)
    set_tests_properties(hashi_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME huge_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/huge.mod)
  set_tests_properties(huge_mod_glpsol PROPERTIES TIMEOUT 60)
  set_tests_properties(huge_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(huge_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME jssp_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/jssp.mod)
  set_tests_properties(jssp_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(jssp_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(jssp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME magic_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/magic.mod)
  set_tests_properties(magic_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(magic_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(magic_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME maxcut_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/maxcut.mod)
  set_tests_properties(maxcut_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(maxcut_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(maxcut_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME maxflow_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/maxflow.mod)
  set_tests_properties(maxflow_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(maxflow_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(maxflow_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME mfasp_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/mfasp.mod)
  set_tests_properties(mfasp_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(mfasp_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(mfasp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME mfvsp_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/mfvsp.mod)
  set_tests_properties(mfvsp_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(mfvsp_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(mfvsp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME min01ks_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/min01ks.mod)
  set_tests_properties(min01ks_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(min01ks_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(min01ks_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME misp_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/misp.mod)
  set_tests_properties(misp_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(misp_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(misp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME money_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/money.mod)
  set_tests_properties(money_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(money_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(money_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME mvcp_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/mvcp.mod)
  set_tests_properties(mvcp_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(mvcp_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(mvcp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME numbrix_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/numbrix.mod)
  set_tests_properties(numbrix_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(numbrix_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(numbrix_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME plan_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/plan.mod)
  set_tests_properties(plan_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(plan_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(plan_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME prod_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/prod.mod)
  set_tests_properties(prod_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(prod_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(prod_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME qfit_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/qfit.mod)
  set_tests_properties(qfit_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(qfit_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(qfit_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME queens_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/queens.mod)
  set_tests_properties(queens_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(queens_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(queens_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME sat_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/sat.mod)
  set_tests_properties(sat_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(sat_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(sat_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME shiftcov_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/shiftcov.mod)
  set_tests_properties(shiftcov_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(shiftcov_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(shiftcov_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME shikaku_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/shikaku.mod)
  set_tests_properties(shikaku_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(shikaku_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(shikaku_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME sorting_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/sorting.mod)
  set_tests_properties(sorting_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(sorting_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(sorting_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME spp_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/spp.mod)
  set_tests_properties(spp_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(spp_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(spp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME stigler_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/stigler.mod)
  set_tests_properties(stigler_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(stigler_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(stigler_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME sudoku_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/sudoku.mod)
  set_tests_properties(sudoku_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(sudoku_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(sudoku_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME tas_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/tas.mod)
  set_tests_properties(tas_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(tas_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(tas_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME todd_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/todd.mod)
  set_tests_properties(todd_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(todd_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(todd_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME train_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/train.mod)
  set_tests_properties(train_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(train_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(train_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME transp_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/transp.mod)
  set_tests_properties(transp_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(transp_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(transp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME trick_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/trick.mod)
  set_tests_properties(trick_mod_glpsol PROPERTIES TIMEOUT 3000)
  set_tests_properties(trick_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG;LONG")
  if (WIN32)
    set_tests_properties(trick_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME tsp_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/tsp.mod)
  set_tests_properties(tsp_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(tsp_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(tsp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME xyacfs_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/xyacfs.mod)
  set_tests_properties(xyacfs_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(xyacfs_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(xyacfs_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME yacfs_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/yacfs.mod)
  set_tests_properties(yacfs_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(yacfs_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(yacfs_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME zebra_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/zebra.mod)
  set_tests_properties(zebra_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(zebra_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(zebra_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME csv_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math transp_csv.mod
           WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/examples/csv)
  set_tests_properties(csv_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(csv_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG;FAIL")
  if (WIN32)
    set_tests_properties(csv_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()
  add_test(NAME dbf_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/dbf/ForestMgt_Model_I_GIS_dbf.mod
           WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/examples/dbf)
  set_tests_properties(dbf_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(dbf_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG;FAIL")
  if (WIN32)
    set_tests_properties(dbf_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()

  add_test(NAME pbn_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/pbn/pbn.mod)
  set_tests_properties(pbn_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(pbn_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG")
  if (WIN32)
    set_tests_properties(pbn_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()
  if (GLPK_WITH_ODBC)
    add_test(NAME odbc_sudoku_mod_glpsol
             COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/sql/sudoku_odbc.mod)
    set_tests_properties(odbc_sudoku_mod_glpsol PROPERTIES TIMEOUT 30)
    set_tests_properties(odbc_sudoku_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG;ODBC")
    if (WIN32)
      set_tests_properties(odbc_sudoku_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
    endif ()
    
    add_test(NAME odbc_transp_mod_glpsol
             COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/sql/transp_odbc.mod)
    set_tests_properties(odbc_transp_mod_glpsol PROPERTIES TIMEOUT 30)
    set_tests_properties(odbc_transp_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG;ODBC")
    if (WIN32)
      set_tests_properties(odbc_transp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
    endif ()
  endif ()

  if (GLPK_WITH_MYSQL)
    add_test(NAME mysql_sudoku_mod_glpsol
             COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/sql/sudoku_mysql.mod)
    set_tests_properties(mysql_sudoku_mod_glpsol PROPERTIES TIMEOUT 30)
    set_tests_properties(mysql_sudoku_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG;MYSQL")
    if (WIN32)
      set_tests_properties(mysql_sudoku_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
    endif ()
    
    add_test(NAME mysql_transp_mod_glpsol
             COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_CURRENT_SOURCE_DIR}/examples/sql/transp_mysql.mod)
    set_tests_properties(mysql_transp_mod_glpsol PROPERTIES TIMEOUT 30)
    set_tests_properties(mysql_transp_mod_glpsol PROPERTIES LABELS "DISTRIB;MATHPROG;MYSQL")
    if (WIN32)
      set_tests_properties(mysql_transp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
    endif ()
  endif ()
endif ()
