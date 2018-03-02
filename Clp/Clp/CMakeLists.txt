get_ac_init_version(${CMAKE_SOURCE_DIR}/Clp/configure.ac CLP)

option(CLP_BUILD_EXAMPLES "Enable the building of examples" OFF)

set(CLP_VERSION_MAJOR   "${CLP_MAJOR_VERSION}"  CACHE STRING "The CLP major version number")
set(CLP_VERSION_MINOR   "${CLP_MINOR_VERSION}"  CACHE STRING "The CLP minor version number")
set(CLP_VERSION_RELEASE "${CLP_PATCH_VERSION}"  CACHE STRING "The CLP patch version number")
set(CLP_VERSION         "${CLP_VERSION_STRING}" CACHE STRING "The CLP version")

find_package(Subversion)
if (Subversion_FOUND)
  if (EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/../.svn")
    Subversion_WC_INFO(${CMAKE_CURRENT_SOURCE_DIR} CLP)
  else ()
    set(CLP_WC_REVISION "0")
  endif ()
else ()
  set(CLP_WC_REVISION "0")
endif ()
message(STATUS "Current CLP revision is ${CLP_WC_REVISION}")
set(CLP_SVN_REV "${CLP_WC_REVISION}" CACHE STRING "The CLP subversion revision" PARENT_SCOPE)

mark_as_advanced(CLP_VERSION_MAJOR
                 CLP_VERSION_MINOR
                 CLP_VERSION_RELEASE
                 CLP_VERSION
                 CLP_SVN_REV)

add_definitions(-DCLP_BUILD)

if (CMAKE_COMPILER_IS_GNUCXX)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pedantic-errors -Wparentheses -Wreturn-type -Wcast-qual -Wall -Wpointer-arith -Wwrite-strings -Wconversion -Wno-unknown-pragmas -Wno-long-long")
endif ()

configure_file(${CMAKE_SOURCE_DIR}/Clp/include/config.h.in     ${CMAKE_BINARY_DIR}/Clp/include/config.h)
configure_file(${CMAKE_SOURCE_DIR}/Clp/include/config_clp.h.in ${CMAKE_BINARY_DIR}/Clp/include/config_clp.h)

set(Clp_SRC_LIST ${Clp_DIR}/src/ClpCholeskyBase.cpp
                 ${Clp_DIR}/src/ClpCholeskyDense.cpp
                 ${Clp_DIR}/src/ClpConstraint.cpp
                 ${Clp_DIR}/src/ClpConstraintLinear.cpp
                 ${Clp_DIR}/src/ClpConstraintQuadratic.cpp
                 ${Clp_DIR}/src/Clp_C_Interface.cpp
                 ${Clp_DIR}/src/ClpDualRowDantzig.cpp
                 ${Clp_DIR}/src/ClpDualRowPivot.cpp
                 ${Clp_DIR}/src/ClpDualRowSteepest.cpp
                 ${Clp_DIR}/src/ClpDummyMatrix.cpp
                 ${Clp_DIR}/src/ClpDynamicExampleMatrix.cpp
                 ${Clp_DIR}/src/ClpDynamicMatrix.cpp
                 ${Clp_DIR}/src/ClpEventHandler.cpp
                 ${Clp_DIR}/src/ClpFactorization.cpp
                 ${Clp_DIR}/src/ClpGubDynamicMatrix.cpp
                 ${Clp_DIR}/src/ClpGubMatrix.cpp
                 ${Clp_DIR}/src/ClpHelperFunctions.cpp
                 ${Clp_DIR}/src/ClpInterior.cpp
                 ${Clp_DIR}/src/ClpLinearObjective.cpp
                 ${Clp_DIR}/src/ClpMatrixBase.cpp
                 ${Clp_DIR}/src/ClpMessage.cpp
                 ${Clp_DIR}/src/ClpModel.cpp
                 ${Clp_DIR}/src/ClpNetworkBasis.cpp
                 ${Clp_DIR}/src/ClpNetworkMatrix.cpp
                 ${Clp_DIR}/src/ClpNonLinearCost.cpp
                 ${Clp_DIR}/src/ClpNode.cpp
                 ${Clp_DIR}/src/ClpObjective.cpp
                 ${Clp_DIR}/src/ClpPackedMatrix.cpp
                 ${Clp_DIR}/src/ClpPlusMinusOneMatrix.cpp
                 ${Clp_DIR}/src/ClpPredictorCorrector.cpp
                 ${Clp_DIR}/src/ClpPdco.cpp
                 ${Clp_DIR}/src/ClpPdcoBase.cpp
                 ${Clp_DIR}/src/ClpLsqr.cpp
                 ${Clp_DIR}/src/ClpPresolve.cpp
                 ${Clp_DIR}/src/ClpPrimalColumnDantzig.cpp
                 ${Clp_DIR}/src/ClpPrimalColumnPivot.cpp
                 ${Clp_DIR}/src/ClpPrimalColumnSteepest.cpp
                 ${Clp_DIR}/src/ClpQuadraticObjective.cpp
                 ${Clp_DIR}/src/ClpSimplex.cpp
                 ${Clp_DIR}/src/ClpSimplexDual.cpp
                 ${Clp_DIR}/src/ClpSimplexNonlinear.cpp
                 ${Clp_DIR}/src/ClpSimplexOther.cpp
                 ${Clp_DIR}/src/ClpSimplexPrimal.cpp
                 ${Clp_DIR}/src/ClpSolve.cpp
                 ${Clp_DIR}/src/Idiot.cpp
                 ${Clp_DIR}/src/IdiSolve.cpp)

if ("${CLP_VERSION_STRING}" STREQUAL "trunk")
  set(Clp_SRC_LIST ${Clp_SRC_LIST}
                   ${Clp_DIR}/src/ClpPEPrimalColumnSteepest.cpp
                   ${Clp_DIR}/src/ClpPESimplex.cpp
                   ${Clp_DIR}/src/ClpPEDualRowSteepest.cpp
                   ${Clp_DIR}/src/ClpPEDualRowDantzig.cpp
                   ${Clp_DIR}/src/ClpPEPrimalColumnDantzig.cpp)
endif ()

set(ClpSolver_SRC_LIST ${Clp_DIR}/src/ClpSolver.cpp
                       ${Clp_DIR}/src/CbcOrClpParam.cpp
                       ${Clp_DIR}/src/MyEventHandler.cpp
                       ${Clp_DIR}/src/MyMessageHandler.cpp
                       ${Clp_DIR}/src/unitTest.cpp)

if (COIN_HAS_ASL)
  set(ClpSolver_SRC_LIST ${ClpSolver_SRC_LIST}
                         ${Clp_DIR}/src/Clp_ampl.cpp)
endif ()

if (COIN_HAS_ABC)
  set(Clp_SRC_LIST ${Clp_SRC_LIST}
                   ${Clp_DIR}/src/AbcDualRowDantzig.cpp
                   ${Clp_DIR}/src/AbcDualRowPivot.cpp
                   ${Clp_DIR}/src/AbcDualRowSteepest.cpp
                   ${Clp_DIR}/src/AbcMatrix.cpp
                   ${Clp_DIR}/src/AbcNonLinearCost.cpp
                   ${Clp_DIR}/src/AbcPrimalColumnDantzig.cpp
                   ${Clp_DIR}/src/AbcPrimalColumnPivot.cpp
                   ${Clp_DIR}/src/AbcPrimalColumnSteepest.cpp
                   ${Clp_DIR}/src/AbcSimplex.cpp
                   ${Clp_DIR}/src/AbcSimplexDual.cpp
                   ${Clp_DIR}/src/AbcSimplexPrimal.cpp
                   ${Clp_DIR}/src/AbcSimplexParallel.cpp
                   ${Clp_DIR}/src/AbcSimplexFactorization.cpp
                   ${Clp_DIR}/src/AbcWarmStart.cpp
                   ${Clp_DIR}/src/CoinAbcBaseFactorization1.cpp
                   ${Clp_DIR}/src/CoinAbcBaseFactorization2.cpp
                   ${Clp_DIR}/src/CoinAbcBaseFactorization3.cpp
                   ${Clp_DIR}/src/CoinAbcBaseFactorization4.cpp
                   ${Clp_DIR}/src/CoinAbcBaseFactorization5.cpp
                   ${Clp_DIR}/src/CoinAbcDenseFactorization.cpp
                   ${Clp_DIR}/src/CoinAbcFactorization1.cpp
                   ${Clp_DIR}/src/CoinAbcFactorization2.cpp
                   ${Clp_DIR}/src/CoinAbcFactorization3.cpp
                   ${Clp_DIR}/src/CoinAbcFactorization4.cpp
                   ${Clp_DIR}/src/CoinAbcFactorization5.cpp
                   ${Clp_DIR}/src/CoinAbcHelperFunctions.cpp
                   ${Clp_DIR}/src/CoinAbcOrderedFactorization1.cpp
                   ${Clp_DIR}/src/CoinAbcOrderedFactorization2.cpp
                   ${Clp_DIR}/src/CoinAbcOrderedFactorization3.cpp
                   ${Clp_DIR}/src/CoinAbcOrderedFactorization4.cpp
                   ${Clp_DIR}/src/CoinAbcOrderedFactorization5.cpp
                   ${Clp_DIR}/src/CoinAbcSmallFactorization1.cpp
                   ${Clp_DIR}/src/CoinAbcSmallFactorization2.cpp
                   ${Clp_DIR}/src/CoinAbcSmallFactorization3.cpp
                   ${Clp_DIR}/src/CoinAbcSmallFactorization4.cpp
                   ${Clp_DIR}/src/CoinAbcSmallFactorization5.cpp)
endif ()
           
if (COIN_HAS_AMD OR COIN_HAS_CHOLMOD OR COIN_HAS_GLPK)
  set(Clp_SRC_LIST ${Clp_SRC_LIST}
                   ${Clp_DIR}/src/ClpCholeskyUfl.cpp)
endif ()
if (COIN_HAS_MUMPS)
  set(Clp_SRC_LIST ${Clp_SRC_LIST}
                   ${Clp_DIR}/src/ClpCholeskyMumps.cpp)
endif ()
if (COIN_HAS_WSMP)
  set(Clp_SRC_LIST ${Clp_SRC_LIST}
                   ${Clp_DIR}/src/ClpCholeskyWssmp.cpp
                   ${Clp_DIR}/src/ClpCholeskyWssmpKKT.cpp)
endif ()

set(Clp_MAIN_SRC_LIST ${Clp_DIR}/src/ClpMain.cpp)

set(Clp_SRC_LIST_Headers ${Clp_DIR}/src/Clp_C_Interface.h
                         ${Clp_DIR}/src/ClpCholeskyBase.hpp
                         ${Clp_DIR}/src/ClpCholeskyDense.hpp
                         ${Clp_DIR}/src/ClpConstraint.hpp
                         ${Clp_DIR}/src/ClpConstraintLinear.hpp
                         ${Clp_DIR}/src/ClpConstraintQuadratic.hpp
                         ${Clp_DIR}/src/ClpDualRowDantzig.hpp
                         ${Clp_DIR}/src/ClpDualRowPivot.hpp
                         ${Clp_DIR}/src/ClpDualRowSteepest.hpp
                         ${Clp_DIR}/src/ClpDummyMatrix.hpp
                         ${Clp_DIR}/src/ClpDynamicExampleMatrix.hpp
                         ${Clp_DIR}/src/ClpDynamicMatrix.hpp
                         ${Clp_DIR}/src/ClpEventHandler.hpp
                         ${Clp_DIR}/src/ClpFactorization.hpp
                         ${Clp_DIR}/src/ClpGubDynamicMatrix.hpp
                         ${Clp_DIR}/src/ClpGubMatrix.hpp
                         ${Clp_DIR}/src/ClpInterior.hpp
                         ${Clp_DIR}/src/ClpLinearObjective.hpp
                         ${Clp_DIR}/src/ClpMatrixBase.hpp
                         ${Clp_DIR}/src/ClpMessage.hpp
                         ${Clp_DIR}/src/ClpModel.hpp
                         ${Clp_DIR}/src/ClpNetworkMatrix.hpp
                         ${Clp_DIR}/src/ClpNonLinearCost.hpp
                         ${Clp_DIR}/src/ClpNode.hpp
                         ${Clp_DIR}/src/ClpObjective.hpp
                         ${Clp_DIR}/src/ClpPackedMatrix.hpp
                         ${Clp_DIR}/src/ClpPdcoBase.hpp
                         ${Clp_DIR}/src/ClpPlusMinusOneMatrix.hpp
                         ${Clp_DIR}/src/ClpParameters.hpp
                         ${Clp_DIR}/src/ClpPresolve.hpp
                         ${Clp_DIR}/src/ClpPrimalColumnDantzig.hpp
                         ${Clp_DIR}/src/ClpPrimalColumnPivot.hpp
                         ${Clp_DIR}/src/ClpPrimalColumnSteepest.hpp
                         ${Clp_DIR}/src/ClpQuadraticObjective.hpp
                         ${Clp_DIR}/src/ClpSimplex.hpp
                         ${Clp_DIR}/src/ClpSimplexNonlinear.hpp
                         ${Clp_DIR}/src/ClpSimplexOther.hpp
                         ${Clp_DIR}/src/ClpSimplexDual.hpp
                         ${Clp_DIR}/src/ClpSimplexPrimal.hpp
                         ${Clp_DIR}/src/ClpSolve.hpp
                         ${Clp_DIR}/src/CbcOrClpParam.hpp
                         ${Clp_DIR}/src/Idiot.hpp)

if ("${CLP_VERSION_STRING}" STREQUAL "trunk")
  set(Clp_SRC_LIST_Headers ${Clp_SRC_LIST_Headers}
                           ${Clp_DIR}/src/ClpPEPrimalColumnDantzig.hpp
                           ${Clp_DIR}/src/ClpPEPrimalColumnSteepest.hpp
                           ${Clp_DIR}/src/ClpPESimplex.hpp
                           ${Clp_DIR}/src/ClpPEDualRowSteepest.hpp
                           ${Clp_DIR}/src/ClpPEDualRowDantzig.hpp)
endif ()

if (COIN_HAS_ABC)
  set(Clp_SRC_LIST_Headers ${Clp_SRC_LIST_Headers}
                           ${Clp_DIR}/src/AbcSimplex.hpp
                           ${Clp_DIR}/src/CoinAbcCommon.hpp
                           ${Clp_DIR}/src/AbcCommon.hpp)
endif ()

# if AMD, CHOLMOD, or GLPK is available, then install ClpCholeskyUfl.hpp (for advanced users)
if (COIN_HAS_AMD OR COIN_HAS_CHOLMOD OR COIN_HAS_GLPK)
  set(Clp_SRC_LIST_Headers ${Clp_SRC_LIST_Headers}
                           ${Clp_DIR}/src/ClpCholeskyUfl.hpp)
endif ()
if (COIN_HAS_MUMPS)
  set(Clp_SRC_LIST_Headers ${Clp_SRC_LIST_Headers}
                           ${Clp_DIR}/src/ClpCholeskyMumps.hpp)
endif ()

if (COIN_HAS_WSMP)
  set(Clp_SRC_LIST_Headers ${Clp_SRC_LIST_Headers}
                           ${Clp_DIR}/src/ClpCholeskyWssmp.hpp
                           ${Clp_DIR}/src/ClpCholeskyWssmpKKT.hpp)
endif ()

if (CMAKE_COMPILER_IS_GNUCXX)
  set_source_files_properties(${Clp_DIR}/src/CbcOrClpParam.cpp PROPERTIES COMPILE_FLAGS -fno-var-tracking-assignments)
endif ()

add_definitions(-DCOIN_HAS_CLP)

if (COIN_HAS_AMD AND (NOT COIN_HAS_AMD_INCLUDE_PATH STREQUAL "None"))
  include_directories(${COIN_HAS_AMD_INCLUDE_PATH})
endif ()
if (COIN_HAS_CHOLMOD AND (NOT COIN_HAS_CHOLMOD_INCLUDE_PATH STREQUAL "None"))
  include_directories(${COIN_HAS_CHOLMOD_INCLUDE_PATH})
endif ()
if (COIN_HAS_GLPK AND (NOT COIN_HAS_GLPK_INCLUDE_PATH STREQUAL "None"))
  include_directories(${COIN_HAS_GLPK_INCLUDE_PATH})
endif ()
if (COIN_HAS_MUMPS AND (NOT COIN_HAS_MUMPS_INCLUDE_PATH STREQUAL "None"))
  include_directories(${COIN_HAS_MUMPS_INCLUDE_PATH})
endif ()
if (COIN_HAS_WSMP AND (NOT COIN_HAS_WSMP_INCLUDE_PATH STREQUAL "None"))
  include_directories(${COIN_HAS_WSMP_INCLUDE_PATH})
endif ()

include_directories(${BuildTools_DIR}/headers)
include_directories(SYSTEM ${CoinUtils_DIR}/src)
include_directories(${Clp_DIR}/src)
include_directories(${Clp_DIR}/src/OsiClp)
if (COIN_ENABLE_DOWNLOAD_ASL OR COIN_USE_ASL)
  include_directories(${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/include/ampl)
endif ()

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Clp/include)
endmacro ()

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

remove_definitions(-DCBC_THREAD)

if (ENABLE_SHARED_LIBRARIES)
  add_library(libClp SHARED ${Clp_SRC_LIST})
else ()
  add_library(libClp STATIC ${Clp_SRC_LIST})
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libClp PROPERTIES PREFIX "")
endif ()

