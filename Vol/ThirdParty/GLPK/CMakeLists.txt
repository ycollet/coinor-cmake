cmake_minimum_required(VERSION 3.0.2)

project(Glpk)

option(GLPK_WITH_DL       "enable shared library support" OFF)
option(GLPK_WITH_OBDC     "enable MathProg ODBC support"  OFF)
option(GLPK_WITH_MYSQL    "enable MathProg MySQL support" OFF)
option(GLPK_WITH_GMP      "use GNU MP bignum library"     OFF)
option(GLPK_WITH_OLDAPI   "build the Glpk old API"        OFF)
option(GLPK_WITH_CPLEXAPI "build the Glpk CPLEX API"      OFF)

option(COIN_ENABLE_DOWNLOAD_DATA_TEST "Enable the download / run of Data tests from Coin website" OFF)

# Compilation options
option(ENABLE_SHARED_LIBRARIES       "Build libraries as shared libraries" OFF)
option(GLPK_COMPILE_STATIC           "Activate the static linking" OFF)
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
                      ${CMAKE_SOURCE_DIR}/cmake)

Enable_Testing()

#------------------------------------------------------------
# Detect 64 bits
#------------------------------------------------------------

if (CMAKE_SIZEOF_VOID_P EQUAL 4)
  set(HAVE_64_BIT 0)
else ()
  set(HAVE_64_BIT 1)
endif ()

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
set(PACKAGE_VERSION   "4.60")

if (CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/../glpk_binary" 
      CACHE PATH "Glpk install prefix" FORCE)
endif (CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)

#-----------------------------------------------------------------------------
# Manage compilation options
#-----------------------------------------------------------------------------

if (UNIX)
  if (GLPK_COMPILE_STATIC)
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static -z muldefs")
    endif ()
  elseif (GLPK_COMPILE_COVERAGE)
    set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} --coverage -fno-inline")
  elseif (GLPK_COMPILE_PROFILE)
    set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -pg")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -pg")
  elseif (GLPK_COMPILE_PROFILE_VALGRIND)
    set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -p")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -p")
  else ()
    set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -Wno-deprecated -fPIC")
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -z muldefs")
    endif ()
  endif ()
  
  if (GLPK_COMPILE_LTO)
    if (CMAKE_CXX_COMPILER_ID STREQUAL "Intel")
      set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -lto")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lto")
    endif ()
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -flto")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -flto")
    endif ()
  elseif (GLPK_COMPILE_WHOPR)
    if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
      set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} -fwhopr")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fwhopr")
    endif ()
  endif ()
elseif (WIN32)
  if (MSVC)
    if (GLPK_COMPILE_LTO OR GLPK_COMPILE_WHOPR)
      set(CMAKE_CXX_FLAGS        "${CMAKE_CXX_FLAGS} /GL ")
      set(CMAKE_C_FLAGS          "${CMAKE_C_FLAGS} /GL ")
      set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /LTCG ")
    endif ()
  endif ()
endif ()

include(CheckIncludeFile)

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
  #set(ODBC_DLNAME "${LIBIODBC}") # Static case ?
  set(ODBC_DLNAME "${LIBODBC}")
endif ()

if (GLPK_WITH_MYSQL)
  add_include_directories(/usr/include/mysql)
  set(MYSQL_DLNAME "${LIBMYSQL}")
endif ()

# Check include files

check_include_file("gmp.h"      HAVE_GMP)
check_include_file("sys/time.h" HAVE_SYS_TIME_H)
check_include_file("dlfcn.h"    HAVE_DLFCN)

include(CheckSymbolExists)

check_symbol_exists(gettimeofday sys/time.h HAVE_GETTIMEOFDAY)

find_library(HAVE_LTDL ltdl)

if (CMAKE_CXX_COMPILER_ID STREQUAL "Intel")
  add_definitions(-DINTEL_COMPILER)
endif ()

configure_file(${CMAKE_SOURCE_DIR}/config.h.in ${CMAKE_BINARY_DIR}/Glpk/config.h)
include_directories(${CMAKE_BINARY_DIR}/Glpk)

add_definitions(-DHAVE_CONFIG_H)

#
# Windows compilation
#

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS)
endif ()

#
# Build libraries and executables
#

