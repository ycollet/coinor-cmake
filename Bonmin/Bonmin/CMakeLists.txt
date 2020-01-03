get_ac_init_version(${Bonmin_DIR}/configure.ac BONMIN)

option(BONMIN_BUILD_EXAMPLES "Enable the building of examples" OFF)

set(BONMIN_VERSION_MAJOR   "${BONMIN_MAJOR_VERSION}"  CACHE STRING "The BONMIN major version number")
set(BONMIN_VERSION_MINOR   "${BONMIN_MINOR_VERSION}"  CACHE STRING "The BONMIN minor version number")
set(BONMIN_VERSION_RELEASE "${BONMIN_PATCH_VERSION}"  CACHE STRING "The BONMIN patch version number")
set(BONMIN_VERSION         "${BONMIN_VERSION_STRING}" CACHE STRING "The BONMIN version")

set(BONMIN_WC_REVISION "0")
if ((EXISTS "${Bonmin_DIR}/../.svn") OR (EXISTS "${Bonmin_DIR}/../../.svn"))
  find_package(Subversion)
  if (Subversion_FOUND)
    Subversion_WC_INFO(${Bonmin_DIR}/.. BONMIN)
  endif ()
endif ()

if ((EXISTS "${Bonmin_DIR}/../.git") OR (EXISTS "${Bonmin_DIR}/../../.git"))
  find_package(Git)
  if (Git_FOUND)
    include(export_git)
    GIT_WC_INFO(${Bonmin_DIR}/.. BONMIN)
    set(BONMIN_WC_REVISION "${BONMIN_WC_SVNEQUIV}") # alphanumeric rev not yet managed
  endif ()
endif ()

message(STATUS "Current BONMIN revision is ${BONMIN_WC_REVISION}")
set(BONMIN_SVN_REV "${BONMIN_WC_REVISION}" CACHE STRING "The BONMIN subversion revision" FORCE)

mark_as_advanced(BONMIN_VERSION_MAJOR
                 BONMIN_VERSION_MINOR
                 BONMIN_VERSION_RELEASE
                 BONMIN_VERSION
                 BONMIN_SVN_REV)

add_definitions(-DBONMIN_BUILD)

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/include/config.h.in        ${CMAKE_BINARY_DIR}/Bonmin/include/config.h)
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/include/config_bonmin.h.in ${CMAKE_BINARY_DIR}/Bonmin/include/config_bonmin.h)

#
# pkg-config file generation
#

set(prefix               "${CMAKE_INSTALL_PREFIX}")
set(exec_prefix          "\${prefix}")
set(libdir               "${CMAKE_INSTALL_PREFIX}/lib")
set(includedir           "${CMAKE_INSTALL_PREFIX}/include")
set(BONMINLIB_PCLIBS     "")
set(BONMINLIB_PCREQUIRES "cbc osi-clp ipopt")
set(PACKAGE_VERSION      "${CBC_VERSION}")

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/bonmin.pc.in ${CMAKE_BINARY_DIR}/Bonmin/bonmin.pc @ONLY)

set(libdir            "${Bonmin_DIR}")
set(abs_source_dir    "${CMAKE_BINARY_DIR}/bin")

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/bonmin-uninstalled.pc.in ${CMAKE_BINARY_DIR}/Bonmin/bonmin-uninstalled.pc @ONLY)

set(BONMINAMPLINTERFACELIB_PCLIBS "")
set(BONMINAMPLINTERFACELIB_PCREQUIRES "asl cbc osi ipopt")

install(FILES ${CMAKE_BINARY_DIR}/Bonmin/bonmin.pc
        DESTINATION lib/pkg-config/)

install(FILES ${CMAKE_BINARY_DIR}/Bonmin/bonmin-uninstalled.pc
        DESTINATION lib/pkg-config/)

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/src/CbcBonmin/bonminamplinterface.pc.in ${CMAKE_BINARY_DIR}/Bonmin/bonminamplinterface.pc @ONLY)
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/src/CbcBonmin/bonminamplinterface-uninstalled.pc.in ${CMAKE_BINARY_DIR}/Bonmin/bonminamplinterface-uninstalled.pc @ONLY)

install(FILES ${CMAKE_BINARY_DIR}/Bonmin/bonminamplinterface.pc
        DESTINATION lib/pkg-config/)