if (COIN_HAS_AMD AND (NOT COIN_HAS_AMD_LIBRARY_PATH STREQUAL "None"))
  link_directories(${COIN_HAS_AMD_LIBRARY_PATH})
endif ()
if (COIN_HAS_CHOLMOD AND (NOT COIN_HAS_CHOLMOD_LIBRARY_PATH STREQUAL "None"))
  link_directories(${COIN_HAS_CHOLMOD_LIBRARY_PATH})
endif ()
if (COIN_HAS_GLPK AND (NOT COIN_HAS_GLPK_LIBRARY_PATH STREQUAL "None"))
  link_directories(${COIN_HAS_GLPK_LIBRARY_PATH})
endif ()
if (COIN_HAS_MUMPS AND (NOT COIN_HAS_MUMPS_LIBRARY_PATH STREQUAL "None"))
  link_directories(${COIN_HAS_MUMPS_LIBRARY_PATH})
endif ()
if (COIN_HAS_WSMP AND (NOT COIN_HAS_WSMP_LIBRARY_PATH STREQUAL "None"))
  link_directories(${COIN_HAS_WSMP_LIBRARY_PATH})
endif ()
set_include_directories(libClp)

if (ENABLE_SHARED_LIBRARIES)
  add_library(libClpSolver SHARED ${ClpSolver_SRC_LIST})
