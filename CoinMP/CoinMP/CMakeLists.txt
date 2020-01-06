get_ac_init_version(${CoinMP_DIR}/configure.ac COINMP)

option(COINMP_BUILD_EXAMPLES "Enable the building of examples" OFF)

set(COINMP_VERSION_MAJOR   "${COINMP_MAJOR_VERSION}"  CACHE STRING "The CoinMP major version number")
set(COINMP_VERSION_MINOR   "${COINMP_MINOR_VERSION}"  CACHE STRING "The CoinMP minor version number")
set(COINMP_VERSION_RELEASE "${COINMP_PATCH_VERSION}"  CACHE STRING "The CoinMP patch version number")
set(COINMP_VERSION         "${COINMP_VERSION_STRING}" CACHE STRING "The CoinMP version")

set(COINMP_WC_REVISION "0")
if (EXISTS "${CoinMP_DIR}/../.svn")
  find_package(Subversion)
  if (Subversion_FOUND)
    Subversion_WC_INFO(${CoinMP_DIR}/.. COINMP)
  endif ()
endif ()

if (EXISTS "${CoinMP_DIR}/../.git")
  find_package(Git)
  if (Git_FOUND)
    include(export_git)
    GIT_WC_INFO(${CoinMP_DIR}/.. COINMP)
    set(COINMP_WC_REVISION "${COINMP_WC_SVNEQUIV}") # alphanumeric rev not yet managed
  endif ()
endif ()

message(STATUS "Current COINMP revision is ${COINMP_WC_REVISION}")
set(COINMP_SVN_REV "${COINMP_WC_REVISION}" CACHE STRING "The COINMP subversion revision" FORCE)

add_definitions(-DCOINMP_BUILD)

if (CMAKE_COMPILER_IS_GNUCXX)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pedantic-errors -Wparentheses -Wreturn-type -Wcast-qual -Wall -Wpointer-arith -Wwrite-strings -Wconversion -Wno-unknown-pragmas -Wno-long-long")
endif ()

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/include/config.h.in        ${CMAKE_BINARY_DIR}/CoinMP/include/config.h)
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/include/config_coinmp.h.in ${CMAKE_BINARY_DIR}/CoinMP/include/config_coinmp.h)

#
# pkg-config file generation
#

set(prefix            "${CMAKE_INSTALL_PREFIX}")
set(exec_prefix       "\${prefix}")
set(libdir            "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}")
set(includedir        "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}")
set(COINMP_PCLIBS     "")
set(COINMP_PCREQUIRES "cbc clp osi-clp")
set(PACKAGE_VERSION   "${COINMP_VERSION}")

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/coinmp.pc.in ${CMAKE_BINARY_DIR}/CoinMP/coinmp.pc @ONLY)

set(libdir            "${CoinMP_DIR}")
set(abs_source_dir    "${CMAKE_BINARY_DIR}/bin")

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/coinmp-uninstalled.pc.in ${CMAKE_BINARY_DIR}/CoinMP/coinmp-uninstalled.pc @ONLY)

install(FILES ${CMAKE_BINARY_DIR}/CoinMP/coinmp.pc
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}/pkg-config/)

#
# Build
#

set(CoinMP_SRC_LIST ${CoinMP_DIR}/src/CoinMP.cpp
                    ${CoinMP_DIR}/src/CoinProblem.c
                    ${CoinMP_DIR}/src/CoinResult.c
                    ${CoinMP_DIR}/src/CoinSolver.c
                    ${CoinMP_DIR}/src/CoinOption.c
                    ${CoinMP_DIR}/src/CoinCbc.cpp)

if (COIN_ENABLE_COMPAT)
  set(CoinMP_SRC_LIST ${CoinMP_SRC_LIST}
                      ${CMAKE_CURRENT_SOURCE_DIR}/../cmake/compat.cpp
                      ${CMAKE_CURRENT_SOURCE_DIR}/../cmake/compat.c)
endif ()

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinMP_DIR}/src)

if (USE_COINOR_BIN)
  include_directories(${COINOR_DIR}/include)
  
  add_library(libCoinUtils STATIC IMPORTED)
  add_library(libCgl STATIC IMPORTED)
  add_library(libOsi STATIC IMPORTED)
  add_library(libOsiClp STATIC IMPORTED)
  add_library(libClp STATIC IMPORTED)
  add_library(libCbc STATIC IMPORTED)

  if (WIN32 AND NOT MINGW)
    set_property(TARGET libCoinUtils PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libCoinUtils.lib)
    set_property(TARGET libCgl       PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libCgl.lib)
    set_property(TARGET libOsi       PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libOsi.lib)
    set_property(TARGET libOsiClp    PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libOsiClp.lib)
    set_property(TARGET libClp       PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libClp.lib)
    set_property(TARGET libCbc       PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libCbc.lib)
  else ()
    set_property(TARGET libCoinUtils PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libCoinUtils.a)
    set_property(TARGET libCgl       PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libCgl.a)
    set_property(TARGET libOsi       PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libOsi.a)
    set_property(TARGET libOsiClp    PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libOsiClp.a)
    set_property(TARGET libClp       PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libClp.a)
    set_property(TARGET libCbc       PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libCbc.a)
  endif ()