install(FILES ${CMAKE_BINARY_DIR}/Bonmin/bonminamplinterface-uninstalled.pc
        DESTINATION lib/pkg-config/)

#
# Build
#

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

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../Ipopt/src/Apps/AmplSolver)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../Ipopt/src/Algorithm)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../Ipopt/src/Algorithm/LinearSolvers)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../Ipopt/src/Interfaces)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../Ipopt/src/Common)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../Ipopt/src/LinAlg)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../Ipopt/src/LinAlg/TMatrices)
include_directories(${CMAKE_BINARY_DIR}/Ipopt/include)

set(Bonmin_SRC_LIST ${Bonmin_DIR}/src/Interfaces/BonTNLPSolver.cpp
                    ${Bonmin_DIR}/src/Interfaces/BonBoundsReader.cpp
                    ${Bonmin_DIR}/src/Interfaces/Filter/BonBqpdWarmStart.cpp
                    ${Bonmin_DIR}/src/Interfaces/Filter/BonFilterWarmStart.cpp
                    ${Bonmin_DIR}/src/Interfaces/Filter/BonFilterSolver.cpp
                    ${Bonmin_DIR}/src/Interfaces/Filter/BonBqpdSolver.cpp
                    ${Bonmin_DIR}/src/Interfaces/BonRegisteredOptions.cpp
                    ${Bonmin_DIR}/src/Interfaces/BonTMINLP2OsiLP.cpp
                    ${Bonmin_DIR}/src/Interfaces/Ipopt/BonIpoptSolver.cpp
                    ${Bonmin_DIR}/src/Interfaces/Ipopt/BonIpoptWarmStart.cpp
                    ${Bonmin_DIR}/src/Interfaces/Ipopt/BonIpoptInteriorWarmStarter.cpp
                    ${Bonmin_DIR}/src/Interfaces/BonOsiTMINLPInterface.cpp
                    ${Bonmin_DIR}/src/Interfaces/BonStdInterfaceTMINLP.cpp
                    ${Bonmin_DIR}/src/Interfaces/BonTMINLP2TNLP.cpp
                    ${Bonmin_DIR}/src/Interfaces/BonTNLP2FPNLP.cpp
                    ${Bonmin_DIR}/src/Interfaces/BonCutStrengthener.cpp
                    ${Bonmin_DIR}/src/Interfaces/BonStdCInterface.cpp
                    #${Bonmin_DIR}/src/Interfaces/BonCurvatureEstimator.cpp
                    ${Bonmin_DIR}/src/Interfaces/BonAuxInfos.cpp
                    ${Bonmin_DIR}/src/Interfaces/BonStrongBranchingSolver.cpp
                    ${Bonmin_DIR}/src/Interfaces/BonBranchingTQP.cpp
                    ${Bonmin_DIR}/src/Interfaces/BonTMINLP.cpp
                    ${Bonmin_DIR}/src/Interfaces/BonColReader.cpp
                    ${Bonmin_DIR}/src/Interfaces/BonStartPointReader.cpp
                    ${Bonmin_DIR}/src/Algorithms/OaGenerators/BonDummyHeuristic.cpp
                    ${Bonmin_DIR}/src/Algorithms/OaGenerators/BonEcpCuts.cpp
                    ${Bonmin_DIR}/src/Algorithms/OaGenerators/BonOaNlpOptim.cpp
                    ${Bonmin_DIR}/src/Algorithms/OaGenerators/BonOaFeasChecker.cpp
                    ${Bonmin_DIR}/src/Algorithms/OaGenerators/BonOACutGenerator2.cpp
                    ${Bonmin_DIR}/src/Algorithms/OaGenerators/BonFpForMinlp.cpp
                    ${Bonmin_DIR}/src/Algorithms/OaGenerators/BonOaDecBase.cpp
                    ${Bonmin_DIR}/src/Algorithms/OaGenerators/BonOAMessages.cpp
                    ${Bonmin_DIR}/src/Algorithms/Branching/BonPseudoCosts.cpp
                    ${Bonmin_DIR}/src/Algorithms/Branching/BonRandomChoice.cpp
                    ${Bonmin_DIR}/src/Algorithms/Branching/BonChooseVariable.cpp
                    #${Bonmin_DIR}/src/Algorithms/Branching/BonCurvBranchingSolver.cpp
                    ${Bonmin_DIR}/src/Algorithms/Branching/BonLpBranchingSolver.cpp
                    ${Bonmin_DIR}/src/Algorithms/Branching/BonQpBranchingSolver.cpp
                    ${Bonmin_DIR}/src/Algorithms/BonCbcLpStrategy.cpp
                    ${Bonmin_DIR}/src/Algorithms/QuadCuts/BonLinearCutsGenerator.cpp
                    ${Bonmin_DIR}/src/Algorithms/QuadCuts/BonTMatrix.cpp
                    ${Bonmin_DIR}/src/Algorithms/QuadCuts/BonQuadRow.cpp
                    ${Bonmin_DIR}/src/Algorithms/QuadCuts/BonTMINLP2Quad.cpp
                    ${Bonmin_DIR}/src/Algorithms/QuadCuts/BonQuadCut.cpp
                    ${Bonmin_DIR}/src/Algorithms/QuadCuts/BonOuterApprox.cpp
                    ${Bonmin_DIR}/src/Algorithms/QuadCuts/BonTMINLPLinObj.cpp
                    ${Bonmin_DIR}/src/Algorithms/BonBabSetupBase.cpp
                    ${Bonmin_DIR}/src/Algorithms/Ampl/BonAmplSetup.cpp
                    ${Bonmin_DIR}/src/Algorithms/BonSolverHelp.cpp
                    ${Bonmin_DIR}/src/Algorithms/BonSubMipSolver.cpp
                    ${Bonmin_DIR}/src/Algorithms/BonBonminSetup.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/BonCbcNode.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/BonCbc.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/BonBabInfos.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicDiveVectorLength.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonPumpForMinlp.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicLocalBranching.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonLocalSolverBasedHeuristic.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicDiveMIPFractional.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicDiveMIPVectorLength.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicRINS.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonMilpRounding.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonFixAndSolveHeuristic.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonDummyPump.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicFPump.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicDiveMIP.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicDive.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicDiveFractional.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/BonCbcNlpStrategy.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/BonGuessHeuristic.cpp
                    ${Bonmin_DIR}/src/CbcBonmin/BonDiver.cpp
                    ${Bonmin_DIR}/src/Apps/BonMin.cpp
                    ${Bonmin_DIR}/src/Apps/BonNodeSolver.cpp)

