cmake_minimum_required(VERSION 2.8)

project(Cbc)

option(CBC_BUILD_CBC_GENERIC "Build the generic version of Cbc" OFF)
option(CBC_ENABLE_EXAMPLES "Enable the building of examples" OFF)
set(CBC_VERSION_MAJOR   "2" CACHE STRING "The CBC major version number")
set(CBC_VERSION_MINOR   "8" CACHE STRING "The CBC minor version number")
set(CBC_VERSION_RELEASE "9" CACHE STRING "The CBC patch version number")
set(CBC_VERSION "${CBC_VERSION_MAJOR}.${CBC_VERSION_MINOR}.${CBC_VERSION_RELEASE}")
set(CBC_SVN_REV "${CBC_VERSION_RELEASE}")

add_definitions(-DCBC_BUILD)

configure_file(${CMAKE_SOURCE_DIR}/Cbc/include/config.h.in     ${CMAKE_BINARY_DIR}/Cbc/include/config.h)
configure_file(${CMAKE_SOURCE_DIR}/Cbc/include/config_cbc.h.in ${CMAKE_BINARY_DIR}/Cbc/include/config_cbc.h)

# ${Cbc_DIR}/src/CbcBranchBase.cpp must not be compiled yet (not in the Makefile.am in release 2.8.3)
set(Cbc_SRC_LIST ${Cbc_DIR}/src/Cbc_C_Interface.cpp
                 ${Cbc_DIR}/src/CbcBranchAllDifferent.cpp
                 ${Cbc_DIR}/src/CbcBranchCut.cpp
                 ${Cbc_DIR}/src/CbcBranchDecision.cpp
                 ${Cbc_DIR}/src/CbcBranchDefaultDecision.cpp
                 ${Cbc_DIR}/src/CbcBranchDynamic.cpp
                 ${Cbc_DIR}/src/CbcBranchingObject.cpp
                 ${Cbc_DIR}/src/CbcBranchLotsize.cpp
                 ${Cbc_DIR}/src/CbcBranchToFixLots.cpp
                 ${Cbc_DIR}/src/CbcCbcParam.cpp
                 ${Cbc_DIR}/src/CbcClique.cpp
                 ${Cbc_DIR}/src/CbcCompareDefault.cpp
                 ${Cbc_DIR}/src/CbcCompareDepth.cpp
                 ${Cbc_DIR}/src/CbcCompareEstimate.cpp
                 ${Cbc_DIR}/src/CbcCompareObjective.cpp
                 ${Cbc_DIR}/src/CbcConsequence.cpp
                 ${Cbc_DIR}/src/CbcCountRowCut.cpp
                 ${Cbc_DIR}/src/CbcCutGenerator.cpp
                 ${Cbc_DIR}/src/CbcCutModifier.cpp
                 ${Cbc_DIR}/src/CbcCutSubsetModifier.cpp
                 ${Cbc_DIR}/src/CbcDummyBranchingObject.cpp
                 ${Cbc_DIR}/src/CbcEventHandler.cpp
                 ${Cbc_DIR}/src/CbcFathom.cpp
                 ${Cbc_DIR}/src/CbcFathomDynamicProgramming.cpp
                 ${Cbc_DIR}/src/CbcFixVariable.cpp
                 ${Cbc_DIR}/src/CbcFollowOn.cpp
                 ${Cbc_DIR}/src/CbcFullNodeInfo.cpp
                 ${Cbc_DIR}/src/CbcGenBaB.cpp
                 ${Cbc_DIR}/src/CbcGenCbcParam.cpp
                 ${Cbc_DIR}/src/CbcGenCbcParamUtils.cpp
                 ${Cbc_DIR}/src/CbcGenCtlBlk.cpp
                 ${Cbc_DIR}/src/CbcGeneral.cpp
                 ${Cbc_DIR}/src/CbcGeneralDepth.cpp
                 ${Cbc_DIR}/src/CbcGenMessages.cpp
                 ${Cbc_DIR}/src/CbcGenOsiParam.cpp
                 ${Cbc_DIR}/src/CbcGenOsiParamUtils.cpp
                 ${Cbc_DIR}/src/CbcGenParam.cpp
                 ${Cbc_DIR}/src/CbcGenParamUtils.cpp
                 ${Cbc_DIR}/src/CbcGenSolution.cpp
                 ${Cbc_DIR}/src/CbcGenSolvers.cpp
                 ${Cbc_DIR}/src/CbcHeuristic.cpp
                 ${Cbc_DIR}/src/CbcHeuristicDINS.cpp
                 ${Cbc_DIR}/src/CbcHeuristicDiveCoefficient.cpp
                 ${Cbc_DIR}/src/CbcHeuristicDive.cpp
                 ${Cbc_DIR}/src/CbcHeuristicDiveFractional.cpp
                 ${Cbc_DIR}/src/CbcHeuristicDiveGuided.cpp
                 ${Cbc_DIR}/src/CbcHeuristicDiveLineSearch.cpp
                 ${Cbc_DIR}/src/CbcHeuristicDivePseudoCost.cpp
                 ${Cbc_DIR}/src/CbcHeuristicDiveVectorLength.cpp
                 ${Cbc_DIR}/src/CbcHeuristicDW.cpp
                 ${Cbc_DIR}/src/CbcHeuristicFPump.cpp
                 ${Cbc_DIR}/src/CbcHeuristicGreedy.cpp
                 ${Cbc_DIR}/src/CbcHeuristicLocal.cpp
                 ${Cbc_DIR}/src/CbcHeuristicPivotAndFix.cpp
                 ${Cbc_DIR}/src/CbcHeuristicRandRound.cpp
                 ${Cbc_DIR}/src/CbcHeuristicRENS.cpp
                 ${Cbc_DIR}/src/CbcHeuristicRINS.cpp
                 ${Cbc_DIR}/src/CbcHeuristicVND.cpp
                 ${Cbc_DIR}/src/CbcLinked.cpp
                 ${Cbc_DIR}/src/CbcLinkedUtils.cpp
                 ${Cbc_DIR}/src/CbcMessage.cpp
                 ${Cbc_DIR}/src/CbcMipStartIO.cpp
                 ${Cbc_DIR}/src/CbcModel.cpp
                 ${Cbc_DIR}/src/CbcNode.cpp
                 ${Cbc_DIR}/src/CbcNodeInfo.cpp
                 ${Cbc_DIR}/src/CbcNWay.cpp
                 ${Cbc_DIR}/src/CbcObject.cpp
                 ${Cbc_DIR}/src/CbcObjectUpdateData.cpp
                 ${Cbc_DIR}/src/CbcParam.cpp
                 ${Cbc_DIR}/src/CbcPartialNodeInfo.cpp
                 ${Cbc_DIR}/src/CbcSimpleInteger.cpp
                 ${Cbc_DIR}/src/CbcSimpleIntegerDynamicPseudoCost.cpp
                 ${Cbc_DIR}/src/CbcSimpleIntegerPseudoCost.cpp
                 ${Cbc_DIR}/src/CbcSolverAnalyze.cpp
                 ${Cbc_DIR}/src/CbcSolver.cpp
                 ${Cbc_DIR}/src/CbcSolverExpandKnapsack.cpp
                 ${Cbc_DIR}/src/CbcSolverHeuristics.cpp
                 ${Cbc_DIR}/src/CbcSOS.cpp
                 ${Cbc_DIR}/src/CbcStatistics.cpp
                 ${Cbc_DIR}/src/CbcStrategy.cpp
                 ${Cbc_DIR}/src/CbcSubProblem.cpp
                 ${Cbc_DIR}/src/CbcThread.cpp
                 ${Cbc_DIR}/src/CbcTree.cpp
                 ${Cbc_DIR}/src/CbcTreeLocal.cpp
	         ${Cbc_DIR}/src/unitTestClp.cpp)

