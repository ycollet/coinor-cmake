get_ac_init_version(${Couenne_DIR}/configure.ac COUENNE)

set(COUENNE_VERSION_MAJOR   "${COUENNE_MAJOR_VERSION}"  CACHE STRING "The Couenne major version number")
set(COUENNE_VERSION_MINOR   "${COUENNE_MINOR_VERSION}"  CACHE STRING "The Couenne minor version number")
set(COUENNE_VERSION_RELEASE "${COUENNE_PATCH_VERSION}"  CACHE STRING "The Couenne patch version number")
set(COUENNE_VERSION         "${COUENNE_VERSION_STRING}" CACHE STRING "The Couenne version")

set(COUENNE_WC_REVISION "0")
if (EXISTS "${Couenne_DIR}/../.svn")
  find_package(Subversion)
  if (Subversion_FOUND)
    Subversion_WC_INFO(${Couenne_DIR}/.. COUENNE)
  endif ()
endif ()

if (EXISTS "${Couenne_DIR}/../.git")
  find_package(Git)
  if (Git_FOUND)
    include(export_git)
    GIT_WC_INFO(${Couenne_DIR}/.. COUENNE)
    set(COUENNE_WC_REVISION "${COUENNE_WC_SVNEQUIV}") # alphanumeric rev not yet managed
  endif ()
endif ()

message(STATUS "Current Couenne revision is ${COUENNE_WC_REVISION}")
set(COUENNE_SVN_REV "${COUENNE_WC_REVISION}" CACHE STRING "The Couenne subversion revision" FORCE)

mark_as_advanced(COUENNE_VERSION_MAJOR
                 COUENNE_VERSION_MINOR
                 COUENNE_VERSION_RELEASE
                 COUENNE_VERSION
                 COUENNE_SVN_REV)

add_definitions(-DCOUENNE_BUILD)

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/include/config.h.in         ${CMAKE_BINARY_DIR}/Couenne/include/config.h)
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/include/config_couenne.h.in ${CMAKE_BINARY_DIR}/Couenne/include/config_couenne.h)

#
# pkg-config file generation
#

set(prefix                "${CMAKE_INSTALL_PREFIX}")
set(exec_prefix           "\${prefix}")
set(libdir                "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}")
set(includedir            "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}")
set(COUENNELIB_PCLIBS     "")
set(COUENNELIB_PCREQUIRES "bonmin")
set(PACKAGE_VERSION       "${COUENNE_VERSION}")

configure_file(${Couenne_DIR}/couenne.pc.in ${CMAKE_BINARY_DIR}/Couenne/couenne.pc @ONLY)

set(libdir         "${Couenne_DIR}")
set(abs_source_dir "${CMAKE_BINARY_DIR}/bin")

configure_file(${Couenne_DIR}/couenne-uninstalled.pc.in ${CMAKE_BINARY_DIR}/Couenne/couenne-uninstalled.pc @ONLY)

install(FILES ${CMAKE_BINARY_DIR}/Couenne/couenne.pc
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}/pkg-config/)

#
# Build
#

if (COIN_USE_ASL OR COIN_ENABLE_DOWNLOAD_ASL)
  add_definitions(-DCOUENNEINTERFACE_FROM_ASL)
endif ()

# install nauty from http://pallini.di.uniroma1.it/

#ifdef  ANTICIPATE_DELETE_REDUND
#ifdef CHECK
#ifdef COIN_DEVELOP
#ifdef COIN_HAS_ASL
#ifdef COIN_HAS_CPX
#ifdef COIN_HAS_FILTERSQP
#ifdef COIN_HAS_GRB
#ifdef COIN_HAS_IPOPT
#ifdef COIN_HAS_NTY
#ifdef COIN_HAS_OS
#ifdef COIN_HAS_SCIP
#ifdef COIN_HAS_SPX
#ifdef COIN_HAS_XPR
#ifdef COUENNE_BUILD
#ifdef COUENNEINTERFACE_FROM_ASL
#ifdef DEBUG
#ifdef DEBUG_ROOTQ
#ifdef DO_IT_NWAY
#ifdef FM_ALWAYS_SORT /* FM_SORT_STRONG */
#ifdef FM_CHECK
#ifdef FM_CHECKNLP2
#ifdef FM_FRES
#ifdef FM_MOD
#ifdef FM_PRINT_INFO
#ifdef FM_SEC_SORT_USEFUL
#ifdef FM_SORT_STRONG
#ifdef FM_TRACE_OPTSOL
#ifdef FM_UP_BND
#ifdef FM_USE_ABS_VIOL_CONS
#ifdef FM_USE_REL_VIOL_CONS
#ifdef NDEBUG
#ifdef NEW_SETUPLIST
#ifdef NEW_TRIG
#ifdef NORMALIZE_SPARSE_CUTS
#ifdef OLD_STYLE
#ifdef OLD_USEFULLNESS
#ifdef SCALE_EIGENV
#ifdef SIGNAL
#ifdef STRONG_COMPARE
#ifdef TO_BE_REMOVED
#ifdef TRACE
#ifdef TRACE_STRONG
#ifdef TRACE_STRONG2
#ifdef USE_NOT_TRUSTED
#ifdef USE_ROW
#ifdef USE_SMALL_GAP
#ifdef WIN_
#ifdef _WIN32