set(Bonmin_SRC_LIST_Headers ${Bonmin_DIR}/src/Interfaces/BonCutStrengthener.hpp
                            ${Bonmin_DIR}/src/Interfaces/BonTNLP2FPNLP.hpp
                            ${Bonmin_DIR}/src/Interfaces/Filter/BonFilterWarmStart.hpp
                            ${Bonmin_DIR}/src/Interfaces/Filter/BonBqpdSolver.hpp
                            ${Bonmin_DIR}/src/Interfaces/Filter/BonFilterTypes.hpp
                            ${Bonmin_DIR}/src/Interfaces/Filter/BonBqpdWarmStart.hpp
                            ${Bonmin_DIR}/src/Interfaces/Filter/BonFilterSolver.hpp
                            #${Bonmin_DIR}/src/Interfaces/BonCurvatureEstimator.hpp
                            ${Bonmin_DIR}/src/Interfaces/BonTMINLP.hpp
                            ${Bonmin_DIR}/src/Interfaces/Ipopt/BonIpoptInteriorWarmStarter.hpp
                            ${Bonmin_DIR}/src/Interfaces/Ipopt/BonIpoptSolver.hpp
                            ${Bonmin_DIR}/src/Interfaces/Ipopt/BonIpoptWarmStart.hpp
                            ${Bonmin_DIR}/src/Interfaces/BonTNLPSolver.hpp
                            ${Bonmin_DIR}/src/Interfaces/BonTypes.hpp
                            ${Bonmin_DIR}/src/Interfaces/BonRegisteredOptions.hpp
                            ${Bonmin_DIR}/src/Interfaces/BonTMINLP2TNLP.hpp
                            ${Bonmin_DIR}/src/Interfaces/BonTMINLP2OsiLP.hpp
                            ${Bonmin_DIR}/src/Interfaces/BonExitCodes.hpp
                            ${Bonmin_DIR}/src/Interfaces/BonStartPointReader.hpp
                            ${Bonmin_DIR}/src/Interfaces/config_default.h
                            ${Bonmin_DIR}/src/Interfaces/config_bonmin_default.h
                            ${Bonmin_DIR}/src/Interfaces/BonStdInterfaceTMINLP.hpp
                            ${Bonmin_DIR}/src/Interfaces/BonminConfig.h
                            ${Bonmin_DIR}/src/Interfaces/BonOsiTMINLPInterface.hpp
                            ${Bonmin_DIR}/src/Interfaces/BonColReader.hpp
                            ${Bonmin_DIR}/src/Interfaces/BonBoundsReader.hpp
                            ${Bonmin_DIR}/src/Interfaces/BonAuxInfos.hpp
                            ${Bonmin_DIR}/src/Interfaces/BonStdCInterface.h
                            ${Bonmin_DIR}/src/Interfaces/BonBranchingTQP.hpp
                            ${Bonmin_DIR}/src/Interfaces/BonStrongBranchingSolver.hpp
                            ${Bonmin_DIR}/src/Interfaces/BonMsgUtils.hpp
                            ${Bonmin_DIR}/src/Algorithms/OaGenerators/BonFpForMinlp.hpp
                            ${Bonmin_DIR}/src/Algorithms/OaGenerators/BonEcpCuts.hpp
                            ${Bonmin_DIR}/src/Algorithms/OaGenerators/BonOaFeasChecker.hpp
                            ${Bonmin_DIR}/src/Algorithms/OaGenerators/BonOaNlpOptim.hpp
                            ${Bonmin_DIR}/src/Algorithms/OaGenerators/BonOACutGenerator2.hpp
                            ${Bonmin_DIR}/src/Algorithms/OaGenerators/BonDummyHeuristic.hpp
                            ${Bonmin_DIR}/src/Algorithms/OaGenerators/BonOaDecBase.hpp
                            ${Bonmin_DIR}/src/Algorithms/OaGenerators/BonOAMessages.hpp
                            ${Bonmin_DIR}/src/Algorithms/BonCbcLpStrategy.hpp
                            ${Bonmin_DIR}/src/Algorithms/BonSubMipSolver.hpp
                            ${Bonmin_DIR}/src/Algorithms/Branching/BonRandomChoice.hpp
                            #${Bonmin_DIR}/src/Algorithms/Branching/BonCurvBranchingSolver.hpp
                            ${Bonmin_DIR}/src/Algorithms/Branching/BonChooseVariable.hpp
                            ${Bonmin_DIR}/src/Algorithms/Branching/BonPseudoCosts.hpp
                            ${Bonmin_DIR}/src/Algorithms/Branching/BonQpBranchingSolver.hpp
                            ${Bonmin_DIR}/src/Algorithms/Branching/BonLpBranchingSolver.hpp
                            ${Bonmin_DIR}/src/Algorithms/BonSolverHelp.hpp
                            ${Bonmin_DIR}/src/Algorithms/QuadCuts/BonOuterApprox.hpp
                            ${Bonmin_DIR}/src/Algorithms/QuadCuts/BonArraysHelpers.hpp
                            ${Bonmin_DIR}/src/Algorithms/QuadCuts/BonQuadCut.hpp
                            ${Bonmin_DIR}/src/Algorithms/QuadCuts/BonTMINLP2Quad.hpp
                            ${Bonmin_DIR}/src/Algorithms/QuadCuts/BonLinearCutsGenerator.hpp
                            ${Bonmin_DIR}/src/Algorithms/QuadCuts/BonTMatrix.hpp
                            ${Bonmin_DIR}/src/Algorithms/QuadCuts/BonQuadRow.hpp
                            ${Bonmin_DIR}/src/Algorithms/QuadCuts/BonTMINLPLinObj.hpp
                            ${Bonmin_DIR}/src/Algorithms/BonBonminSetup.hpp
                            ${Bonmin_DIR}/src/Algorithms/Ampl/BonAmplSetup.hpp
                            ${Bonmin_DIR}/src/Algorithms/BonBabSetupBase.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/BonCbc.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/BonGuessHeuristic.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/BonDiver.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonLocalSolverBasedHeuristic.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicFPump.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicDiveMIPVectorLength.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicLocalBranching.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonFixAndSolveHeuristic.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicDiveMIPFractional.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicDive.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicRINS.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicDiveVectorLength.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonPumpForMinlp.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicDiveFractional.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonDummyPump.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonHeuristicDiveMIP.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/Heuristics/BonMilpRounding.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/BonCbcNode.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/BonBabInfos.hpp
                            ${Bonmin_DIR}/src/CbcBonmin/BonCbcNlpStrategy.hpp)

