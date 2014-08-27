cmake_minimum_required(VERSION 2.8)

project(Clp)

option(CLP_BUILD_EXAMPLES "Enable the building of examples" OFF)
set(CLP_VERSION_MAJOR   "1"  CACHE STRING "The CLP major version number")
set(CLP_VERSION_MINOR   "15" CACHE STRING "The CLP minor version number")
set(CLP_VERSION_RELEASE "6"  CACHE STRING "The CLP patch version number")
set(CLP_VERSION "${CLP_VERSION_MAJOR}.${CLP_VERSION_MINOR}.${CLP_VERSION_RELEASE}")
set(CLP_SVN_REV "${CLP_VERSION_RELEASE}")

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

set(ClpSolver_SRC_LIST ${Clp_DIR}/src/ClpSolver.cpp
                       ${Clp_DIR}/src/CbcOrClpParam.cpp
		       ${Clp_DIR}/src/Clp_ampl.cpp
		       ${Clp_DIR}/src/MyEventHandler.cpp
		       ${Clp_DIR}/src/MyMessageHandler.cpp
		       ${Clp_DIR}/src/unitTest.cpp)

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
           
if (COIN_HAS_AMD)
  set(Clp_SRC_LIST ${Clp_SRC_LIST}
                   ${Clp_DIR}/src/ClpCholeskyUfl.cpp)
endif ()
if (COIN_HAS_CHOLMOD)
  set(Clp_SRC_LIST ${Clp_SRC_LIST}
                   ${Clp_DIR}/src/ClpCholeskyUfl.cpp)
endif ()
if (COIN_HAS_GLPK)
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

if (COIN_HAS_ABC)
  set(Clp_SRC_LIST_Headers ${Clp_SRC_LIST_Headers}
                           ${Clp_DIR}/src/AbcSimplex.hpp
                           ${Clp_DIR}/src/CoinAbcCommon.hpp
                           ${Clp_DIR}/src/AbcCommon.hpp)
endif ()

# if AMD, CHOLMOD, or GLPK is available, then install ClpCholeskyUfl.hpp (for advanced users)
if (COIN_HAS_AMD)
  set(Clp_SRC_LIST_Headers ${Clp_SRC_LIST_Headers}
                           ${Clp_DIR}/src/ClpCholeskyUfl.hpp)
endif ()
if (COIN_HAS_CHOLMOD)
  set(Clp_SRC_LIST_Headers ${Clp_SRC_LIST_Headers}
                           ${Clp_DIR}/src/ClpCholeskyUfl.hpp)
endif ()
if (COIN_HAS_GLPK)
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

add_definitions(-DCOIN_HAS_CLP)

if (COIN_HAS_AMD)
  include_directories(${COIN_HAS_AMD_INCLUDE_PATH})
endif ()
if (COIN_HAS_CHOLMOD)
  include_directories(${COIN_HAS_CHOLMOD_INCLUDE_PATH})
endif ()
if (COIN_HAS_GLPK)
  include_directories(${COIN_HAS_GLPK_INCLUDE_PATH})
endif ()
if (COIN_HAS_MUMPS)
  include_directories(${COIN_HAS_MUMPS_INCLUDE_PATH})
endif ()
if (COIN_HAS_WSMP)
  include_directories(${COIN_HAS_WSMP_INCLUDE_PATH})
endif ()

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Clp_DIR}/src)
include_directories(${Clp_DIR}/src/OsiClp)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Clp/include)
endmacro()

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libClp SHARED ${Clp_SRC_LIST})
else ()
  add_library(libClp STATIC ${Clp_SRC_LIST})
endif ()
if (NOT WIN32)
  set_target_properties(libClp PROPERTIES PREFIX "")
endif ()

if (COIN_HAS_AMD)
  target_link_libraries(libClp ${COIN_HAS_AMD_LIBRARY_PATH})
endif ()
if (COIN_HAS_CHOLMOD)
  target_link_libraries(libClp ${COIN_HAS_CHOLMOD_LIBRARY_PATH})
endif ()
if (COIN_HAS_GLPK)
  target_link_libraries(libClp ${COIN_HAS_GLPK_LIBRARY_PATH})
endif ()
if (COIN_HAS_MUMPS)
  target_link_libraries(libClp ${COIN_HAS_MUMPS_LIBRARY_PATH})