# Library

include_directories(${CMAKE_SOURCE_DIR}/src)
include_directories(${CMAKE_SOURCE_DIR}/src/amd)
include_directories(${CMAKE_SOURCE_DIR}/src/api)
include_directories(${CMAKE_SOURCE_DIR}/src/bflib)
include_directories(${CMAKE_SOURCE_DIR}/src/cglib)
include_directories(${CMAKE_SOURCE_DIR}/src/colamd)
include_directories(${CMAKE_SOURCE_DIR}/src/env)
include_directories(${CMAKE_SOURCE_DIR}/src/minisat)
include_directories(${CMAKE_SOURCE_DIR}/src/misc)
include_directories(${CMAKE_SOURCE_DIR}/src/mpl)
include_directories(${CMAKE_SOURCE_DIR}/src/proxy)
include_directories(${CMAKE_SOURCE_DIR}/src/simplex)
include_directories(${CMAKE_SOURCE_DIR}/src/zlib)

# libglpk_la_LDFLAGS = -version-info 37:2:1 -export-symbols-regex '^glp_*'

set(GLPK_SRCS ${CMAKE_SOURCE_DIR}/src/bfd.c
              ${CMAKE_SOURCE_DIR}/src/bfx.c
              ${CMAKE_SOURCE_DIR}/src/glpapi01.c
              ${CMAKE_SOURCE_DIR}/src/glpapi02.c
              ${CMAKE_SOURCE_DIR}/src/glpapi03.c
              ${CMAKE_SOURCE_DIR}/src/glpapi04.c
              ${CMAKE_SOURCE_DIR}/src/glpapi05.c
              ${CMAKE_SOURCE_DIR}/src/glpapi06.c
              ${CMAKE_SOURCE_DIR}/src/glpapi07.c
              ${CMAKE_SOURCE_DIR}/src/glpapi08.c
              ${CMAKE_SOURCE_DIR}/src/glpapi09.c
              ${CMAKE_SOURCE_DIR}/src/glpapi10.c
              ${CMAKE_SOURCE_DIR}/src/glpapi12.c
              ${CMAKE_SOURCE_DIR}/src/glpapi13.c
              ${CMAKE_SOURCE_DIR}/src/glphbm.c
              ${CMAKE_SOURCE_DIR}/src/glpios01.c
              ${CMAKE_SOURCE_DIR}/src/glpios02.c
              ${CMAKE_SOURCE_DIR}/src/glpios03.c
              ${CMAKE_SOURCE_DIR}/src/glpios07.c
              ${CMAKE_SOURCE_DIR}/src/glpios09.c
              ${CMAKE_SOURCE_DIR}/src/glpios10.c
              ${CMAKE_SOURCE_DIR}/src/glpios11.c
              ${CMAKE_SOURCE_DIR}/src/glpios12.c
              ${CMAKE_SOURCE_DIR}/src/glpipm.c
              ${CMAKE_SOURCE_DIR}/src/glpmat.c
              ${CMAKE_SOURCE_DIR}/src/glpnpp01.c
              ${CMAKE_SOURCE_DIR}/src/glpnpp02.c
              ${CMAKE_SOURCE_DIR}/src/glpnpp03.c
              ${CMAKE_SOURCE_DIR}/src/glpnpp04.c
              ${CMAKE_SOURCE_DIR}/src/glpnpp05.c
              ${CMAKE_SOURCE_DIR}/src/glpnpp06.c
              ${CMAKE_SOURCE_DIR}/src/glprgr.c
              ${CMAKE_SOURCE_DIR}/src/glpscl.c
              ${CMAKE_SOURCE_DIR}/src/glpspm.c
              ${CMAKE_SOURCE_DIR}/src/glpssx01.c
              ${CMAKE_SOURCE_DIR}/src/glpssx02.c
              ${CMAKE_SOURCE_DIR}/src/lux.c
              ${CMAKE_SOURCE_DIR}/src/spv.c
              ${CMAKE_SOURCE_DIR}/src/amd/amd_1.c
              ${CMAKE_SOURCE_DIR}/src/amd/amd_2.c
              ${CMAKE_SOURCE_DIR}/src/amd/amd_aat.c
              ${CMAKE_SOURCE_DIR}/src/amd/amd_control.c
              ${CMAKE_SOURCE_DIR}/src/amd/amd_defaults.c
              ${CMAKE_SOURCE_DIR}/src/amd/amd_dump.c
              ${CMAKE_SOURCE_DIR}/src/amd/amd_info.c
              ${CMAKE_SOURCE_DIR}/src/amd/amd_order.c
              ${CMAKE_SOURCE_DIR}/src/amd/amd_post_tree.c
              ${CMAKE_SOURCE_DIR}/src/amd/amd_postorder.c
              ${CMAKE_SOURCE_DIR}/src/amd/amd_preprocess.c
              ${CMAKE_SOURCE_DIR}/src/amd/amd_valid.c
              ${CMAKE_SOURCE_DIR}/src/api/advbas.c
              ${CMAKE_SOURCE_DIR}/src/api/asnhall.c
              ${CMAKE_SOURCE_DIR}/src/api/asnlp.c
              ${CMAKE_SOURCE_DIR}/src/api/asnokalg.c
              ${CMAKE_SOURCE_DIR}/src/api/ckasn.c
              ${CMAKE_SOURCE_DIR}/src/api/ckcnf.c
              ${CMAKE_SOURCE_DIR}/src/api/cplex.c
              ${CMAKE_SOURCE_DIR}/src/api/cpp.c
              ${CMAKE_SOURCE_DIR}/src/api/cpxbas.c
              ${CMAKE_SOURCE_DIR}/src/api/graph.c
              ${CMAKE_SOURCE_DIR}/src/api/gridgen.c
              ${CMAKE_SOURCE_DIR}/src/api/intfeas1.c
              ${CMAKE_SOURCE_DIR}/src/api/maxffalg.c
              ${CMAKE_SOURCE_DIR}/src/api/maxflp.c
              ${CMAKE_SOURCE_DIR}/src/api/mcflp.c
              ${CMAKE_SOURCE_DIR}/src/api/mcfokalg.c
              ${CMAKE_SOURCE_DIR}/src/api/mcfrelax.c
              ${CMAKE_SOURCE_DIR}/src/api/minisat1.c
              ${CMAKE_SOURCE_DIR}/src/api/mpl.c
              ${CMAKE_SOURCE_DIR}/src/api/mps.c
              ${CMAKE_SOURCE_DIR}/src/api/netgen.c
              ${CMAKE_SOURCE_DIR}/src/api/pript.c
              ${CMAKE_SOURCE_DIR}/src/api/prmip.c
              ${CMAKE_SOURCE_DIR}/src/api/prrngs.c
              ${CMAKE_SOURCE_DIR}/src/api/prsol.c
              ${CMAKE_SOURCE_DIR}/src/api/rdasn.c
              ${CMAKE_SOURCE_DIR}/src/api/rdcc.c
              ${CMAKE_SOURCE_DIR}/src/api/rdcnf.c
              ${CMAKE_SOURCE_DIR}/src/api/rdipt.c
              ${CMAKE_SOURCE_DIR}/src/api/rdmaxf.c
              ${CMAKE_SOURCE_DIR}/src/api/rdmcf.c
              ${CMAKE_SOURCE_DIR}/src/api/rdmip.c
              ${CMAKE_SOURCE_DIR}/src/api/rdprob.c
              ${CMAKE_SOURCE_DIR}/src/api/rdsol.c
              ${CMAKE_SOURCE_DIR}/src/api/rmfgen.c
              ${CMAKE_SOURCE_DIR}/src/api/strong.c
              ${CMAKE_SOURCE_DIR}/src/api/topsort.c
              ${CMAKE_SOURCE_DIR}/src/api/weak.c
              ${CMAKE_SOURCE_DIR}/src/api/wcliqex.c
              ${CMAKE_SOURCE_DIR}/src/api/wrasn.c
              ${CMAKE_SOURCE_DIR}/src/api/wrcc.c
              ${CMAKE_SOURCE_DIR}/src/api/wrcnf.c
              ${CMAKE_SOURCE_DIR}/src/api/wript.c
              ${CMAKE_SOURCE_DIR}/src/api/wrmaxf.c
              ${CMAKE_SOURCE_DIR}/src/api/wrmcf.c
              ${CMAKE_SOURCE_DIR}/src/api/wrmip.c
              ${CMAKE_SOURCE_DIR}/src/api/wrprob.c
              ${CMAKE_SOURCE_DIR}/src/api/wrsol.c
              ${CMAKE_SOURCE_DIR}/src/bflib/btf.c
              ${CMAKE_SOURCE_DIR}/src/bflib/btfint.c
              ${CMAKE_SOURCE_DIR}/src/bflib/fhv.c
              ${CMAKE_SOURCE_DIR}/src/bflib/fhvint.c
              ${CMAKE_SOURCE_DIR}/src/bflib/fvs.c
              ${CMAKE_SOURCE_DIR}/src/bflib/ifu.c
              ${CMAKE_SOURCE_DIR}/src/bflib/luf.c
              ${CMAKE_SOURCE_DIR}/src/bflib/lufint.c
              ${CMAKE_SOURCE_DIR}/src/bflib/scf.c
              ${CMAKE_SOURCE_DIR}/src/bflib/scfint.c
              ${CMAKE_SOURCE_DIR}/src/bflib/sgf.c
              ${CMAKE_SOURCE_DIR}/src/bflib/sva.c
              ${CMAKE_SOURCE_DIR}/src/cglib/cfg.c
              ${CMAKE_SOURCE_DIR}/src/cglib/cfg1.c
              ${CMAKE_SOURCE_DIR}/src/cglib/cfg2.c
              ${CMAKE_SOURCE_DIR}/src/cglib/clqcut.c
              ${CMAKE_SOURCE_DIR}/src/cglib/gmicut.c
              ${CMAKE_SOURCE_DIR}/src/cglib/gmigen.c
              ${CMAKE_SOURCE_DIR}/src/cglib/mirgen.c
              ${CMAKE_SOURCE_DIR}/src/colamd/colamd.c
              ${CMAKE_SOURCE_DIR}/src/env/alloc.c
              ${CMAKE_SOURCE_DIR}/src/env/dlsup.c
              ${CMAKE_SOURCE_DIR}/src/env/env.c
              ${CMAKE_SOURCE_DIR}/src/env/error.c
              ${CMAKE_SOURCE_DIR}/src/env/stdout.c
              ${CMAKE_SOURCE_DIR}/src/env/stream.c
              ${CMAKE_SOURCE_DIR}/src/env/time.c
              ${CMAKE_SOURCE_DIR}/src/env/tls.c
              ${CMAKE_SOURCE_DIR}/src/minisat/minisat.c
              ${CMAKE_SOURCE_DIR}/src/misc/avl.c
              ${CMAKE_SOURCE_DIR}/src/misc/bignum.c
              ${CMAKE_SOURCE_DIR}/src/misc/dimacs.c
              ${CMAKE_SOURCE_DIR}/src/misc/dmp.c
              ${CMAKE_SOURCE_DIR}/src/misc/ffalg.c
              ${CMAKE_SOURCE_DIR}/src/misc/fp2rat.c
              ${CMAKE_SOURCE_DIR}/src/misc/gcd.c
              ${CMAKE_SOURCE_DIR}/src/misc/jd.c
              ${CMAKE_SOURCE_DIR}/src/misc/keller.c
              ${CMAKE_SOURCE_DIR}/src/misc/mc13d.c
              ${CMAKE_SOURCE_DIR}/src/misc/mc21a.c
              ${CMAKE_SOURCE_DIR}/src/misc/mygmp.c
              ${CMAKE_SOURCE_DIR}/src/misc/okalg.c
              ${CMAKE_SOURCE_DIR}/src/misc/qmd.c
              ${CMAKE_SOURCE_DIR}/src/misc/relax4.c
              ${CMAKE_SOURCE_DIR}/src/misc/rng.c
              ${CMAKE_SOURCE_DIR}/src/misc/rng1.c
              ${CMAKE_SOURCE_DIR}/src/misc/round2n.c
              ${CMAKE_SOURCE_DIR}/src/misc/str2int.c
              ${CMAKE_SOURCE_DIR}/src/misc/str2num.c
              ${CMAKE_SOURCE_DIR}/src/misc/strspx.c
              ${CMAKE_SOURCE_DIR}/src/misc/strtrim.c
              ${CMAKE_SOURCE_DIR}/src/misc/triang.c
              ${CMAKE_SOURCE_DIR}/src/misc/wclique.c
              ${CMAKE_SOURCE_DIR}/src/misc/wclique1.c
              ${CMAKE_SOURCE_DIR}/src/mpl/mpl1.c
              ${CMAKE_SOURCE_DIR}/src/mpl/mpl2.c
              ${CMAKE_SOURCE_DIR}/src/mpl/mpl3.c
              ${CMAKE_SOURCE_DIR}/src/mpl/mpl4.c
              ${CMAKE_SOURCE_DIR}/src/mpl/mpl5.c
              ${CMAKE_SOURCE_DIR}/src/mpl/mpl6.c
              ${CMAKE_SOURCE_DIR}/src/mpl/mplsql.c
              ${CMAKE_SOURCE_DIR}/src/proxy/proxy.c
              ${CMAKE_SOURCE_DIR}/src/proxy/proxy1.c
              ${CMAKE_SOURCE_DIR}/src/simplex/spxat.c
              ${CMAKE_SOURCE_DIR}/src/simplex/spxchuzc.c
              ${CMAKE_SOURCE_DIR}/src/simplex/spxchuzr.c
              ${CMAKE_SOURCE_DIR}/src/simplex/spxlp.c
              ${CMAKE_SOURCE_DIR}/src/simplex/spxnt.c
              ${CMAKE_SOURCE_DIR}/src/simplex/spxprim.c
              ${CMAKE_SOURCE_DIR}/src/simplex/spxprob.c
              ${CMAKE_SOURCE_DIR}/src/simplex/spychuzc.c
              ${CMAKE_SOURCE_DIR}/src/simplex/spychuzr.c
              ${CMAKE_SOURCE_DIR}/src/simplex/spydual.c
              ${CMAKE_SOURCE_DIR}/src/zlib/adler32.c
              ${CMAKE_SOURCE_DIR}/src/zlib/compress.c
              ${CMAKE_SOURCE_DIR}/src/zlib/crc32.c
              ${CMAKE_SOURCE_DIR}/src/zlib/deflate.c
              ${CMAKE_SOURCE_DIR}/src/zlib/gzclose.c
              ${CMAKE_SOURCE_DIR}/src/zlib/gzlib.c
              ${CMAKE_SOURCE_DIR}/src/zlib/gzread.c
              ${CMAKE_SOURCE_DIR}/src/zlib/gzwrite.c
              ${CMAKE_SOURCE_DIR}/src/zlib/inffast.c
              ${CMAKE_SOURCE_DIR}/src/zlib/inflate.c
              ${CMAKE_SOURCE_DIR}/src/zlib/inftrees.c
              ${CMAKE_SOURCE_DIR}/src/zlib/trees.c
              ${CMAKE_SOURCE_DIR}/src/zlib/uncompr.c
              ${CMAKE_SOURCE_DIR}/src/zlib/zio.c
              ${CMAKE_SOURCE_DIR}/src/zlib/zutil.c)