if (COIN_ENABLE_DOWNLOAD_ASL OR COIN_USE_ASL)
  set(Bonmin_SRC_LIST ${Bonmin_SRC_LIST}
                      ${Bonmin_DIR}/src/Interfaces/Ampl/sos_kludge.cpp
                      ${Bonmin_DIR}/src/Interfaces/Ampl/BonAmplTMINLP.cpp
                      ${Bonmin_DIR}/src/Interfaces/Ampl/BonSolReader.cpp
                      ${Bonmin_DIR}/src/Interfaces/Ampl/BonAmplInterface.cpp)
  
  set(Bonmin_SRC_LIST_Headers ${Bonmin_SRC_LIST_Headers}
                              ${Bonmin_DIR}/src/Interfaces/Ampl/BonSolReader.hpp
                              ${Bonmin_DIR}/src/Interfaces/Ampl/BonAmplInterface.hpp
                              ${Bonmin_DIR}/src/Interfaces/Ampl/BonAmplTMINLP.hpp)
endif ()

if (COIN_ENABLE_COMPAT)
  set(Bonmin_SRC_LIST ${Bonmin_SRC_LIST}
                      ${CMAKE_CURRENT_SOURCE_DIR}/cmake/compat.cpp
                      ${CMAKE_CURRENT_SOURCE_DIR}/cmake/compat.c)
