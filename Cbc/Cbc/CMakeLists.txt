cmake_minimum_required(VERSION 2.8)

project(Cbc)

set(CBC_VERSION_MAJOR   "2" CACHE STRING "The CBC major version number")
set(CBC_VERSION_MINOR   "8" CACHE STRING "The CBC minor version number")
set(CBC_VERSION_RELEASE "9" CACHE STRING "The CBC patch version number")
set(CBC_VERSION "${CBC_VERSION_MAJOR}.${CBC_VERSION_MINOR}.${CBC_VERSION_RELEASE}")
set(CBC_SVN_REV "${CBC_VERSION_RELEASE}")

add_definitions(-DCBC_BUILD)

configure_file(${CMAKE_SOURCE_DIR}/Cbc/include/config.h.in     ${CMAKE_BINARY_DIR}/Cbc/include/config.h)
configure_file(${CMAKE_SOURCE_DIR}/Cbc/include/config_cbc.h.in ${CMAKE_BINARY_DIR}/Cbc/include/config_cbc.h)

# ${Cbc_DIR}/src/CbcBranchBase.cpp must not be compiled yet (not in the Makefile.am in release 2.8.3)
set(Cbc_SRC_LIST ${Cbc_DIR}/src/CbcBranchAllDifferent.cpp
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

#${Cbc_DIR}/src/Cbc_ampl.cpp
#${Cbc_DIR}/src/CbcGeneric.cpp
#${Cbc_DIR}/src/Cbc_C_Interface.cpp
#${Cbc_DIR}/src/CoinSolve.cpp
#${Cbc_DIR}/src/unitTest.cpp

include_directories(${Cgl_DIR}/src)
include_directories(${Cbc_DIR}/src)
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

include_directories(${CMAKE_BINARY_DIR}/Cbc/include)
include_directories(${CMAKE_BINARY_DIR}/Cgl/include)
include_directories(${CMAKE_BINARY_DIR}/Clp/include)
include_directories(${CMAKE_BINARY_DIR}/CoinUtils/include)

if (WIN32)
  add_definitions(-DUSE_CBCCONFIG -DCOIN_NO_CLP_MESSAGE -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
else ()
  add_definitions(-DUSE_CBCCONFIG -DCOIN_NO_CLP_MESSAGE)
endif ()

add_library(libCbc STATIC ${Cbc_SRC_LIST})

install(TARGETS libCbc 
        DESTINATION lib)

install(FILES ${Cbc_SRC_LIST_Headers} 
        DESTINATION include/coin)

install(FILES ${CMAKE_BINARY_DIR}/Cbc/include/config_cbc.h
        DESTINATION include/coin
        RENAME CbcConfig.h)