if (ENABLE_SHARED_LIBRARIES)
  add_library(glpk SHARED ${GLPK_SRCS})
else ()
  add_library(glpk STATIC ${GLPK_SRCS})
endif ()

# Examples

add_executable(glpsol ${CMAKE_SOURCE_DIR}/examples/glpsol.c)
target_link_libraries(glpsol glpk)
if (NOT WIN32)
  target_link_libraries(glpsol m)
endif ()

#check: glpsol$(EXEEXT)
#	./glpsol$(EXEEXT) --version
#	./glpsol$(EXEEXT) --mps $(srcdir)/plan.mps

add_executable(iptsamp examples/iptsamp.c)
target_link_libraries(iptsamp glpk)
if (NOT WIN32)
  target_link_libraries(iptsamp m)
endif ()

add_executable(mplsamp1 examples/mplsamp1.c)
target_link_libraries(mplsamp1 glpk)
if (NOT WIN32)
  target_link_libraries(mplsamp1 m)
endif ()

add_executable(mplsamp2 examples/mplsamp2.c)
target_link_libraries(mplsamp2 glpk)
if (NOT WIN32)
  target_link_libraries(mplsamp2 m)
endif ()

add_executable(netgen examples/netgen.c)
target_link_libraries(netgen glpk)
if (NOT WIN32)
  target_link_libraries(netgen m)