endif ()

include_directories(${Bonmin_DIR}/src)
include_directories(${Cbc_DIR}/src/OsiCbc)
include_directories(${BuildTools_DIR}/headers)

if (USE_COINOR_BIN)
  include_directories(${COINOR_DIR}/include)
  
  add_library(libBonmin    STATIC IMPORTED)
  add_library(libCbc       STATIC IMPORTED)
  add_library(libCgl       STATIC IMPORTED)
  add_library(libOsiClp    STATIC IMPORTED)
  add_library(libOsi       STATIC IMPORTED)
  add_library(libClp       STATIC IMPORTED)
  add_library(libCoinUtils STATIC IMPORTED)
  add_library(libOsiGlpk   STATIC IMPORTED)
  if (COIN_USE_ASL)
    add_library(amplsolver   STATIC IMPORTED)
  endif ()
  
  if (WIN32 AND NOT MINGW)
    set_property(TARGET libBonmin    PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libBonmin.lib)
    set_property(TARGET libCbc       PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libCbc.lib)
    set_property(TARGET libCgl       PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libCgl.lib)
    set_property(TARGET libOsiClp    PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libOsiClp.lib)
    set_property(TARGET libOsi       PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libOsi.lib)
    set_property(TARGET libClp       PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libClp.lib)
    set_property(TARGET libCoinUtils PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libCoinUtils.lib)
    set_property(TARGET libOsiGlpk   PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libOsiGlpk.lib)
    if (COIN_USE_ASL)
      set_property(TARGET amplsolver   PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/amplsolver.lib)
    endif ()
  else ()
    set_property(TARGET libBonmin    PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libBonmin.a)
    set_property(TARGET libCbc       PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libCbc.a)
    set_property(TARGET libCgl       PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libCgl.a)
    set_property(TARGET libOsiClp    PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libOsiClp.a)
    set_property(TARGET libOsi       PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libOsi.a)
    set_property(TARGET libClp       PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libClp.a)
    set_property(TARGET libCoinUtils PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libCoinUtils.a)
    set_property(TARGET libOsiGlpk   PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libOsiGlpk.a)
    if (COIN_USE_ASL)
      set_property(TARGET amplsolver   PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libamplsolver.a)
    endif ()
  endif ()
else ()
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
  
  link_directories(${CMAKE_BINARY_DIR}/bin)
endif ()