else ()
  include_directories(${CoinUtils_DIR}/src)
  include_directories(${Clp_DIR}/src)
  include_directories(${Clp_DIR}/src/OsiClp)
  include_directories(${Cbc_DIR}/src)
  include_directories(${Cgl_DIR}/src)
  include_directories(${Cgl_DIR}/src/CglAllDifferent)
  include_directories(${Cgl_DIR}/src/CglClique)
  include_directories(${Cgl_DIR}/src/CglDuplicateRow)
  include_directories(${Cgl_DIR}/src/CglFlowCover)
  include_directories(${Cgl_DIR}/src/CglGomory)
  include_directories(${Cgl_DIR}/src/CglGMI)
  include_directories(${Cgl_DIR}/src/CglKnapsackCover)
  include_directories(${Cgl_DIR}/src/CglLandP)
  include_directories(${Cgl_DIR}/src/CglLiftAndProject)
  include_directories(${Cgl_DIR}/src/CglMixedIntegerRounding)
  include_directories(${Cgl_DIR}/src/CglMixedIntegerRounding2)
  include_directories(${Cgl_DIR}/src/CglOddHole)
  include_directories(${Cgl_DIR}/src/CglPreProcess)
  include_directories(${Cgl_DIR}/src/CglProbing)
  include_directories(${Cgl_DIR}/src/CglRedSplit)
  include_directories(${Cgl_DIR}/src/CglRedSplit2)
  include_directories(${Cgl_DIR}/src/CglResidualCapacity)
  include_directories(${Cgl_DIR}/src/CglSimpleRounding)
  include_directories(${Cgl_DIR}/src/CglTwomir)
  include_directories(${Cgl_DIR}/src/CglZeroHalf)
  include_directories(${Cgl_DIR}/src/CglProbing)
  include_directories(${Osi_DIR}/src)
  include_directories(${Osi_DIR}/src/Osi)
endif ()

macro(set_include_directories TARGET)
  if (USE_COINOR_BIN)
    target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinMP/include)
    target_include_directories(${TARGET} BEFORE PRIVATE ${COINOR_DIR}/include)
  else ()
    target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Clp/include)
    target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Cbc/include)
    target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  endif ()
endmacro ()

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libCoinMP SHARED ${CoinMP_SRC_LIST})
else ()
  add_library(libCoinMP STATIC ${CoinMP_SRC_LIST})
endif ()
if (COIN_COMPILE_LTO)
  set_target_properties(libCoinMP PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32)
  set_target_properties(libCoinMP PROPERTIES PREFIX "")
endif ()

set_include_directories(libCoinMP)

if (COINMP_BUILD_EXAMPLES)
  macro(add_example Name)
    add_executable(${Name} ${ARGN})
    target_link_libraries(${Name} libCoinMP libCbc libCgl libOsiClp libOsi libClp libCoinUtils)
    set_include_directories(${Name})
    if (COIN_COMPILE_LTO)
      set_target_properties(libCoinMP PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
    endif ()
    if (COIN_HAS_LAPACK OR COIN_USE_LAPACK)
      target_link_libraries(${Name} lapack)
    endif ()
    if (COIN_HAS_BLAS OR COIN_USE_BLAS)
      target_link_libraries(${Name} blas)
    endif ()
    if (COIN_ENABLE_DOWNLOAD_CLAPACK)
      target_link_libraries(${Name} f2c)
    endif ()
    if ((COIN_HAS_BLAS OR COIN_HAS_LAPACK) AND (UNIX OR MINGW) AND NOT COIN_USE_LAPACK)
      target_link_libraries(${Name} gfortran)
    endif ()
    if (COINUTILS_HAS_ZLIB)
      target_link_libraries(${Name} ${ZLIB_NAME})
    endif ()
    if (COINUTILS_HAS_BZLIB)
      target_link_libraries(${Name} ${BZLIB_NAME})
    endif ()
    if (COIN_HAS_GLPK)
      target_link_libraries(${Name} libOsiGlpk glpk)
    endif ()
    if (COIN_HAS_AMD)
      target_link_libraries(${Name} amd)
    endif ()
    if (COIN_HAS_CHOLMOD)
      target_link_libraries(${Name} cholmod suitesparseconfig amd ccolamd colamd camd)
    endif () 
    if (CBC_USE_THREADS OR COINUTILS_USE_THREADS)
      if (MINGW)
        target_link_libraries(${Name} winpthread)
      elseif (NOT WIN32)
        target_link_libraries(${Name} pthread)
      else ()
        target_link_libraries(${Name} pthreadVC2)
      endif ()
    endif ()
    if (READLINE_FOUND)
      target_link_libraries(${Name} ${READLINE_LIBRARIES})
    endif ()  
    if (COIN_HAS_MUMPS)
      if ("${CMAKE_Fortran_COMPILER_ID}" STREQUAL "Intel")
        target_link_libraries(${Name} dmumps mumps_common seq blas lapack ifort pthread)
      else ()
        target_link_libraries(${Name} dmumps mumps_common seq blas lapack gfortran pthread)
      endif ()
    endif ()
    if (COIN_ENABLE_DOWNLOAD_METIS OR COIN_USE_METIS)
      target_link_libraries(${Name} metis m)
    endif ()  
  endmacro ()
  
  add_example(example ${CoinMP_DIR}/examples/example.c)
  
  add_test(NAME coinmp_example
           COMMAND $<TARGET_FILE:example> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample)
  set_tests_properties(coinmp_example PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(coinmp_example PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/lib\\;${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/bin")
  endif ()
endif ()

install(TARGETS libCoinMP
        RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR}
        LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}/static)

install(FILES ${CoinMP_DIR}/src/CoinMP.h 
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}/coin)

install(FILES ${CMAKE_BINARY_DIR}/CoinMP/include/config_coinmp.h
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}/coin
        RENAME CoinMPConfig.h)