include_directories(${Couenne_DIR}/src/convex
                    ${Couenne_DIR}/src/interfaces
                    ${Couenne_DIR}/src/heuristics
                    ${Couenne_DIR}/src/expression
                    ${Couenne_DIR}/src/expression/operators
		    ${Couenne_DIR}/src/expression/operators/bounds
                    ${Couenne_DIR}/src/expression/partial
                    ${Couenne_DIR}/src/disjunctive
                    ${Couenne_DIR}/src/main
                    ${Couenne_DIR}/src/standardize
                    ${Couenne_DIR}/src/problem
		    ${Couenne_DIR}/src/problem/depGraph
                    ${Couenne_DIR}/src/branch
                    ${Couenne_DIR}/src/cut/sdpcuts
                    ${Couenne_DIR}/src/cut/crossconv
                    ${Couenne_DIR}/src/bound_tightening
                    ${Couenne_DIR}/src/bound_tightening/twoImpliedBT
		    ${Couenne_DIR}/src/util)

include_directories(${BuildTools_DIR}/headers)
include_directories(SYSTEM ${CoinUtils_DIR}/src)
include_directories(${Clp_DIR}/src)
include_directories(${Clp_DIR}/src/OsiClp)
include_directories(${Ipopt_DIR}/src/Apps/AmplSolver)
include_directories(${Ipopt_DIR}/src/Algorithm)
include_directories(${Ipopt_DIR}/src/Algorithm/LinearSolvers)
include_directories(${Ipopt_DIR}/src/Interfaces)
include_directories(${Ipopt_DIR}/src/Common)
include_directories(${Ipopt_DIR}/src/LinAlg)
include_directories(${Ipopt_DIR}/src/LinAlg/TMatrices)
include_directories(${Ipopt_DIR}/include)
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

include_directories(${CoinUtils_DIR}/src)
include_directories(${Clp_DIR}/src)
include_directories(${Clp_DIR}/src/OsiClp)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${Cbc_DIR}/src)
include_directories(${Cbc_DIR}/src/OsiCbc)

include_directories(${Bonmin_DIR}/src/Interfaces/)
include_directories(${Bonmin_DIR}/src/Interfaces/Filter/)
include_directories(${Bonmin_DIR}/src/Interfaces/Ipopt/)
include_directories(${Bonmin_DIR}/src/Interfaces/Ampl)
include_directories(${Bonmin_DIR}/src/Algorithms/OaGenerators/)
include_directories(${Bonmin_DIR}/src/Algorithms/Branching/)
include_directories(${Bonmin_DIR}/src/Algorithms/)
include_directories(${Bonmin_DIR}/src/Algorithms/QuadCuts/)
include_directories(${Bonmin_DIR}/src/Algorithms/Ampl/)
include_directories(${Bonmin_DIR}/src/CbcBonmin/)
include_directories(${Bonmin_DIR}/src/CbcBonmin/Heuristics/)
include_directories(${Bonmin_DIR}/src/CbcBonmin/)
include_directories(${Bonmin_DIR}/src/Apps/)

if (USE_OSI_XPRESS OR COMPILE_OSI_XPRESS)
  include_directories(${Osi_DIR}/src/OsiXpr) 
endif ()
if (USE_OSI_CPLEX OR COMPILE_OSI_CPLEX)
  include_directories(${Osi_DIR}/src/OsiCpx) 
endif ()
if (USE_OSI_GLPK OR COMPILE_OSI_GLPK)
  include_directories(${Osi_DIR}/src/OsiGlpk) 
endif ()
if (USE_OSI_GUROBI OR COMPILE_OSI_GUROBI)
  include_directories(${Osi_DIR}/src/OsiGrb) 
endif ()
if (USE_OSI_MOSEK OR COMPILE_OSI_MOSEK)
  include_directories(${Osi_DIR}/src/OsiMsk) 
endif ()
if (USE_OSI_SOPLEX OR COMPILE_OSI_SOPLEX)
  include_directories(${Osi_DIR}/src/OsiSpx) 