macro(set_include_directories TARGET)
  if (USE_COINOR_BIN)
    target_include_directories(${TARGET} BEFORE PRIVATE ${COINOR_DIR}/include)
  else ()
    target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Cbc/include)
    target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Cgl/include)
    target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Clp/include)
    target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  endif ()
  
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Bonmin/include)
endmacro ()

if (WIN32)
  add_definitions(-DUSE_BONMINCONFIG -DCOIN_NO_CLP_MESSAGE -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
else ()
  add_definitions(-DUSE_BONMINCONFIG -DCOIN_NO_CLP_MESSAGE)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libBonmin SHARED ${Bonmin_SRC_LIST})
else ()
  add_library(libBonmin STATIC ${Bonmin_SRC_LIST})
endif ()
if (COIN_COMPILE_LTO)
  set_target_properties(libBonmin PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libBonmin PROPERTIES PREFIX "")
endif ()
set_include_directories(libBonmin)

macro(add_example Name)
  add_executable(${Name} ${ARGN})
  target_link_libraries(${Name} libBonmin libipopt libCbc libCgl libOsiClp libOsi libClp libCoinUtils)
  set_include_directories(${Name})
  if (COIN_COMPILE_LTO)
    set_target_properties(${Name} PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
  endif ()
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
    if ((COIN_HAS_BLAS OR COIN_HAS_LAPACK) AND (UNIX OR MINGW) AND NOT COIN_USE_LAPACK)
      target_link_libraries(${Name} gfortran)
    endif ()
  endif ()
  if (COINUTILS_HAS_ZLIB OR COIN_USE_ZLIB)
    target_link_libraries(${Name} ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB OR COIN_USE_BZLIB)
    target_link_libraries(${Name} ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK OR COIN_USE_GLPK)
    target_link_libraries(${Name} libOsiGlpk glpk)
  endif ()
  if (CBC_USE_THREADS OR COINUTILS_USE_THREADS OR COIN_USE_PTHREAD_WIN32 OR COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32 OR COIN_HAS_ABC)
    if (MINGW)
      target_link_libraries(${Name} winpthread)
    elseif (NOT WIN32)
      target_link_libraries(${Name} pthread)
    else ()
      target_link_libraries(${Name} pthreadVC2)
    endif ()
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

add_example(bonmin ${Cbc_DIR}/src/CoinSolve.cpp)

if (BONMIN_BUILD_EXAMPLES)
  # CExample
  set(CEXAMPLE_SRCS ${Bonmin_DIR}/examples/CExample/main.c
                    ${Bonmin_DIR}/examples/CExample/MyBonmin.c)

  include_directories(${Bonmin_DIR}/examples/CExample)

  add_example(cexample ${CEXAMPLE_SRCS})
  
  add_test(NAME bonmin_example_cexample
           COMMAND $<TARGET_FILE:cexample>)
  set_tests_properties(bonmin_example_cexample PROPERTIES TIMEOUT 30)
  set_tests_properties(bonmin_example_cexample PROPERTIES PASS_REGULAR_EXPRESSION "Finished: result = 0")

  #CppExample
  
  set(CEXAMPLE_SRCS ${Bonmin_DIR}/examples/CppExample/MyTMINLP.cpp
                    ${Bonmin_DIR}/examples/CppExample/MyBonmin.cpp)

  include_directories(${Bonmin_DIR}/examples/CppExample)

  add_example(cppexample ${CEXAMPLE_SRCS})
  
  add_test(NAME bonmin_example_cppexample
           COMMAND $<TARGET_FILE:cppexample>)
  set_tests_properties(bonmin_example_cppexample PROPERTIES TIMEOUT 30)
  set_tests_properties(bonmin_example_cppexample PROPERTIES PASS_REGULAR_EXPRESSION "x\\[0\\] = 1, x\\[1\\] = 1, x\\[2\\] = 0.500141, x\\[3\\] = 0")
endif ()

install(TARGETS bonmin
        DESTINATION bin)

install(TARGETS libBonmin 
        DESTINATION lib)

install(FILES ${Bonmin_SRC_LIST_Headers} 
        DESTINATION include/coin)

install(FILES ${CMAKE_BINARY_DIR}/Bonmin/include/config_bonmin.h
        DESTINATION include/coin
        RENAME BonminConfig.h)

install(FILES ${CMAKE_BINARY_DIR}/Bonmin/include/config_bonmin.h
        DESTINATION include/coin)