endif ()

add_executable(sample examples/sample.c)
target_link_libraries(sample glpk)
if (NOT WIN32)
  target_link_libraries(sample m)
endif ()

add_executable(spxsamp1 examples/spxsamp1.c)
target_link_libraries(spxsamp1 glpk)
if (NOT WIN32)
  target_link_libraries(spxsamp1 m)
endif ()

add_executable(spxsamp2 examples/spxsamp2.c)
target_link_libraries(spxsamp2 glpk)
if (NOT WIN32)
  target_link_libraries(spxsamp2 m)
endif ()

if (GLPK_WITH_OLDAPI)
  add_library(glpk-oldapi examples/oldapi/lpx.c)
  add_executable(lpxsamp examples/oldapi/lpxsamp.c)
  target_link_libraries(lpxsamp glpk-oldapi glpk)
  target_include_directories(lpxsamp BEFORE PUBLIC examples/oldapi)
  if (NOT WIN32)
    target_link_libraries(lpxsamp m)
  endif ()
endif ()

if (GLPK_WITH_CPLEXAPI)
  add_library(glpk-cplexapi examples/cplex/cplex.c)
  target_include_directories(glpk-cplexapi BEFORE PUBLIC examples/cplex)
endif ()

# Installation rules

install(TARGETS glpk
        DESTINATION lib)