endif ()
if (COIN_ENABLE_DOWNLOAD_ASL OR COIN_USE_ASL)
  include_directories(${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/include/ampl)
endif ()
include_directories(${CMAKE_BINARY_DIR}/CoinUtils/include)
include_directories(${CMAKE_BINARY_DIR}/Osi/include)
include_directories(${CMAKE_BINARY_DIR}/Cgl/include)
include_directories(${CMAKE_BINARY_DIR}/Clp/include)
include_directories(${CMAKE_BINARY_DIR}/Cbc/include)
include_directories(${CMAKE_BINARY_DIR}/Ipopt/include)
include_directories(${CMAKE_BINARY_DIR}/Bonmin/include)
include_directories(BEFORE ${CMAKE_BINARY_DIR}/Couenne/include)
include_directories(${Couenne_DIR}/src) 

set(COUENNE_HEADERS src/util/CouenneRootQ.hpp
                    src/util/CouenneFunTriplets.hpp
                    src/main/CouenneBab.hpp
                    src/main/BonCouenneInfo.hpp
                    src/main/BonCouenneSetup.hpp
                    src/interfaces/BonCouenneInterface.hpp
                    src/interfaces/CouenneTNLP.hpp
                    src/interfaces/CouenneMINLPInterface.hpp
                    src/heuristics/BonNlpHeuristic.hpp
                    src/heuristics/BonInitHeuristic.hpp
                    src/heuristics/CouenneFeasPump.hpp
                    src/branch/CouenneObject.hpp
                    src/branch/CouenneVarObject.hpp
                    src/branch/CouenneVTObject.hpp
                    src/branch/CouenneThreeWayBranchObj.hpp
                    src/branch/CouenneBranchingObject.hpp
                    src/branch/CouenneChooseVariable.hpp
                    src/branch/CouenneChooseStrong.hpp
                    src/branch/CouenneComplObject.hpp
                    src/branch/CouenneComplBranchingObject.hpp
                    src/branch/CouenneOrbitObj.hpp
                    src/branch/CouenneOrbitBranchingObj.hpp
                    src/branch/CouenneSOSObject.hpp
                    src/branch/CouenneProjections.hpp
                    src/standardize/CouenneLQelems.hpp
                    src/bound_tightening/CouenneBTPerfIndicator.hpp
                    src/bound_tightening/CouenneFixPoint.hpp
                    src/bound_tightening/CouenneAggrProbing.hpp
                    src/bound_tightening/twoImpliedBT/CouenneTwoImplied.hpp
                    src/expression/CouenneDomain.hpp
                    src/expression/operators/CouenneExprAbs.hpp
                    src/expression/operators/CouenneExprExp.hpp
                    src/expression/operators/CouenneExprInv.hpp
                    src/expression/operators/CouenneExprMul.hpp
                    src/expression/operators/CouenneExprTrilinear.hpp
                    src/expression/operators/CouenneExprOpp.hpp
                    src/expression/operators/CouenneExprLog.hpp
                    src/expression/operators/CouenneExprDiv.hpp
                    src/expression/operators/CouenneExprMin.hpp
                    src/expression/operators/CouenneExprSum.hpp
                    src/expression/operators/CouenneExprMax.hpp
                    src/expression/operators/CouenneExprPow.hpp
                    src/expression/operators/CouenneExprSin.hpp
                    src/expression/operators/CouenneExprCos.hpp
                    src/expression/operators/CouenneExprSub.hpp
                    src/expression/operators/CouenneExprGroup.hpp
                    src/expression/operators/CouenneExprQuad.hpp
                    src/expression/operators/CouenneExprIf.hpp
                    src/expression/operators/CouenneExprNorm.hpp
                    src/expression/operators/CouenneExprPWLinear.hpp
                    src/expression/operators/bounds/CouenneExprBMul.hpp
                    src/expression/operators/bounds/CouenneExprBDiv.hpp
                    src/expression/operators/bounds/CouenneExprBSin.hpp
                    src/expression/operators/bounds/CouenneExprBCos.hpp
                    src/expression/CouenneExprConst.hpp
                    src/expression/CouenneExprIVar.hpp
                    src/expression/CouenneExprVar.hpp
                    src/expression/CouenneExprAux.hpp
                    src/expression/CouenneExprUnary.hpp
                    src/expression/CouenneExpression.hpp
                    src/expression/CouenneExprClone.hpp
                    src/expression/CouenneExprBound.hpp
                    src/expression/CouenneExprCopy.hpp
                    src/expression/CouenneExprStore.hpp
                    src/expression/CouenneExprOp.hpp
                    src/expression/CouExpr.hpp
                    src/expression/CouennePrecisions.hpp
                    src/expression/partial/CouenneExprHess.hpp
                    src/expression/partial/CouenneExprJac.hpp
                    src/problem/depGraph/CouenneDepGraph.hpp
                    src/problem/CouenneProblemElem.hpp
                    src/problem/CouenneProblem.hpp
                    src/problem/CouenneSolverInterface.hpp
                    src/problem/CouenneJournalist.hpp
                    src/problem/CouenneGlobalCutOff.hpp
                    src/problem/CouenneRecordBestSol.hpp
                    src/expression/CouenneTypes.hpp
                    src/disjunctive/CouenneDisjCuts.hpp
                    src/convex/CouenneCutGenerator.hpp
                    src/cut/sdpcuts/CouenneSdpCuts.hpp
                    src/cut/sdpcuts/CouennePSDcon.hpp
                    src/cut/sdpcuts/CouenneMatrix.hpp
                    src/cut/crossconv/CouenneCrossConv.hpp)

if (COIN_HAS_NTY)
  set(COUENNE_HEADERS ${COUENNE_HEADERS} src/branch/Nauty.h)
endif ()

set(COUENNE_MAIN_SRCS src/main/CouenneBab.cpp 
                      src/main/BonCouenneSetup.cpp
		      src/main/SmartAslDestr.cpp)

set(COUENNE_BOUNDTIGHTENING_SRCS src/bound_tightening/boundTightening.cpp
                                 src/bound_tightening/aggressiveBT.cpp
                                 src/bound_tightening/fake_tightening.cpp
                                 src/bound_tightening/obbt.cpp
                                 src/bound_tightening/obbt_iter.cpp
                                 src/bound_tightening/tightenBounds.cpp
                                 src/bound_tightening/impliedBounds.cpp
                                 src/bound_tightening/FixPointConstructors.cpp
                                 src/bound_tightening/FixPointGenCuts.cpp
                                 src/bound_tightening/CouenneInfeasCut.cpp
                                 src/bound_tightening/obbt_supplement.cpp
                                 src/bound_tightening/BTPerfIndicator.cpp
                                 src/bound_tightening/BTPerfIndicatorConstr.cpp
                                 src/bound_tightening/operators/impliedBounds-mul.cpp
                                 src/bound_tightening/operators/impliedBounds-sum.cpp
                                 src/bound_tightening/operators/impliedBounds-exprSum.cpp
                                 src/bound_tightening/operators/impliedBounds-exprDiv.cpp
                                 src/bound_tightening/operators/impliedBounds-exprMul.cpp
                                 src/bound_tightening/operators/impliedBounds-exprTrilinear.cpp
                                 src/bound_tightening/operators/impliedBounds-exprQuad.cpp
                                 src/bound_tightening/operators/impliedBounds-exprPow.cpp
				 src/bound_tightening/twoImpliedBT/TwoImpliedConstructors.cpp
				 src/bound_tightening/twoImpliedBT/TwoImpliedGenCuts.cpp
				 src/bound_tightening/twoImpliedBT/TwoImpliedIneqCombine.cpp
                                 src/main/BonCouenneInfo.cpp
                                 src/bound_tightening/CouenneAggrProbing.cpp)

set(COUENNE_BRANCH_SRCS	src/branch/CouenneThreeWayBranchObj.cpp
                        src/branch/CouenneBranchingObject.cpp
                        src/branch/CouenneObject.cpp
                        src/branch/CouenneVarObject.cpp
                        src/branch/CouenneChooseVariable.cpp
                        src/branch/CouenneChooseStrong.cpp
                        src/branch/doStrongBranching.cpp
                        src/branch/projections.cpp
                        src/branch/infeasibility.cpp
                        src/branch/infeasibilityVT.cpp
                        src/branch/feasibleRegion.cpp
                        src/branch/CouenneComplObject.cpp
                        src/branch/CouenneComplBranchingObject.cpp
                        src/branch/CouenneOrbitObj.cpp
                        src/branch/CouenneOrbitBranchingObj.cpp
                        src/branch/BranchCore.cpp
                        src/branch/CouenneSOSObject.cpp
                        src/branch/StrongBranchingSetupList.cpp)

if (COIN_HAS_NTY)
  set(COUENNE_BRANCH_SRCS ${COUENNE_BRANCH_SRCS} Nauty.cpp)
endif ()

set(COUENNE_CONVEX_SRCS	src/convex/addEnvelope.cpp
                        src/convex/createCuts.cpp
                        src/convex/CouenneCutGenerator.cpp
                        src/convex/generateCuts.cpp
                        src/convex/genColCuts.cpp
                        src/convex/genRowCuts.cpp
                        src/convex/updateBranchInfo.cpp
                        src/convex/isOptimumCut.cpp)

set(COUENNE_DISJUNCTIVE_SRCS src/disjunctive/CouenneDisjCuts.cpp
                             src/disjunctive/generateDisjCuts.cpp
                             src/disjunctive/disjCut.cpp
                             src/disjunctive/getDisjunctions.cpp
                             src/disjunctive/separateWithDisjunction.cpp
                             src/disjunctive/singleDisjunctions.cpp
                             src/disjunctive/dummyVecMatr.cpp
                             src/disjunctive/OsiLinear2MatrVec.cpp
                             src/disjunctive/OsiCuts2MatrVec.cpp)

set(COUENNE_EXPRESSION_SRCS src/expression/domain.cpp
                            src/expression/expression.cpp
                            src/expression/exprOp.cpp
                            src/expression/exprUnary.cpp
                            src/expression/exprVar.cpp
                            src/expression/exprAux.cpp
                            src/expression/CouExpr.cpp
                            src/expression/operators/exprAbs.cpp
                            src/expression/operators/exprDiv.cpp
                            src/expression/operators/exprExp.cpp
                            src/expression/operators/exprInv.cpp
                            src/expression/operators/exprLog.cpp
                            src/expression/operators/exprMul.cpp
                            src/expression/operators/exprTrilinear.cpp
                            src/expression/operators/exprOpp.cpp
                            src/expression/operators/exprPow.cpp
                            src/expression/operators/exprSin.cpp
                            src/expression/operators/exprCos.cpp
                            src/expression/operators/exprSub.cpp
                            src/expression/operators/exprSum.cpp
                            src/expression/operators/exprMinMax.cpp
                            src/expression/operators/exprGroup.cpp
                            src/expression/operators/exprQuad.cpp
                            src/expression/operators/compQuadFinBounds.cpp
                            src/expression/operators/bounds/exprBQuad.cpp
                            src/expression/partial/CouenneExprJac.cpp
                            src/expression/partial/CouenneExprHess.cpp
                            src/convex/operators/conv-exprAbs.cpp
                            src/convex/operators/conv-exprDiv.cpp
                            src/convex/operators/conv-exprMul.cpp
                            src/convex/operators/conv-exprMul-genCuts.cpp
                            src/convex/operators/conv-exprMul-reformulate.cpp
                            src/convex/operators/conv-exprTrilinear.cpp
                            src/convex/operators/conv-exprTrilinear-gencuts.cpp
                            src/convex/operators/unifiedProdCuts.cpp
                            src/convex/operators/exprMul-upperHull.cpp
                            src/convex/operators/conv-exprOpp.cpp
                            src/convex/operators/conv-exprPow.cpp
                            src/convex/operators/conv-exprPow-getBounds.cpp
                            src/convex/operators/conv-exprPow-envelope.cpp
                            src/convex/operators/powNewton.cpp
                            src/convex/operators/conv-exprSub.cpp
                            src/convex/operators/conv-exprSum.cpp
                            src/convex/operators/conv-exprInv.cpp
                            src/convex/operators/conv-exprSinCos.cpp
                            src/convex/operators/conv-exprExp.cpp
                            src/convex/operators/conv-exprLog.cpp
                            src/convex/operators/conv-exprGroup.cpp
                            src/convex/operators/conv-exprQuad.cpp
                            src/convex/operators/trigNewton.cpp
                            src/convex/operators/alphaConvexify.cpp
                            src/convex/operators/quadCuts.cpp
                            src/branch/operators/branchExprAbs.cpp
                            src/branch/operators/branchExprExp.cpp
                            src/branch/operators/branchExprDiv.cpp
                            src/branch/operators/branchExprInv.cpp
                            src/branch/operators/branchExprLog.cpp
                            src/branch/operators/branchExprMul.cpp
                            src/branch/operators/branchExprTrilinear.cpp
                            src/branch/operators/branchExprPow.cpp
                            src/branch/operators/branchExprQuad.cpp
                            src/branch/operators/branchExprSinCos.cpp
                            src/branch/operators/minMaxDelta.cpp
                            src/branch/operators/computeMulBrDist.cpp)

set(COUENNE_HEURISTICS_SRCS src/heuristics/BonInitHeuristic.cpp
                            src/heuristics/BonNlpHeuristic.cpp
                            src/heuristics/CouenneFeasPumpConstructors.cpp
                            src/heuristics/CouenneFeasPump.cpp
                            src/heuristics/CouenneFPcreateMILP.cpp
                            src/heuristics/CouenneFPSolveMILP.cpp
                            src/heuristics/CouenneFPSolveNLP.cpp
                            src/heuristics/CouenneFPFindSolution.cpp
                            src/heuristics/CouenneFPpool.cpp
                            src/heuristics/CouenneFPscipSolve.cpp
                            src/heuristics/CouenneIterativeRounding.cpp)

set(COUENNE_INTERFACES_SRCS src/interfaces/BonCouenneInterface.cpp
                            src/interfaces/CouenneTNLP.cpp
                            src/interfaces/CouenneMINLPInterface.cpp)

set(COUENNE_PROBLEM_SRCS src/problem/problem.cpp
                         src/problem/CouenneProblem.cpp
                         src/problem/problemIO.cpp
                         src/problem/writeAMPL.cpp
                         src/problem/writeGAMS.cpp
                         src/problem/writeLP.cpp
                         src/problem/constraint.cpp
                         src/problem/fillQuadIndices.cpp
                         src/problem/fillDependence.cpp
                         src/problem/checkNLP.cpp
                         src/problem/getIntegerCandidate.cpp
                         src/problem/testIntFix.cpp
                         src/problem/CouenneSOS.cpp
                         src/problem/CouenneProblemConstructors.cpp
                         src/problem/CouenneRestoreUnused.cpp
                         src/problem/reformulate.cpp
                         src/problem/CouenneGlobalCutOff.cpp
                         src/problem/CouenneSymmetry.cpp
                         src/problem/CouenneRecordBestSol.cpp
                         src/problem/depGraph/depGraph.cpp
                         src/problem/depGraph/checkCycles.cpp)

set(COUENNE_READNL_SRCS src/readnl/CouenneAmplInterface.cpp
                        src/readnl/readASLfg.cpp
                        src/readnl/invmap.cpp
                        src/readnl/nl2e.cpp
                        src/readnl/readnl.cpp)

set(COUENNE_STANDARDIZE_SRCS src/standardize/decomposeTerm.cpp
                             src/standardize/linStandardize.cpp
                             src/standardize/sumStandardize.cpp
                             src/standardize/analyzeSparsity.cpp
                             src/standardize/constrStandardize.cpp
                             src/standardize/elementBreak.cpp
                             src/standardize/splitAux.cpp
                             src/standardize/auxiliarize.cpp
                             src/standardize/standardize.cpp
                             src/standardize/flattenMul.cpp)

set(COUENNE_UTIL_SRCS src/util/drawCuts.cpp
                      src/util/rootQ.cpp
                      src/util/CouenneSparseMatrix.cpp)

set(COUENNE_CUT_SRCS src/cut/crossconv/CrossConvConstructors.cpp
                     src/cut/crossconv/CrossConvGenCuts.cpp
                     src/cut/crossconv/CrossConvSetup.cpp
                     src/cut/sdpcuts/CouenneSdpCuts.cpp
                     src/cut/sdpcuts/CouennePSDcon.cpp
                     src/cut/sdpcuts/CouenneMatrix.cpp
                     src/cut/sdpcuts/CutGen.cpp
                     src/cut/sdpcuts/CutGenSparse.cpp
                     src/cut/sdpcuts/dsyevx_wrapper.cpp)

add_library(libCouenne STATIC ${COUENNE_MAIN_SRCS}
                              ${COUENNE_BOUNDTIGHTENING_SRCS}
                              ${COUENNE_BRANCH_SRCS}
                              ${COUENNE_CONVEX_SRCS}
                              ${COUENNE_DISJUNCTIVE_SRCS}
                              ${COUENNE_EXPRESSION_SRCS}
                              ${COUENNE_HEURISTICS_SRCS}
                              ${COUENNE_INTERFACES_SRCS}
                              ${COUENNE_PROBLEM_SRCS}
                              ${COUENNE_READNL_SRCS}
                              ${COUENNE_STANDARDIZE_SRCS}
                              ${COUENNE_UTIL_SRCS}
                              ${COUENNE_CUT_SRCS})

if (COIN_COMPILE_LTO)
  set_target_properties(libCouenne PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libCouenne PROPERTIES PREFIX "")
endif ()

add_executable(couenne src/main/BonCouenne.cpp)

target_link_libraries(couenne libCouenne libBonmin libipopt libCbc libCgl libClp libCoinUtils libCbc libOsiClp libOsi)
if (COIN_ENABLE_DOWNLOAD_ASL OR COIN_USE_ASL)
  target_link_libraries(couenne amplsolver dl)
endif ()  
if (COIN_COMPILE_LTO)
  set_target_properties(couenne PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (COIN_HAS_AMD)
  target_link_libraries(couenne amd)
endif ()
if (COIN_HAS_CHOLMOD)
  target_link_libraries(couenne cholmod suitesparseconfig amd ccolamd colamd camd)
endif () 
if (MKL_FOUND)
  target_link_libraries(couenne ${COIN_MKL_LIBS})
else ()
  if (COIN_HAS_LAPACK OR COIN_USE_LAPACK)
    target_link_libraries(couenne lapack)
  endif ()
  if (COIN_HAS_BLAS OR COIN_USE_BLAS)
    target_link_libraries(couenne blas)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_CLAPACK)
    target_link_libraries(couenne f2c)
  endif ()
  if ((COIN_HAS_BLAS OR COIN_HAS_LAPACK) AND (UNIX OR MINGW) AND NOT COIN_USE_LAPACK)
    target_link_libraries(couenne gfortran)
  endif ()
endif ()
if (COINUTILS_HAS_ZLIB OR COIN_USE_ZLIB)
  target_link_libraries(couenne ${ZLIB_NAME})
endif ()
if (COINUTILS_HAS_BZLIB OR COIN_USE_BZLIB)
  target_link_libraries(couenne ${BZLIB_NAME})
endif ()
if (COIN_HAS_GLPK OR COIN_USE_GLPK)
  target_link_libraries(couenne libOsiGlpk glpk)
endif ()
if (CBC_USE_THREADS OR COINUTILS_USE_THREADS OR COIN_USE_PTHREAD_WIN32 OR COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32 OR COIN_HAS_ABC)
  if (MINGW)
    target_link_libraries(couenne winpthread)
  elseif (NOT WIN32)
    target_link_libraries(couenne pthread)
  else ()
    target_link_libraries(couenne pthreadVC2)
  endif ()
endif ()
if (COIN_HAS_ABC AND (COIN_ABC_LEVEL GREATER 2))
  target_link_libraries(couenne cilkrts)
endif ()  
if (COIN_ENABLE_DOWNLOAD_ASL OR COIN_USE_ASL)
  target_link_libraries(couenne amplsolver dl)
endif ()  
if (READLINE_FOUND)
  target_link_libraries(couenne ${READLINE_LIBRARIES})
endif ()  
if (COIN_HAS_MUMPS)
  if (CMAKE_Fortran_COMPILER_ID STREQUAL "Intel")
    target_link_libraries(couenne dmumps mumps_common seq blas lapack ifort pthread)
  else ()
    target_link_libraries(couenne dmumps mumps_common seq blas lapack gfortran pthread)
  endif ()
endif ()
if (COIN_ENABLE_DOWNLOAD_METIS OR COIN_USE_METIS)
  target_link_libraries(couenne metis m)
endif ()  

target_link_libraries(couenne blas lapack)

install(FILES config_couenne.h
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}/CouenneConfig.h)