set(Cbc_SRC_LIST_Headers ${Cbc_DIR}/src/Cbc_C_Interface.h
                         ${Cbc_DIR}/src/CbcBranchActual.hpp
                         ${Cbc_DIR}/src/CbcBranchAllDifferent.hpp
                         ${Cbc_DIR}/src/CbcBranchBase.hpp
                         ${Cbc_DIR}/src/CbcBranchDynamic.hpp
                         ${Cbc_DIR}/src/CbcBranchCut.hpp
                         ${Cbc_DIR}/src/CbcBranchDecision.hpp
                         ${Cbc_DIR}/src/CbcBranchDefaultDecision.hpp
                         ${Cbc_DIR}/src/CbcBranchingObject.hpp
                         ${Cbc_DIR}/src/CbcBranchLotsize.hpp
                         ${Cbc_DIR}/src/CbcBranchToFixLots.hpp
                         ${Cbc_DIR}/src/CbcCompareActual.hpp
                         ${Cbc_DIR}/src/CbcCompareBase.hpp
                         ${Cbc_DIR}/src/CbcCompareDefault.hpp
                         ${Cbc_DIR}/src/CbcCompareDepth.hpp
                         ${Cbc_DIR}/src/CbcCompareEstimate.hpp
                         ${Cbc_DIR}/src/CbcCompareObjective.hpp
                         ${Cbc_DIR}/src/CbcConsequence.hpp
                         ${Cbc_DIR}/src/CbcClique.hpp
                         ${Cbc_DIR}/src/CbcCompare.hpp
                         ${Cbc_DIR}/src/CbcCountRowCut.hpp
                         ${Cbc_DIR}/src/CbcCutGenerator.hpp
                         ${Cbc_DIR}/src/CbcCutModifier.hpp
                         ${Cbc_DIR}/src/CbcCutSubsetModifier.hpp
                         ${Cbc_DIR}/src/CbcDummyBranchingObject.hpp
                         ${Cbc_DIR}/src/CbcFathom.hpp
                         ${Cbc_DIR}/src/CbcEventHandler.hpp
                         ${Cbc_DIR}/src/CbcFathomDynamicProgramming.hpp
                         ${Cbc_DIR}/src/CbcFeasibilityBase.hpp
                         ${Cbc_DIR}/src/CbcFixVariable.hpp
                         ${Cbc_DIR}/src/CbcFollowOn.hpp
                         ${Cbc_DIR}/src/CbcFullNodeInfo.hpp
                         ${Cbc_DIR}/src/CbcGeneral.hpp
                         ${Cbc_DIR}/src/CbcGeneralDepth.hpp
                         ${Cbc_DIR}/src/CbcHeuristic.hpp
                         ${Cbc_DIR}/src/CbcHeuristicDINS.hpp
                         ${Cbc_DIR}/src/CbcHeuristicDive.hpp
                         ${Cbc_DIR}/src/CbcHeuristicDiveCoefficient.hpp
                         ${Cbc_DIR}/src/CbcHeuristicDiveFractional.hpp
                         ${Cbc_DIR}/src/CbcHeuristicDiveGuided.hpp
                         ${Cbc_DIR}/src/CbcHeuristicDiveLineSearch.hpp
                         ${Cbc_DIR}/src/CbcHeuristicDivePseudoCost.hpp
                         ${Cbc_DIR}/src/CbcHeuristicDiveVectorLength.hpp
                         ${Cbc_DIR}/src/CbcHeuristicDW.hpp
                         ${Cbc_DIR}/src/CbcHeuristicFPump.hpp
                         ${Cbc_DIR}/src/CbcHeuristicGreedy.hpp
                         ${Cbc_DIR}/src/CbcHeuristicLocal.hpp
                         ${Cbc_DIR}/src/CbcHeuristicPivotAndFix.hpp
                         ${Cbc_DIR}/src/CbcHeuristicRandRound.hpp
                         ${Cbc_DIR}/src/CbcHeuristicRENS.hpp
                         ${Cbc_DIR}/src/CbcHeuristicRINS.hpp
                         ${Cbc_DIR}/src/CbcHeuristicVND.hpp
                         ${Cbc_DIR}/src/CbcMessage.hpp
                         ${Cbc_DIR}/src/CbcModel.hpp
                         ${Cbc_DIR}/src/CbcNode.hpp
                         ${Cbc_DIR}/src/CbcNodeInfo.hpp
                         ${Cbc_DIR}/src/CbcNWay.hpp
                         ${Cbc_DIR}/src/CbcObject.hpp
                         ${Cbc_DIR}/src/CbcObjectUpdateData.hpp
                         ${Cbc_DIR}/src/CbcPartialNodeInfo.hpp
                         ${Cbc_DIR}/src/CbcSimpleInteger.hpp
                         ${Cbc_DIR}/src/CbcSimpleIntegerDynamicPseudoCost.hpp
                         ${Cbc_DIR}/src/CbcSimpleIntegerPseudoCost.hpp
                         ${Cbc_DIR}/src/CbcStrategy.hpp
                         ${Cbc_DIR}/src/CbcSolver.hpp
                         ${Cbc_DIR}/src/CbcMipStartIO.hpp
                         ${Cbc_DIR}/src/CbcSOS.hpp
                         ${Cbc_DIR}/src/CbcSubProblem.hpp
                         ${Cbc_DIR}/src/CbcTree.hpp
                         ${Cbc_DIR}/src/CbcLinked.hpp
                         ${Cbc_DIR}/src/CbcTreeLocal.hpp
                         ${Cbc_DIR}/src/ClpConstraintAmpl.hpp
                         ${Cbc_DIR}/src/ClpAmplObjective.hpp)