install(TARGETS glpsol
        DESTINATION bin)

install(FILES src/glpk.h
        DESTINATION include)

# Perform some tests

# Create a directory to store results from tests
if (NOT EXISTS ${CMAKE_BINARY_DIR}/tests)
  make_directory(${CMAKE_BINARY_DIR}/tests)
endif()

#
# Mps
#

add_test(NAME alloy_mps_glpsol
         COMMAND $<TARGET_FILE:glpsol> --mps ${CMAKE_SOURCE_DIR}/examples/alloy.mps)
set_tests_properties(alloy_mps_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(alloy_mps_glpsol PROPERTIES LABELS "MPS")
if (WIN32)
  set_tests_properties(alloy_mps_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME furnace_mps_glpsol
         COMMAND $<TARGET_FILE:glpsol> --mps ${CMAKE_SOURCE_DIR}/examples/furnace.mps)
set_tests_properties(furnace_mps_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(furnace_mps_glpsol PROPERTIES LABELS "MPS")
if (WIN32)
  set_tests_properties(furnace_mps_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME icecream_mps_glpsol
         COMMAND $<TARGET_FILE:glpsol> --mps ${CMAKE_SOURCE_DIR}/examples/icecream.mps)
set_tests_properties(icecream_mps_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(icecream_mps_glpsol PROPERTIES LABELS "MPS")
if (WIN32)
  set_tests_properties(icecream_mps_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME murtagh_mps_glpsol
         COMMAND $<TARGET_FILE:glpsol> --mps ${CMAKE_SOURCE_DIR}/examples/murtagh.mps)
set_tests_properties(murtagh_mps_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(murtagh_mps_glpsol PROPERTIES LABELS "MPS")
if (WIN32)
  set_tests_properties(murtagh_mps_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME plan_mps_glpsol
         COMMAND $<TARGET_FILE:glpsol> --mps ${CMAKE_SOURCE_DIR}/examples/plan.mps)
set_tests_properties(plan_mps_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(plan_mps_glpsol PROPERTIES LABELS "MPS")
if (WIN32)
  set_tests_properties(plan_mps_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME samp1_mps_glpsol
         COMMAND $<TARGET_FILE:glpsol> --mps ${CMAKE_SOURCE_DIR}/examples/samp1.mps)
set_tests_properties(samp1_mps_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(samp1_mps_glpsol PROPERTIES LABELS "MPS")
if (WIN32)
  set_tests_properties(samp1_mps_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME samp2_mps_glpsol
         COMMAND $<TARGET_FILE:glpsol> --mps ${CMAKE_SOURCE_DIR}/examples/samp2.mps)
set_tests_properties(samp2_mps_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(samp2_mps_glpsol PROPERTIES LABELS "MPS")
if (WIN32)
  set_tests_properties(samp2_mps_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

#
# Lp files
#

add_test(NAME plan_lp_glpsol
         COMMAND $<TARGET_FILE:glpsol> --lp ${CMAKE_SOURCE_DIR}/examples/plan.lp)
set_tests_properties(plan_lp_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(plan_lp_glpsol PROPERTIES LABELS "LP")
if (WIN32)
  set_tests_properties(plan_lp_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

#
# Mod files
#

add_test(NAME assign_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/assign.mod)
set_tests_properties(assign_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(assign_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(assign_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME bpp_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/bpp.mod)
set_tests_properties(bpp_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(bpp_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(bpp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME cal_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/cal.mod)
set_tests_properties(cal_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(cal_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(cal_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME cf12a_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/cf12a.mod)
set_tests_properties(cf12a_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(cf12a_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(cf12a_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME cf12b_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/cf12b.mod)
set_tests_properties(cf12b_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(cf12b_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(cf12b_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME cflsq_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/cflsq.mod)
set_tests_properties(cflsq_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(cflsq_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(cflsq_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME color_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/color.mod)
set_tests_properties(color_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(color_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(color_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME cpp_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/cpp.mod)
set_tests_properties(cpp_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(cpp_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(cpp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME crypto_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/crypto.mod)
set_tests_properties(crypto_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(crypto_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(crypto_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME dea_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/dea.mod)
set_tests_properties(dea_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(dea_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(dea_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME diet_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/diet.mod)
set_tests_properties(diet_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(diet_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(diet_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME dist_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/dist.mod)
set_tests_properties(dist_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(dist_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(dist_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME egypt_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/egypt.mod)
set_tests_properties(egypt_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(egypt_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(egypt_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME fctp_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/fctp.mod)
set_tests_properties(fctp_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(fctp_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(fctp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME food2_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/food2.mod)
set_tests_properties(food2_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(food2_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(food2_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME food_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/food.mod)
set_tests_properties(food_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(food_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(food_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME gap_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/gap.mod)
set_tests_properties(gap_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(gap_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(gap_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME graph_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/graph.mod)
set_tests_properties(graph_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(graph_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(graph_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME hashi_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/hashi.mod)
set_tests_properties(hashi_mod_glpsol PROPERTIES TIMEOUT 3000)
set_tests_properties(hashi_mod_glpsol PROPERTIES LABELS "MATHPROG;LONG")
if (WIN32)
  set_tests_properties(hashi_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME huge_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/huge.mod)
set_tests_properties(huge_mod_glpsol PROPERTIES TIMEOUT 60)
set_tests_properties(huge_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(huge_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME jssp_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/jssp.mod)
set_tests_properties(jssp_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(jssp_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(jssp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME magic_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/magic.mod)
set_tests_properties(magic_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(magic_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(magic_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME maxcut_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/maxcut.mod)
set_tests_properties(maxcut_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(maxcut_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(maxcut_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME maxflow_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/maxflow.mod)
set_tests_properties(maxflow_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(maxflow_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(maxflow_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME mfasp_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/mfasp.mod)
set_tests_properties(mfasp_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(mfasp_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(mfasp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME mfvsp_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/mfvsp.mod)
set_tests_properties(mfvsp_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(mfvsp_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(mfvsp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME min01ks_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/min01ks.mod)
set_tests_properties(min01ks_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(min01ks_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(min01ks_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME misp_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/misp.mod)
set_tests_properties(misp_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(misp_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(misp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME money_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/money.mod)
set_tests_properties(money_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(money_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(money_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME mvcp_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/mvcp.mod)
set_tests_properties(mvcp_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(mvcp_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(mvcp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME numbrix_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/numbrix.mod)
set_tests_properties(numbrix_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(numbrix_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(numbrix_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME plan_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/plan.mod)
set_tests_properties(plan_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(plan_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(plan_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME prod_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/prod.mod)
set_tests_properties(prod_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(prod_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(prod_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME qfit_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/qfit.mod)
set_tests_properties(qfit_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(qfit_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(qfit_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME queens_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/queens.mod)
set_tests_properties(queens_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(queens_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(queens_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME sat_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/sat.mod)
set_tests_properties(sat_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(sat_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(sat_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME shiftcov_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/shiftcov.mod)
set_tests_properties(shiftcov_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(shiftcov_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(shiftcov_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME shikaku_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/shikaku.mod)
set_tests_properties(shikaku_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(shikaku_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(shikaku_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME sorting_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/sorting.mod)
set_tests_properties(sorting_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(sorting_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(sorting_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME spp_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/spp.mod)
set_tests_properties(spp_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(spp_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(spp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME stigler_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/stigler.mod)
set_tests_properties(stigler_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(stigler_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(stigler_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME sudoku_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/sudoku.mod)
set_tests_properties(sudoku_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(sudoku_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(sudoku_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME tas_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/tas.mod)
set_tests_properties(tas_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(tas_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(tas_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME todd_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/todd.mod)
set_tests_properties(todd_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(todd_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(todd_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME train_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/train.mod)
set_tests_properties(train_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(train_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(train_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME transp_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/transp.mod)
set_tests_properties(transp_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(transp_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(transp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME trick_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/trick.mod)
set_tests_properties(trick_mod_glpsol PROPERTIES TIMEOUT 3000)
set_tests_properties(trick_mod_glpsol PROPERTIES LABELS "MATHPROG;LONG")
if (WIN32)
  set_tests_properties(trick_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME tsp_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/tsp.mod)
set_tests_properties(tsp_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(tsp_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(tsp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME xyacfs_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/xyacfs.mod)
set_tests_properties(xyacfs_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(xyacfs_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(xyacfs_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME yacfs_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/yacfs.mod)
set_tests_properties(yacfs_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(yacfs_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(yacfs_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME zebra_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/zebra.mod)
set_tests_properties(zebra_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(zebra_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(zebra_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME csv_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/csv/transp_csv.mod
         WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/examples/csv)
set_tests_properties(csv_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(csv_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(csv_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME dbf_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/dbf/ForestMgt_Model_I_GIS_dbf.mod
         WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/examples/dbf)
set_tests_properties(dbf_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(dbf_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(dbf_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

add_test(NAME pbn_mod_glpsol
         COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/pbn/pbn.mod)
set_tests_properties(pbn_mod_glpsol PROPERTIES TIMEOUT 30)
set_tests_properties(pbn_mod_glpsol PROPERTIES LABELS "MATHPROG")
if (WIN32)
  set_tests_properties(pbn_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
endif ()

if (GLPK_WITH_ODBC)
  add_test(NAME odbc_sudoku_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/sql/sudoku_odbc.mod)
  set_tests_properties(odbc_sudoku_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(odbc_sudoku_mod_glpsol PROPERTIES LABELS "MATHPROG;ODBC")
  if (WIN32)
    set_tests_properties(odbc_sudoku_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()
  
  add_test(NAME odbc_transp_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/sql/transp_odbc.mod)
  set_tests_properties(odbc_transp_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(odbc_transp_mod_glpsol PROPERTIES LABELS "MATHPROG;ODBC")
  if (WIN32)
    set_tests_properties(odbc_transp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()
endif ()

if (GLPK_WITH_MYSQL)
  add_test(NAME mysql_sudoku_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/sql/sudoku_mysql.mod)
  set_tests_properties(mysql_sudoku_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(mysql_sudoku_mod_glpsol PROPERTIES LABELS "MATHPROG;MYSQL")
  if (WIN32)
    set_tests_properties(mysql_sudoku_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()
  
  add_test(NAME mysql_transp_mod_glpsol
           COMMAND $<TARGET_FILE:glpsol> --math ${CMAKE_SOURCE_DIR}/examples/sql/transp_mysql.mod)
  set_tests_properties(mysql_transp_mod_glpsol PROPERTIES TIMEOUT 30)
  set_tests_properties(mysql_transp_mod_glpsol PROPERTIES LABELS "MATHPROG;MYSQL")
  if (WIN32)
    set_tests_properties(mysql_transp_mod_glpsol PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
  endif ()
endif ()

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