else ()
  add_library(libClpSolver STATIC ${ClpSolver_SRC_LIST})
endif ()
if (NOT WIN32)
  set_target_properties(libClpSolver PROPERTIES PREFIX "")
endif ()
set_include_directories(libClpSolver)

if (CLP_BUILD_EXAMPLES)
  set(TEST_LIB_PATH "${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/lib")
  set(TEST_BIN_PATH "${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/bin")
  
  #
  # Build Examples
  #
  macro(add_example Name)
    add_executable(${Name} ${ARGN})
    if (COINUTILS_USE_THREADS OR COIN_USE_PTHREAD_WIN32 OR COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32 OR CBC_USE_THREADS)
      if (MINGW)
        target_link_libraries(${Name} winpthread)
      elseif (NOT WIN32)
        target_link_libraries(${Name} pthread)
      else ()
        target_link_libraries(${Name} pthreadVC2)
      endif ()
    endif ()
    target_link_libraries(${Name} libClp libCoinUtils)
    set_include_directories(${Name})
    if (COIN_HAS_AMD)
      target_link_libraries(${Name} amd)
    endif ()
    if (COIN_HAS_CHOLMOD)
      target_link_libraries(${Name} cholmod suitesparseconfig amd ccolamd colamd camd)
    endif ()
    if (MKL_FOUND)
      target_link_libraries(${Name} ${COIN_MKL_LIBS})
    else ()
      if (COIN_HAS_LAPACK OR COIN_USE_LAPACK)
        target_link_libraries(${Name} lapack)
      endif ()
      if (COIN_HAS_BLAS OR COIN_USE_BLAS)
        target_link_libraries(${Name} blas)
      endif ()
      if (COIN_ENABLE_DOWNLOAD_CLAPACK)
        target_link_libraries(${Name} f2c)
      endif ()
      if ((COIN_HAS_BLAS OR COIN_HAS_LAPACK) AND (UNIX OR MINGW) AND NOT COIN_USE_LAPACK AND NOT (CMAKE_Fortran_COMPILER_ID STREQUAL "Intel"))
        target_link_libraries(${Name} gfortran)
      endif ()
    endif ()
    if (COINUTILS_HAS_ZLIB OR COIN_USE_ZLIB)
      target_link_libraries(${Name} ${ZLIB_NAME})
    endif ()
    if (COINUTILS_HAS_BZLIB OR COIN_USE_ZLIB)
      target_link_libraries(${Name} ${BZLIB_NAME})
    endif ()
    if (COIN_HAS_GLPK OR COIN_USE_GLPK)
      target_link_libraries(${Name} glpk)
    endif ()
    if (USE_OPENMP AND UNIX)
      target_link_libraries(${Name} gomp)
    endif ()
    if (COIN_HAS_ABC AND (COIN_ABC_LEVEL GREATER 2))
      target_link_libraries(${Name} cilkrts)
    endif ()  
    if (COIN_ENABLE_DOWNLOAD_ASL OR COIN_USE_ASL)
      target_link_libraries(${Name} amplsolver dl)
    endif ()  
    if (READLINE_FOUND)
      target_link_libraries(${Name} ${READLINE_LIBRARIES})
    endif ()  
    if (COIN_HAS_MUMPS)
      if (CMAKE_Fortran_COMPILER_ID STREQUAL "Intel")
        target_link_libraries(${Name} dmumps mumps_common seq blas lapack ifort pthread)
      else ()
        target_link_libraries(${Name} dmumps mumps_common seq blas lapack gfortran pthread)
      endif ()
    endif ()  
    if (COIN_ENABLE_DOWNLOAD_METIS OR COIN_USE_METIS)
      target_link_libraries(${Name} metis m)
    endif ()  
  endmacro ()

  # This test hangs if COIN_BIG_INDEX==2
  add_example(addBits ${Clp_DIR}/examples/addBits.cpp)
  
  add_test(NAME clp_example_addBits
           COMMAND $<TARGET_FILE:addBits> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_addBits PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_addBits PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(clp_example_addBits PROPERTIES LABELS "FAIL")
  
  
  add_example(addColumns ${Clp_DIR}/examples/addColumns.cpp)
  
  add_test(NAME clp_example_addColumns
           COMMAND $<TARGET_FILE:addColumns> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_addColumns PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_addColumns PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  
  
  add_example(addRows ${Clp_DIR}/examples/addRows.cpp)
  
  add_test(NAME clp_example_addRows
           COMMAND $<TARGET_FILE:addRows> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_addRows PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_addRows PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  
  
  add_example(decomp2 ${Clp_DIR}/examples/decomp2.cpp)

  
  add_test(NAME clp_example_decomp2
           COMMAND $<TARGET_FILE:decomp2> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_decomp2 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_decomp2 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  
  
  add_example(decomp3 ${Clp_DIR}/examples/decomp3.cpp)
  
  add_test(NAME clp_example_decomp3
           COMMAND $<TARGET_FILE:decomp3> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_decomp3 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_decomp3 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  
  
  add_example(decompose ${Clp_DIR}/examples/decompose.cpp)
  
  add_test(NAME clp_example_decompose
           COMMAND $<TARGET_FILE:decompose> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_decompose PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_decompose PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  
  
  add_example(default ${Clp_DIR}/examples/defaults.cpp)
  
  add_test(NAME clp_example_default
           COMMAND $<TARGET_FILE:default> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_default PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_default PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  
  
  add_example(driver2 ${Clp_DIR}/examples/driver2.cpp)
  
  add_test(NAME clp_example_driver2
           COMMAND $<TARGET_FILE:driver2> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_driver2 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_driver2 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  
  
  add_example(driver ${Clp_DIR}/examples/driver.cpp)
  
  add_test(NAME clp_example_driver
           COMMAND $<TARGET_FILE:driver> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_driver PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_driver PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  
  
  add_example(dualCuts ${Clp_DIR}/examples/dualCuts.cpp)
  
  add_test(NAME clp_example_dualCuts
           COMMAND $<TARGET_FILE:dualCuts> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_dualCuts PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_dualCuts PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  

  # Needs ekk_api_c.h ...
  #add_example(ekk ${Clp_DIR}/examples/ekk.cpp)
  
  #add_example(ekk_interface ${Clp_DIR}/examples/ekk_interface.cpp)
  
  add_example(hello ${Clp_DIR}/examples/hello.cpp)
  
  add_test(NAME clp_example_hello
           COMMAND $<TARGET_FILE:hello> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_hello PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_hello PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  
  
  add_example(makeDual ${Clp_DIR}/examples/makeDual.cpp)
  
  add_test(NAME clp_example_makeDual
           COMMAND $<TARGET_FILE:makeDual> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_makeDual PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_makeDual PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  
  # Must compile minimum.cpp with -DSAMPLEDIR=${CMAKE_SOURCE_DIR}/Data/Sample
  add_example(minimum ${Clp_DIR}/examples/minimum.cpp)
  
  add_test(NAME clp_example_minimum
           COMMAND $<TARGET_FILE:minimum> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_minimum PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_minimum PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(clp_example_minimum PROPERTIES LABELS "FAIL")
  
  
  add_example(modify ${Clp_DIR}/examples/modify.cpp)
  
  add_test(NAME clp_example_modify
           COMMAND $<TARGET_FILE:modify> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_modify PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_modify PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  
  
  add_example(network ${Clp_DIR}/examples/network.cpp)

  
  add_test(NAME clp_example_network
           COMMAND $<TARGET_FILE:network> ${CMAKE_SOURCE_DIR}/Data/Sample/input.130)
  set_tests_properties(clp_example_network PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_network PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  

  # This test hangs because it requires the following files:./g.tiny ./gparm.tiny in the exe directory
  execute_process(COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/Clp/examples/g.tiny     ${CMAKE_BINARY_DIR}/bin/
                  COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/Clp/examples/gparm.tiny ${CMAKE_BINARY_DIR}/bin/)

  add_example(pdco ${Clp_DIR}/examples/pdco.cpp)
                   #${Clp_DIR}/examples/myPdco.cpp)
  
  add_test(NAME clp_example_pdco
           COMMAND $<TARGET_FILE:pdco> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps
           WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
  set_tests_properties(clp_example_pdco PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_pdco PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(clp_example_pdco PROPERTIES LABELS "FAIL")
  
  
  add_example(piece ${Clp_DIR}/examples/piece.cpp)
  
  add_test(NAME clp_example_piece
           COMMAND $<TARGET_FILE:piece> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_piece PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_piece PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  
  
  add_example(rowColumn ${Clp_DIR}/examples/rowColumn.cpp)
  
  add_test(NAME clp_example_rowColumn
           COMMAND $<TARGET_FILE:rowColumn> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_rowColumn PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_rowColumn PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  
  
  add_example(sprint2 ${Clp_DIR}/examples/sprint2.cpp)
  
  add_test(NAME clp_example_sprint2
           COMMAND $<TARGET_FILE:sprint2> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_sprint2 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_sprint2 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  
  
  add_example(sprint ${Clp_DIR}/examples/sprint.cpp)
  
  add_test(NAME clp_example_sprint
           COMMAND $<TARGET_FILE:sprint> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_sprint PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_sprint PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  
  
  add_example(testBarrier ${Clp_DIR}/examples/testBarrier.cpp)
  
  add_test(NAME clp_example_testBarrier
           COMMAND $<TARGET_FILE:testBarrier> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_testBarrier PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_testBarrier PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  
  
  add_example(testBasis ${Clp_DIR}/examples/testBasis.cpp)
  
  add_test(NAME clp_example_testBasis
           COMMAND $<TARGET_FILE:testBasis> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_testBasis PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_testBasis PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  
  
  add_example(testGub2 ${Clp_DIR}/examples/testGub2.cpp)
  
  add_test(NAME clp_example_testGub2
           COMMAND $<TARGET_FILE:testGub2> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_testGub2 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_testGub2 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()

  
  
  add_example(testGub ${Clp_DIR}/examples/testGub.cpp)

  
  add_test(NAME clp_example_testGub
           COMMAND $<TARGET_FILE:testGub> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_testGub PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_testGub PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
 
  
  add_example(testQP ${Clp_DIR}/examples/testQP.cpp)
  
  add_test(NAME clp_example_testQP
           COMMAND $<TARGET_FILE:testQP> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  set_tests_properties(clp_example_testQP PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_testQP PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  

  if (COIN_ENABLE_DOWNLOAD_DATA_TEST)
    add_example(iis ${Clp_DIR}/examples/iis.cpp)
    
    add_test(NAME clp_example_iis
             COMMAND $<TARGET_FILE:iis> ${CMAKE_BINARY_DIR}/Dependencies/DATA_TEST/src/EP_DATA_TEST/Infeas/greenbea.mps)
    set_tests_properties(clp_example_iis PROPERTIES TIMEOUT 30)
    if (WIN32)
      set_tests_properties(clp_example_iis PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
    endif ()
  endif ()
  
  # Need VOL
  #add_example(useVolume ${Clp_DIR}/examples/useVolume.cpp)
  #
  #add_test(NAME clp_example_useVolume
  #         COMMAND $<TARGET_FILE:useVolume> ${CMAKE_SOURCE_DIR}/Data/Sample/afiro.mps)
  #set_tests_properties(clp_example_useVolume PROPERTIES TIMEOUT 30)
  #if (WIN32)
  #  set_tests_properties(clp_example_useVolume PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  #endif ()
  #
  
  # Need OSI to compile
  # This test fails because some Sample tests doesn't pass.
  # On Fedora 26:
  # Severity NOTE      :    0  thereof expected:    0
  # Severity PASSED    : 1100  thereof expected:    0
  # Severity WARNING   :    3  thereof expected:    0
  # Severity ERROR     :  476  thereof expected:    0
  # Tests completed with 476 unexpected errors.
  
  add_example(OsiClpSolverInterfaceTest ${Clp_DIR}/test/OsiClpSolverInterfaceTest.cpp
                                        ${Clp_DIR}/test/osiUnitTest.cpp)
  target_link_libraries(OsiClpSolverInterfaceTest libOsiClp libOsiCommonTests libOsi)
  
  add_test(NAME clp_example_OsiClpSolverInterfaceTest
           COMMAND $<TARGET_FILE:OsiClpSolverInterfaceTest> -mpsDir=${CMAKE_SOURCE_DIR}/Data/Sample -testOsiSolverInterface -nobuf)

  set_tests_properties(clp_example_OsiClpSolverInterfaceTest PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(clp_example_OsiClpSolverInterfaceTest PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(clp_example_OsiClpSolverInterfaceTest PROPERTIES LABELS "FAIL")
endif ()

add_executable(clp ${Clp_MAIN_SRC_LIST})
target_link_libraries(clp libClpSolver libClp libCoinUtils)
set_include_directories(clp)
if (COIN_HAS_AMD)
  target_link_libraries(clp amd)
endif ()
if (COIN_HAS_CHOLMOD)
  target_link_libraries(clp cholmod suitesparseconfig amd camd ccolamd colamd)
endif ()
if (MKL_FOUND)
  target_link_libraries(clp ${COIN_MKL_LIBS})
else ()
  if (COIN_HAS_LAPACK OR COIN_USE_LAPACK)
    target_link_libraries(clp lapack)
  endif ()
  if (COIN_HAS_BLAS OR COIN_USE_BLAS)
    target_link_libraries(clp blas)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_CLAPACK)
    target_link_libraries(clp f2c)
  endif ()
  if ((COIN_HAS_BLAS OR COIN_HAS_LAPACK) AND (UNIX OR MINGW) AND NOT COIN_USE_LAPACK AND NOT (CMAKE_Fortran_COMPILER_ID STREQUAL "Intel"))
    target_link_libraries(clp gfortran)
  endif ()
endif ()
if (COINUTILS_HAS_ZLIB OR COIN_USE_ZLIB)
  target_link_libraries(clp ${ZLIB_NAME})
endif ()
if (COINUTILS_HAS_BZLIB OR COIN_USE_BZLIB)
  target_link_libraries(clp ${BZLIB_NAME})
endif ()
if (COINUTILS_USE_THREADS OR COIN_USE_PTHREAD_WIN32 OR COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32 OR CBC_USE_THREADS)
  if (MINGW)
    target_link_libraries(clp winpthread)
  elseif (NOT WIN32)
    target_link_libraries(clp pthread)
  else ()
    target_link_libraries(clp pthreadVC2)
  endif ()
endif ()
if (COIN_HAS_GLPK OR COIN_USE_GLPK)
  target_link_libraries(clp glpk)
endif ()
if (COIN_HAS_ABC AND (COIN_ABC_LEVEL GREATER 2))
  target_link_libraries(clp cilkrts)
endif ()  
if (COIN_ENABLE_DOWNLOAD_ASL OR COIN_USE_ASL)
  target_link_libraries(clp amplsolver dl)
endif ()  
if (READLINE_FOUND)
  target_link_libraries(clp ${READLINE_LIBRARIES})
endif ()  
if (COIN_HAS_MUMPS)
  if (CMAKE_Fortran_COMPILER_ID STREQUAL "Intel")
    target_link_libraries(clp dmumps mumps_common seq blas lapack ifort pthread)
  else ()
    target_link_libraries(clp dmumps mumps_common seq blas lapack gfortran pthread)
  endif ()
endif ()  
if (COIN_ENABLE_DOWNLOAD_METIS OR COIN_USE_METIS)
  target_link_libraries(clp metis m)
endif ()  

install(TARGETS clp
        DESTINATION bin)

install(TARGETS libClp 
        DESTINATION lib)

install(FILES ${Clp_SRC_LIST_Headers} 
        DESTINATION include/coin)

install(FILES ${CMAKE_BINARY_DIR}/Clp/include/config_clp.h
        DESTINATION include/coin
        RENAME ClpConfig.h)

install(FILES ${CMAKE_BINARY_DIR}/Clp/include/config_clp.h
        DESTINATION include/coin)