###########
#         #
#  Tests  #
#         #
###########

set(TEST_LIB_PATH "${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/lib")
set(TEST_BIN_PATH "${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/bin")

#
# Circle
#

add_test(NAME couenne_test_circle
         COMMAND $<TARGET_FILE:couenne> ${CMAKE_CURRENT_SOURCE_DIR}/../Couenne/test/data/circle.nl)
set_tests_properties(couenne_test_circle PROPERTIES TIMEOUT 30)
if (WIN32)
  set_tests_properties(couenne_test_circle PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
endif ()
set_tests_properties(couenne_test_circle PROPERTIES LABELS "DISTRIB;COUENNE;TEST")
set_tests_properties(couenne_test_circle PROPERTIES PASS_REGULAR_EXPRESSION "couenne: Optimal")

#
# Cube
#

add_test(NAME couenne_test_cube
         COMMAND $<TARGET_FILE:couenne> ${CMAKE_CURRENT_SOURCE_DIR}/../Couenne/test/data/cube.nl)
set_tests_properties(couenne_test_cube PROPERTIES TIMEOUT 30)
if (WIN32)
  set_tests_properties(couenne_test_cube PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
endif ()
set_tests_properties(couenne_test_cube PROPERTIES LABELS "DISTRIB;COUENNE;TEST")
set_tests_properties(couenne_test_cube PROPERTIES PASS_REGULAR_EXPRESSION "couenne: Optimal")

#
# exp4
#

add_test(NAME couenne_test_exp4
         COMMAND $<TARGET_FILE:couenne> ${CMAKE_CURRENT_SOURCE_DIR}/../Couenne/test/data/exp4.nl)
set_tests_properties(couenne_test_exp4 PROPERTIES TIMEOUT 30)
if (WIN32)
  set_tests_properties(couenne_test_exp4 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
endif ()
set_tests_properties(couenne_test_exp4 PROPERTIES LABELS "DISTRIB;COUENNE;TEST")
set_tests_properties(couenne_test_exp4 PROPERTIES PASS_REGULAR_EXPRESSION "couenne: Infeasible problem")

#
# geoid
#

add_test(NAME couenne_test_geoid
         COMMAND $<TARGET_FILE:couenne> ${CMAKE_CURRENT_SOURCE_DIR}/../Couenne/test/data/geoid.nl)
set_tests_properties(couenne_test_geoid PROPERTIES TIMEOUT 30)
if (WIN32)
  set_tests_properties(couenne_test_geoid PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
endif ()
set_tests_properties(couenne_test_geoid PROPERTIES LABELS "DISTRIB;COUENNE;TEST")
set_tests_properties(couenne_test_geoid PROPERTIES PASS_REGULAR_EXPRESSION "couenne: Optimal")

#
# log
#

add_test(NAME couenne_test_log
         COMMAND $<TARGET_FILE:couenne> ${CMAKE_CURRENT_SOURCE_DIR}/../Couenne/test/data/log.nl)
set_tests_properties(couenne_test_log PROPERTIES TIMEOUT 30)
if (WIN32)
  set_tests_properties(couenne_test_log PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
endif ()
set_tests_properties(couenne_test_log PROPERTIES LABELS "DISTRIB;COUENNE;TEST")
set_tests_properties(couenne_test_log PROPERTIES PASS_REGULAR_EXPRESSION "couenne: Infeasible problem")

#
# prod
#

add_test(NAME couenne_test_prod
         COMMAND $<TARGET_FILE:couenne> ${CMAKE_CURRENT_SOURCE_DIR}/../Couenne/test/data/prod.nl)
set_tests_properties(couenne_test_prod PROPERTIES TIMEOUT 30)
if (WIN32)
  set_tests_properties(couenne_test_prod PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
endif ()
set_tests_properties(couenne_test_prod PROPERTIES LABELS "DISTRIB;COUENNE;TEST")
set_tests_properties(couenne_test_prod PROPERTIES PASS_REGULAR_EXPRESSION "couenne: Infeasible problem")

#
# qquad
#

add_test(NAME couenne_test_qquad
         COMMAND $<TARGET_FILE:couenne> ${CMAKE_CURRENT_SOURCE_DIR}/../Couenne/test/data/qquad.nl)
set_tests_properties(couenne_test_qquad PROPERTIES TIMEOUT 1200)
if (WIN32)
  set_tests_properties(couenne_test_qquad PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
endif ()
set_tests_properties(couenne_test_qquad PROPERTIES LABELS "DISTRIB;COUENNE;TEST;FAIL")
set_tests_properties(couenne_test_qquad PROPERTIES PASS_REGULAR_EXPRESSION "couenne: Optimal")

#
# sin
#

add_test(NAME couenne_test_sin
         COMMAND $<TARGET_FILE:couenne> ${CMAKE_CURRENT_SOURCE_DIR}/../Couenne/test/data/sin.nl)
set_tests_properties(couenne_test_sin PROPERTIES TIMEOUT 30)
if (WIN32)
  set_tests_properties(couenne_test_sin PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
endif ()
set_tests_properties(couenne_test_sin PROPERTIES LABELS "DISTRIB;COUENNE;TEST")
set_tests_properties(couenne_test_sin PROPERTIES PASS_REGULAR_EXPRESSION "couenne: Optimal")

#
# small2
#

add_test(NAME couenne_test_small2
         COMMAND $<TARGET_FILE:couenne> ${CMAKE_CURRENT_SOURCE_DIR}/../Couenne/test/data/small2.nl)
set_tests_properties(couenne_test_small2 PROPERTIES TIMEOUT 30)
if (WIN32)
  set_tests_properties(couenne_test_small2 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
endif ()
set_tests_properties(couenne_test_small2 PROPERTIES LABELS "DISTRIB;COUENNE;TEST")
set_tests_properties(couenne_test_small2 PROPERTIES PASS_REGULAR_EXPRESSION "couenne: Optimal")

#
# toy
#

add_test(NAME couenne_test_toy
         COMMAND $<TARGET_FILE:couenne> ${CMAKE_CURRENT_SOURCE_DIR}/../Couenne/test/data/toy.nl)
set_tests_properties(couenne_test_toy PROPERTIES TIMEOUT 30)
if (WIN32)
  set_tests_properties(couenne_test_toy PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
endif ()
set_tests_properties(couenne_test_toy PROPERTIES LABELS "DISTRIB;COUENNE;TEST")
set_tests_properties(couenne_test_toy PROPERTIES PASS_REGULAR_EXPRESSION "couenne: Optimal")