endif ()
if (COIN_HAS_WSMP)
  target_link_libraries(libClp ${COIN_HAS_WSMP_LIBRARY_PATH})
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
  #
  # Build Examples
  #
  add_executable(addBits     ${Clp_DIR}/examples/addBits.cpp)
  target_link_libraries(addBits libClp libCoinUtils lapack)
  set_include_directories(addBits)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(addBits ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(addBits ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_addBits
           COMMAND $<TARGET_FILE:addBits> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_addBits PROPERTIES TIMEOUT 30)
  
  
  add_executable(addColumns  ${Clp_DIR}/examples/addColumns.cpp)
  target_link_libraries(addColumns libClp libCoinUtils lapack)
  set_include_directories(addColumns)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(addColumns ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(addColumns ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_addColumns
           COMMAND $<TARGET_FILE:addColumns> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_addColumns PROPERTIES TIMEOUT 30)
  
  
  add_executable(addRows     ${Clp_DIR}/examples/addRows.cpp)
  target_link_libraries(addRows libClp libCoinUtils lapack)
  set_include_directories(addRows)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(addRows ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(addRows ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_addRows
           COMMAND $<TARGET_FILE:addRows> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_addRows PROPERTIES TIMEOUT 30)
  
  
  add_executable(decomp2     ${Clp_DIR}/examples/decomp2.cpp)
  target_link_libraries(decomp2 libClp libCoinUtils lapack)
  set_include_directories(decomp2)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(decomp2 ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(decomp2 ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_decomp2
           COMMAND $<TARGET_FILE:decomp2> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_decomp2 PROPERTIES TIMEOUT 30)
  
  
  add_executable(decomp3     ${Clp_DIR}/examples/decomp3.cpp)
  target_link_libraries(decomp3 libClp libCoinUtils lapack)
  set_include_directories(decomp3)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(decomp3 ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(decomp3 ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_decomp3
           COMMAND $<TARGET_FILE:decomp3> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_decomp3 PROPERTIES TIMEOUT 30)
  
  
  add_executable(decompose   ${Clp_DIR}/examples/decompose.cpp)
  target_link_libraries(decompose libClp libCoinUtils lapack)
  set_include_directories(decompose)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(decompose ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(decompose ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_decompose
           COMMAND $<TARGET_FILE:decompose> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_decompose PROPERTIES TIMEOUT 30)
  
  
  add_executable(default     ${Clp_DIR}/examples/defaults.cpp)
  target_link_libraries(default libClp libCoinUtils lapack)
  set_include_directories(default)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(default ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(default ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_default
           COMMAND $<TARGET_FILE:default> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_default PROPERTIES TIMEOUT 30)
  
  
  add_executable(driver2     ${Clp_DIR}/examples/driver2.cpp)
  target_link_libraries(driver2 libClp libCoinUtils lapack)
  set_include_directories(driver2)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(driver2 ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(driver2 ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_driver2
           COMMAND $<TARGET_FILE:driver2> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_driver2 PROPERTIES TIMEOUT 30)
  
  
  add_executable(driver      ${Clp_DIR}/examples/driver.cpp)
  target_link_libraries(driver libClp libCoinUtils lapack)
  set_include_directories(driver)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(driver ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(driver ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_driver
           COMMAND $<TARGET_FILE:driver> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_driver PROPERTIES TIMEOUT 30)
  
  
  add_executable(dualCuts    ${Clp_DIR}/examples/dualCuts.cpp)
  target_link_libraries(dualCuts libClp libCoinUtils lapack)
  set_include_directories(dualCuts)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(dualCuts ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(dualCuts ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_dualCuts
           COMMAND $<TARGET_FILE:dualCuts> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_dualCuts PROPERTIES TIMEOUT 30)
  

  # Needs ekk_api_c.h ...
  #add_executable(ekk         ${Clp_DIR}/examples/ekk.cpp)
  #target_link_libraries(ekk libClp libCoinUtils lapack)
  
  #add_executable(ekk_interface ${Clp_DIR}/examples/ekk_interface.cpp)
  #target_link_libraries(ekk_interface libClp libCoinUtils lapack)
  
  add_executable(hello       ${Clp_DIR}/examples/hello.cpp)
  target_link_libraries(hello libClp libCoinUtils lapack)
  set_include_directories(hello)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(hello ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(hello ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_hello
           COMMAND $<TARGET_FILE:hello> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_hello PROPERTIES TIMEOUT 30)
  
  
  add_executable(makeDual    ${Clp_DIR}/examples/makeDual.cpp)
  target_link_libraries(makeDual libClp libCoinUtils lapack)
  set_include_directories(makeDual)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(makeDual ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(makeDual ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_makeDual
           COMMAND $<TARGET_FILE:makeDual> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_makeDual PROPERTIES TIMEOUT 30)
  
  
  add_executable(minimum     ${Clp_DIR}/examples/minimum.cpp)
  target_link_libraries(minimum libClp libCoinUtils lapack)
  set_include_directories(minimum)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(minimum ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(minimum ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_minimum
           COMMAND $<TARGET_FILE:minimum> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_minimum PROPERTIES TIMEOUT 30)
  
  
  add_executable(modify      ${Clp_DIR}/examples/modify.cpp)
  target_link_libraries(modify libClp libCoinUtils lapack)
  set_include_directories(modify)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(modify ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(modify ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_modify
           COMMAND $<TARGET_FILE:modify> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_modify PROPERTIES TIMEOUT 30)
  
  
  add_executable(network     ${Clp_DIR}/examples/network.cpp)
  target_link_libraries(network libClp libCoinUtils lapack)
  set_include_directories(network)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(network ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(network ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_network
           COMMAND $<TARGET_FILE:network> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_network PROPERTIES TIMEOUT 30)
  
  
  add_executable(pdco        ${Clp_DIR}/examples/pdco.cpp ${Clp_DIR}/examples/myPdco.cpp)
  target_link_libraries(pdco libClp libCoinUtils lapack)
  set_include_directories(pdco)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(pdco ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(pdco ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_pdco
           COMMAND $<TARGET_FILE:pdco> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_pdco PROPERTIES TIMEOUT 30)
  
  
  add_executable(piece       ${Clp_DIR}/examples/piece.cpp)
  target_link_libraries(piece libClp libCoinUtils lapack)
  set_include_directories(piece)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(piece ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(piece ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_piece
           COMMAND $<TARGET_FILE:piece> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_piece PROPERTIES TIMEOUT 30)
  
  
  add_executable(rowColumn   ${Clp_DIR}/examples/rowColumn.cpp)
  target_link_libraries(rowColumn libClp libCoinUtils lapack)
  set_include_directories(rowColumn)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(rowColumn ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(rowColumn ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_rowColumn
           COMMAND $<TARGET_FILE:rowColumn> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_rowColumn PROPERTIES TIMEOUT 30)
  
  
  add_executable(sprint2     ${Clp_DIR}/examples/sprint2.cpp)
  target_link_libraries(sprint2 libClp libCoinUtils lapack)
  set_include_directories(sprint2)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(sprint2 ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(sprint2 ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_sprint2
           COMMAND $<TARGET_FILE:sprint2> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_sprint2 PROPERTIES TIMEOUT 30)
  
  
  add_executable(sprint      ${Clp_DIR}/examples/sprint.cpp)
  target_link_libraries(sprint libClp libCoinUtils lapack)
  set_include_directories(sprint)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(sprint ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(sprint ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_sprint
           COMMAND $<TARGET_FILE:sprint> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_sprint PROPERTIES TIMEOUT 30)
  
  
  add_executable(testBarrier ${Clp_DIR}/examples/testBarrier.cpp)
  target_link_libraries(testBarrier libClp libCoinUtils lapack)
  set_include_directories(testBarrier)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(testBarrier ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(testBarrier ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_testBarrier
           COMMAND $<TARGET_FILE:testBarrier> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_testBarrier PROPERTIES TIMEOUT 30)
  
  
  add_executable(testBasis   ${Clp_DIR}/examples/testBasis.cpp)
  target_link_libraries(testBasis libClp libCoinUtils lapack)
  set_include_directories(testBasis)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(testBasis ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(testBasis ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_testBasis
           COMMAND $<TARGET_FILE:testBasis> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_testBasis PROPERTIES TIMEOUT 30)
  
  
  add_executable(testGub2    ${Clp_DIR}/examples/testGub2.cpp)
  target_link_libraries(testGub2 libClp libCoinUtils lapack)
  set_include_directories(testGub2)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(testGub2 ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(testGub2 ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_testGub2
           COMMAND $<TARGET_FILE:testGub2> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_testGub2 PROPERTIES TIMEOUT 30)
  
  
  add_executable(testGub     ${Clp_DIR}/examples/testGub.cpp)
  target_link_libraries(testGub libClp libCoinUtils lapack)
  set_include_directories(testGub)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(testGub ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(testGub ${BZLIB_NAME})
  endif ()
  
  add_test(NAME clp_example_testGub
           COMMAND $<TARGET_FILE:testGub> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(clp_example_testGub PROPERTIES TIMEOUT 30)
  
  
  # Compilation error
  #add_executable(testQP      ${Clp_DIR}/examples/testQP.cpp)
  #target_link_libraries(testQP libClp libCoinUtils lapack)
  #set_include_directories(testQP)
  #if (COINUTILS_HAS_ZLIB)
  #  target_link_libraries(testQP ${ZLIB_NAME})
  #endif ()
  #if (COINUTILS_HAS_BZLIB)
  #  target_link_libraries(testQP ${BZLIB_NAME})
  #endif ()
  #
  #add_test(NAME clp_example_testQP
  #         COMMAND $<TARGET_FILE:testQP> ${CMAKE_SOURCE_DIR}/Data/Sample)
  #set_tests_properties(clp_example_testQP PROPERTIES TIMEOUT 30)
  #

  # Need VOL
  #add_executable(useVolume   ${Clp_DIR}/examples/useVolume.cpp)
  #target_link_libraries(useVolume libClp libCoinUtils lapack)
  #set_include_directories(useVolume)
  #if (COINUTILS_HAS_ZLIB)
  #  target_link_libraries(useVolume ${ZLIB_NAME})
  #endif ()
  #if (COINUTILS_HAS_BZLIB)
  #  target_link_libraries(useVolume ${BZLIB_NAME})
  #endif ()
  #
  #add_test(NAME clp_example_useVolume
  #         COMMAND $<TARGET_FILE:useVolume> ${CMAKE_SOURCE_DIR}/Data/Sample)
  #set_tests_properties(clp_example_useVolume PROPERTIES TIMEOUT 30)
  #
  
  # Need OSI to compile
  #add_executable(OsiClpSolverInterfaceTest ${Clp_DIR}/test/OsiClpSolverInterfaceTest.cpp)
  #target_link_libraries(OsiClpSolverInterfaceTest libCoinUtils libClp lapack)
  #set_include_directories(OsiClpSolverInterfaceTest)
  #if (COINUTILS_HAS_ZLIB)
  #  target_link_libraries(OsiClpSolverInterfaceTest ${ZLIB_NAME})
  #endif ()
  #if (COINUTILS_HAS_BZLIB)
  #  target_link_libraries(OsiClpSolverInterfaceTest ${BZLIB_NAME})
  #endif ()
  #
  #add_test(NAME clp_example_OsiClpSolverInterfaceTest
  #         COMMAND $<TARGET_FILE:OsiClpSolverInterfaceTest> ${CMAKE_SOURCE_DIR}/Data/Sample)
  #set_tests_properties(clp_example_OsiClpSolverInterfaceTest PROPERTIES TIMEOUT 30)
  #
  
  #add_executable(osiUnitTest ${Clp_DIR}/test/osiUnitTest.cpp)
  #target_link_libraries(osiUnitTest libClp libCoinUtils lapack)
  #set_include_directories(osiUnitTest)
  #if (COINUTILS_HAS_ZLIB)
  #  target_link_libraries(osiUnitTest ${ZLIB_NAME})
  #endif ()
  #if (COINUTILS_HAS_BZLIB)
  #  target_link_libraries(osiUnitTest ${BZLIB_NAME})
  #endif ()
  #
  #add_test(NAME clp_example_osiUnitTest
  #         COMMAND $<TARGET_FILE:osiUnitTest> ${CMAKE_SOURCE_DIR}/Data/Sample)
  #set_tests_properties(clp_example_osiUnitTest PROPERTIES TIMEOUT 30)
  #
endif ()

add_executable(clp ${Clp_MAIN_SRC_LIST})
target_link_libraries(clp libClp libClpSolver libCoinUtils lapack)
set_include_directories(clp)
if (COINUTILS_HAS_ZLIB)
  target_link_libraries(clp ${ZLIB_NAME})
endif ()
if (COINUTILS_HAS_BZLIB)
  target_link_libraries(clp ${BZLIB_NAME})
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