if (USE_AMPL)
  set(Cbc_SRC_LIST ${Cbc_SRC_LIST}
                   ${Cbc_DIR}/src/Cbc_ampl.cpp)
  
  set(Cbc_SRC_LIST_Headers ${Cbc_SRC_LIST_Headers}
                   ${Cbc_DIR}/src/Cbc_ampl.h)
endif ()

include_directories(${Cbc_DIR}/src)
include_directories(${Cbc_DIR}/src/OsiCbc)
if (COIN_HAS_GLPK)
  include_directories(${Osi_DIR}/src/OsiGlpk)
endif ()
include_directories(${Cgl_DIR}/src)
include_directories(${Cgl_DIR}/src/CglAllDifferent)
include_directories(${Cgl_DIR}/src/CglClique)
include_directories(${Cgl_DIR}/src/CglDuplicateRow)
include_directories(${Cgl_DIR}/src/CglFlowCover)
include_directories(${Cgl_DIR}/src/CglGomory)
include_directories(${Cgl_DIR}/src/CglGMI)
include_directories(${Cgl_DIR}/src/CglKnapsackCover)
include_directories(${Cgl_DIR}/src/CglLandP)
include_directories(${Cgl_DIR}/src/CglMixedIntegerRounding)
include_directories(${Cgl_DIR}/src/CglMixedIntegerRounding2)
include_directories(${Cgl_DIR}/src/CglOddHole)
include_directories(${Cgl_DIR}/src/CglPreProcess)
include_directories(${Cgl_DIR}/src/CglProbing)
include_directories(${Cgl_DIR}/src/CglRedSplit)
include_directories(${Cgl_DIR}/src/CglRedSplit2)
include_directories(${Cgl_DIR}/src/CglResidualCapacity)
include_directories(${Cgl_DIR}/src/CglTwomir)
include_directories(${Cgl_DIR}/src/CglZeroHalf)
include_directories(${Cgl_DIR}/src/CglProbing)

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Clp_DIR}/src)
include_directories(${Clp_DIR}/src/OsiClp)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Cgl/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Clp/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Cbc/include)
endmacro()

