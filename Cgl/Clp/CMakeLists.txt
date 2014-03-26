cmake_minimum_required(VERSION 2.8)

project(Clp)

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

set(Clp_MAIN_SRC_LIST ${Clp_DIR}/src/ClpMain.cpp
                      ${Clp_DIR}/src/CbcOrClpParam.cpp
                      ${Clp_DIR}/src/MyEventHandler.cpp
                      ${Clp_DIR}/src/MyMessageHandler.cpp
                      ${Clp_DIR}/src/unitTest.cpp)

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
                         ${Clp_DIR}/src/CbcOrClpParam.cpp
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

include_directories(${CMAKE_BINARY_DIR}/CoinUtils/include)
include_directories(${CMAKE_BINARY_DIR}/Clp/include)

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libClp SHARED ${Clp_SRC_LIST})
else ()
  add_library(libClp STATIC ${Clp_SRC_LIST})
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

#${Clp_DIR}/examples/addBits.cpp
#${Clp_DIR}/examples/addColumns.cpp
#${Clp_DIR}/examples/addRows.cpp
#${Clp_DIR}/examples/decomp2.cpp
#${Clp_DIR}/examples/decomp3.cpp
#${Clp_DIR}/examples/decompose.cpp
#${Clp_DIR}/examples/defaults.cpp
#${Clp_DIR}/examples/driver2.cpp
#${Clp_DIR}/examples/driver.cpp
#${Clp_DIR}/examples/dualCuts.cpp
#${Clp_DIR}/examples/ekk.cpp
#${Clp_DIR}/examples/ekk_interface.cpp
#${Clp_DIR}/examples/hello.cpp
#${Clp_DIR}/examples/makeDual.cpp
#${Clp_DIR}/examples/minimum.cpp
#${Clp_DIR}/examples/modify.cpp
#${Clp_DIR}/examples/myPdco.cpp
#${Clp_DIR}/examples/network.cpp
#${Clp_DIR}/examples/pdco.cpp
#${Clp_DIR}/examples/piece.cpp
#${Clp_DIR}/examples/rowColumn.cpp
#${Clp_DIR}/examples/sprint2.cpp
#${Clp_DIR}/examples/sprint.cpp
#${Clp_DIR}/examples/testBarrier.cpp
#${Clp_DIR}/examples/testBasis.cpp
#${Clp_DIR}/examples/testGub2.cpp
#${Clp_DIR}/examples/testGub.cpp
#${Clp_DIR}/examples/testQP.cpp
#${Clp_DIR}/examples/useVolume.cpp
#${Clp_DIR}/test/OsiClpSolverInterfaceTest.cpp
#${Clp_DIR}/test/osiUnitTest.cpp
#${Clp_DIR}/src/unitTest.cpp)

install(TARGETS libClp 
        DESTINATION lib)

install(FILES ${Clp_SRC_LIST_Headers} 
        DESTINATION include/coin)

install(FILES ${CMAKE_BINARY_DIR}/Clp/include/config_clp.h
        DESTINATION include/coin
        RENAME ClpConfig.h)