if (WIN32)
  add_definitions(-DUSE_CBCCONFIG -DCOIN_NO_CLP_MESSAGE -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
else ()
  add_definitions(-DUSE_CBCCONFIG -DCOIN_NO_CLP_MESSAGE)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libCbc SHARED ${Cbc_SRC_LIST})
else ()
  add_library(libCbc STATIC ${Cbc_SRC_LIST})
endif ()
if (NOT WIN32)
  set_target_properties(libCbc PROPERTIES PREFIX "")
endif ()
set_include_directories(libCbc)

if (CBC_ENABLE_EXAMPLES)
  add_executable(allCuts ${Cbc_DIR}/examples/allCuts.cpp)
  target_link_libraries(allCuts libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(allCuts)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(allCuts ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(allCuts ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(allCuts glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(allCuts amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(allCuts cholmod)
  endif () 
  
  add_test(NAME cbc_example_allCuts
           COMMAND $<TARGET_FILE:allCuts> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_allCuts PROPERTIES TIMEOUT 30)
  
  
  add_executable(driver ${Cbc_DIR}/examples/driver.cpp)
  target_link_libraries(driver libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(driver)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(driver ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(driver ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(driver glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(driver amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(driver cholmod)
  endif () 
  
  add_test(NAME cbc_example_driver
           COMMAND $<TARGET_FILE:driver> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_driver PROPERTIES TIMEOUT 30)
  
  
  add_executable(longthin ${Cbc_DIR}/examples/longthin.cpp ${Cbc_DIR}/examples/CbcBranchUser.cpp ${Cbc_DIR}/examples/CbcCompareUser.cpp ${Cbc_DIR}/examples/CbcSolver2.cpp)
  target_link_libraries(longthin libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(longthin)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(longthin ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(longthin ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(longthin glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(longthin amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(longthin cholmod)
  endif () 
  
  add_test(NAME cbc_example_longthin
           COMMAND $<TARGET_FILE:longthin> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_longthin PROPERTIES TIMEOUT 30)
  
  
  add_executable(qmip2 ${Cbc_DIR}/examples/qmip2.cpp ${Cbc_DIR}/examples/CbcBranchUser.cpp)
  target_link_libraries(qmip2 libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(qmip2)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(qmip2 ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(qmip2 ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(qmip2 glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(qmip2 amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(qmip2 cholmod)
  endif () 
  
  add_test(NAME cbc_example_qmip2
           COMMAND $<TARGET_FILE:qmip2> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_qmip2 PROPERTIES TIMEOUT 30)
  
  
  add_executable(sample5 ${Cbc_DIR}/examples/sample5.cpp ${Cbc_DIR}/examples/CbcBranchUser.cpp ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  target_link_libraries(sample5 libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(sample5)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(sample5 ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(sample5 ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(sample5 glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(sample5 amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(sample5 cholmod)
  endif () 
  
  add_test(NAME cbc_example_sample5
           COMMAND $<TARGET_FILE:sample5> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_sample5 PROPERTIES TIMEOUT 30)
  
  
  add_executable(barrier ${Cbc_DIR}/examples/barrier.cpp)
  target_link_libraries(barrier libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(barrier)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(barrier ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(barrier ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(barrier glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(barrier amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(barrier cholmod)
  endif () 
  
  add_test(NAME cbc_example_barrier
           COMMAND $<TARGET_FILE:barrier> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_barrier PROPERTIES TIMEOUT 30)
  
  
  add_executable(fast0507b ${Cbc_DIR}/examples/fast0507b.cpp ${Cbc_DIR}/examples/CbcBranchFollow2.cpp ${Cbc_DIR}/examples/CbcBranchUser.cpp ${Cbc_DIR}/examples/CbcCompareUser.cpp ${Cbc_DIR}/examples/CbcSolver2.cpp ${Cbc_DIR}/examples/CbcSolver3.cpp)
  target_link_libraries(fast0507b libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(fast0507b)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(fast0507b ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(fast0507b ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(fast0507b glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(fast0507b amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(fast0507b cholmod)
  endif () 
  
  add_test(NAME cbc_example_fast0507b
           COMMAND $<TARGET_FILE:fast0507b> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_fast0507b PROPERTIES TIMEOUT 30)
  
  
  add_executable(lotsize ${Cbc_DIR}/examples/lotsize.cpp)
  target_link_libraries(lotsize libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(lotsize)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(lotsize ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(lotsize ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(lotsize glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(lotsize amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(lotsize cholmod)
  endif () 
  
  add_test(NAME cbc_example_lotsize
           COMMAND $<TARGET_FILE:lotsize> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_lotsize PROPERTIES TIMEOUT 30)
  
  
  add_executable(qmip ${Cbc_DIR}/examples/qmip.cpp ${Cbc_DIR}/examples/CbcBranchUser.cpp ${Cbc_DIR}/examples/CbcCompareUser.cpp ${Cbc_DIR}/examples/ClpQuadInterface.cpp)
  target_link_libraries(qmip libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(qmip)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(qmip ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(qmip ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(qmip glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(qmip amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(qmip cholmod)
  endif () 
  
  add_test(NAME cbc_example_qmip
           COMMAND $<TARGET_FILE:qmip> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_qmip PROPERTIES TIMEOUT 30)
  
  
  add_executable(simpleBAB ${Cbc_DIR}/examples/simpleBAB.cpp)
  target_link_libraries(simpleBAB libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(simpleBAB)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(simpleBAB ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(simpleBAB ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(simpleBAB glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(simpleBAB amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(simpleBAB cholmod)
  endif () 
  
  add_test(NAME cbc_example_simpleBAB
           COMMAND $<TARGET_FILE:simpleBAB> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_simpleBAB PROPERTIES TIMEOUT 30)
  
  
  add_executable(fast0507 ${Cbc_DIR}/examples/fast0507.cpp ${Cbc_DIR}/examples/CbcCompareUser.cpp ${Cbc_DIR}/examples/CbcSolver3.cpp ${Cbc_DIR}/examples/CbcBranchUser.cpp)
  target_link_libraries(fast0507 libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(fast0507)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(fast0507 ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(fast0507 ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(fast0507 glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(fast0507 amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(fast0507 cholmod)
  endif () 
  
  add_test(NAME cbc_example_fast0507
           COMMAND $<TARGET_FILE:fast0507> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_fast0507 PROPERTIES TIMEOUT 30)
  
  
  add_executable(minimum ${Cbc_DIR}/examples/minimum.cpp)
  target_link_libraries(minimum libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(minimum)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(minimum ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(minimum ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(minimum glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(minimum amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(minimum cholmod)
  endif () 
  
  add_test(NAME cbc_example_minimum
           COMMAND $<TARGET_FILE:minimum> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_minimum PROPERTIES TIMEOUT 30)
  
  
  add_executable(repeat ${Cbc_DIR}/examples/repeat.cpp ${Cbc_DIR}/examples/CbcBranchUser.cpp ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  target_link_libraries(repeat libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(repeat)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(repeat ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(repeat ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(repeat glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(repeat amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(repeat cholmod)
  endif () 
  
  add_test(NAME cbc_example_repeat
           COMMAND $<TARGET_FILE:repeat> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_repeat PROPERTIES TIMEOUT 30)
  
  
  add_executable(sos ${Cbc_DIR}/examples/sos.cpp)
  target_link_libraries(sos libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(sos)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(sos ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(sos ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(sos glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(sos amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(sos cholmod)
  endif () 
  
  add_test(NAME cbc_example_sos
           COMMAND $<TARGET_FILE:sos> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_sos PROPERTIES TIMEOUT 30)
  
  
  add_executable(crew ${Cbc_DIR}/examples/crew.cpp ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  target_link_libraries(crew libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(crew)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(crew ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(crew ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(crew glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(crew amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(crew cholmod)
  endif () 
  
  add_test(NAME cbc_example_crew
           COMMAND $<TARGET_FILE:crew> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_crew PROPERTIES TIMEOUT 30)
  
  
  add_executable(gear ${Cbc_DIR}/examples/gear.cpp ${Cbc_DIR}/examples/CbcBranchLink.cpp)
  target_link_libraries(gear libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(gear)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(gear ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(gear ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(gear glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(gear amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(gear cholmod)
  endif () 
  
  add_test(NAME cbc_example_gear
           COMMAND $<TARGET_FILE:gear> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_gear PROPERTIES TIMEOUT 30)
  
  
  add_executable(modify ${Cbc_DIR}/examples/modify.cpp)
  target_link_libraries(modify libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(modify)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(modify ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(modify ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(modify glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(modify amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(modify cholmod)
  endif () 
  
  add_test(NAME cbc_example_modify
           COMMAND $<TARGET_FILE:modify> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_modify PROPERTIES TIMEOUT 30)
  
  
  add_executable(sample1 ${Cbc_DIR}/examples/sample1.cpp ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  target_link_libraries(sample1 libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(sample1)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(sample1 ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(sample1 ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(sample1 glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(sample1 amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(sample1 cholmod)
  endif () 
  
  add_test(NAME cbc_example_sample1
           COMMAND $<TARGET_FILE:sample1> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_sample1 PROPERTIES TIMEOUT 30)
  
  
  add_executable(sudoku ${Cbc_DIR}/examples/sudoku.cpp)
  target_link_libraries(sudoku libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(sudoku)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(sudoku ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(sudoku ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(sudoku glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(sudoku amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(sudoku cholmod)
  endif () 
  
  add_test(NAME cbc_example_sudoku
           COMMAND $<TARGET_FILE:sudoku> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_sudoku PROPERTIES TIMEOUT 30)
  
  
  add_executable(driver2 ${Cbc_DIR}/examples/driver2.cpp)
  target_link_libraries(driver2 libCbc libOsiCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(driver2)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(driver2 ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(driver2 ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(driver2 glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(driver2 amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(driver2 cholmod)
  endif () 
  
  add_test(NAME cbc_example_driver2
           COMMAND $<TARGET_FILE:driver2> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_driver2 PROPERTIES TIMEOUT 30)
  
  
  add_executable(hotstart ${Cbc_DIR}/examples/hotstart.cpp ${Cbc_DIR}/examples/CbcBranchUser.cpp ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  target_link_libraries(hotstart libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(hotstart)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(hotstart ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(hotstart ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(hotstart glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(hotstart amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(hotstart cholmod)
  endif () 
  
  add_test(NAME cbc_example_hotstart
           COMMAND $<TARGET_FILE:hotstart> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_hotstart PROPERTIES TIMEOUT 30)
  
  
  add_executable(nway ${Cbc_DIR}/examples/nway.cpp)
  target_link_libraries(nway libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(nway)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(nway ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(nway ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(nway glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(nway amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(nway cholmod)
  endif () 
  
  add_test(NAME cbc_example_nway
           COMMAND $<TARGET_FILE:nway> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_nway PROPERTIES TIMEOUT 30)
  
  
  add_executable(sample2 ${Cbc_DIR}/examples/sample2.cpp ${Cbc_DIR}/examples/CbcBranchUser.cpp ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  target_link_libraries(sample2 libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(sample2)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(sample2 ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(sample2 ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(sample2 glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(sample2 amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(sample2 cholmod)
  endif () 
  
  add_test(NAME cbc_example_sample2
           COMMAND $<TARGET_FILE:sample2> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_sample2 PROPERTIES TIMEOUT 30)
  
  
  add_executable(driver3 ${Cbc_DIR}/examples/driver3.cpp)
  target_link_libraries(driver3 libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(driver3)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(driver3 ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(driver3 ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(driver3 glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(driver3 amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(driver3 cholmod)
  endif () 
  
  add_test(NAME cbc_example_driver3
           COMMAND $<TARGET_FILE:driver3> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_driver3 PROPERTIES TIMEOUT 30)
  
  
  add_executable(interrupt ${Cbc_DIR}/examples/interrupt.cpp ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  target_link_libraries(interrupt libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(interrupt)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(interrupt ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(interrupt ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(interrupt glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(interrupt amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(interrupt cholmod)
  endif () 
  
  add_test(NAME cbc_example_interrupt
           COMMAND $<TARGET_FILE:interrupt> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_interrupt PROPERTIES TIMEOUT 30)
  
  
  add_executable(sample3 ${Cbc_DIR}/examples/sample3.cpp ${Cbc_DIR}/examples/CbcBranchUser.cpp ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  target_link_libraries(sample3 libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(sample3)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(sample3 ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(sample3 ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(sample3 glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(sample3 amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(sample3 cholmod)
  endif () 
  
  add_test(NAME cbc_example_sample3
           COMMAND $<TARGET_FILE:sample3> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_sample3 PROPERTIES TIMEOUT 30)
  
  
  add_executable(driver4 ${Cbc_DIR}/examples/driver4.cpp ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  target_link_libraries(driver4 libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(driver4)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(driver4 ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(driver4 ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(driver4 glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(driver4 amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(driver4 cholmod)
  endif () 
  
  add_test(NAME cbc_example_driver4
           COMMAND $<TARGET_FILE:driver4> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_driver4 PROPERTIES TIMEOUT 30)
  
  
  add_executable(link ${Cbc_DIR}/examples/link.cpp ${Cbc_DIR}/examples/CbcBranchLink.cpp)
  target_link_libraries(link libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(link)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(link ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(link ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(link glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(link amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(link cholmod)
  endif () 
  
  add_test(NAME cbc_example_link
           COMMAND $<TARGET_FILE:link> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_link PROPERTIES TIMEOUT 30)
  
  
  add_executable(parallel ${Cbc_DIR}/examples/parallel.cpp ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  target_link_libraries(parallel libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack pthread)
  set_include_directories(parallel)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(parallel ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(parallel ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(parallel glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(parallel amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(parallel cholmod)
  endif () 
  
  add_test(NAME cbc_example_parallel
           COMMAND $<TARGET_FILE:parallel> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_parallel PROPERTIES TIMEOUT 30)
  
  
  add_executable(sample4 ${Cbc_DIR}/examples/sample4.cpp ${Cbc_DIR}/examples/CbcBranchUser.cpp ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  target_link_libraries(sample4 libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(sample4)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(sample4 ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(sample4 ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(sample4 glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(sample4 amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(sample4 cholmod)
  endif () 
  
  add_test(NAME cbc_example_sample4
           COMMAND $<TARGET_FILE:sample4> ${CMAKE_SOURCE_DIR}/Data/Sample)
  set_tests_properties(cbc_example_sample4 PROPERTIES TIMEOUT 30)
  
endif()

if (COIN_HAS_CLP)
  add_executable(cbc ${Cbc_DIR}/src/CoinSolve.cpp)
  target_link_libraries(cbc libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(cbc)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(cbc ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(cbc ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(cbc glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(cbc amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(cbc cholmod)
  endif () 
  
  install(TARGETS cbc
          DESTINATION bin)
endif ()

if (CBC_BUILD_CBC_GENERIC)
  add_executable(cbc-generic ${Cbc_DIR}/src/CbcGenBaB.cpp
                             ${Cbc_DIR}/src/CbcGenCbcParam.cpp
			     ${Cbc_DIR}/src/CbcGenCbcParamUtils.cpp
			     ${Cbc_DIR}/src/CbcGenCtlBlk.cpp
			     ${Cbc_DIR}/src/CbcGeneric.cpp
			     ${Cbc_DIR}/src/CbcGenMessages.cpp
			     ${Cbc_DIR}/src/CbcGenOsiParam.cpp
			     ${Cbc_DIR}/src/CbcGenOsiParamUtils.cpp
			     ${Cbc_DIR}/src/CbcGenParam.cpp
			     ${Cbc_DIR}/src/CbcGenParamUtils.cpp
			     ${Cbc_DIR}/src/CbcGenSolution.cpp
			     ${Cbc_DIR}/src/CbcGenSolvers.cpp)
  target_link_libraries(cbc-generic libCbc libCgl libOsiClp libOsi libClp libCoinUtils lapack)
  set_include_directories(cbc-generic)
  if (COINUTILS_HAS_ZLIB)
    target_link_libraries(cbc-generic ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB)
    target_link_libraries(cbc-generic ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK)
    target_link_libraries(cbc-generic glpk)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(cbc-generic amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(cbc-generic cholmod)
  endif () 
  
  install(TARGETS cbc-generic
          DESTINATION bin)
endif ()

install(TARGETS libCbc 
        DESTINATION lib)

install(FILES ${Cbc_SRC_LIST_Headers} 
        DESTINATION include/coin)

install(FILES ${CMAKE_BINARY_DIR}/Cbc/include/config_cbc.h
        DESTINATION include/coin
        RENAME CbcConfig.h)
