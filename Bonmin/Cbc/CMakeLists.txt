get_ac_init_version(${Cbc_DIR}/configure.ac CBC)

option(CBC_BUILD_CBC_GENERIC "Build the generic version of Cbc" OFF)
option(CBC_BUILD_EXAMPLES    "Enable the building of examples"  OFF)

set(CBC_VERSION_MAJOR   "${CBC_MAJOR_VERSION}"  CACHE STRING "The CBC major version number")
set(CBC_VERSION_MINOR   "${CBC_MINOR_VERSION}"  CACHE STRING "The CBC minor version number")
set(CBC_VERSION_RELEASE "${CBC_PATCH_VERSION}"  CACHE STRING "The CBC patch version number")
set(CBC_VERSION         "${CBC_VERSION_STRING}" CACHE STRING "The CBC version")

set(CBC_WC_REVISION "0")
if (EXISTS "${Cbc_DIR}/../.svn")
  find_package(Subversion)
  if (Subversion_FOUND)
    Subversion_WC_INFO(${Cbc_DIR}/.. CBC)
  endif ()
endif ()

if (EXISTS "${Cbc_DIR}/../.git")
  find_package(Git)
  if (Git_FOUND)
    include(export_git)
    GIT_WC_INFO(${Cbc_DIR}/.. CBC)
    set(CBC_WC_REVISION "${CBC_WC_SVNEQUIV}") # alphanumeric rev not yet managed
  endif ()
endif ()

message(STATUS "Current CBC revision is ${CBC_WC_REVISION}")
set(CBC_SVN_REV "${CBC_WC_REVISION}" CACHE STRING "The CBC subversion revision" FORCE)

mark_as_advanced(CBC_VERSION_MAJOR
                 CBC_VERSION_MINOR
                 CBC_VERSION_RELEASE
                 CBC_VERSION
                 CBC_SVN_REV)

add_definitions(-DCBC_BUILD)

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/include/config.h.in     ${CMAKE_BINARY_DIR}/Cbc/include/config.h)
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/include/config_cbc.h.in ${CMAKE_BINARY_DIR}/Cbc/include/config_cbc.h)

#
# pkg-config file generation
#

set(prefix           "${CMAKE_INSTALL_PREFIX}")
set(exec_prefix      "\${prefix}")
set(libdir           "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}")
set(includedir       "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}")
set(CBCLIB_PCLIBS     "")
set(CBCLIB_PCREQUIRES "osi-cbc clp cgl osi coinutils")
set(PACKAGE_VERSION   "${CBC_VERSION}")

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Cbc/cbc.pc.in ${CMAKE_BINARY_DIR}/Cbc/cbc.pc @ONLY)

set(libdir            "${Cbc_DIR}")
set(abs_source_dir    "${CMAKE_BINARY_DIR}/bin")

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Cbc/cbc-uninstalled.pc.in ${CMAKE_BINARY_DIR}/Cbc/cbc-uninstalled.pc @ONLY)

install(FILES ${CMAKE_BINARY_DIR}/Cbc/cbc.pc
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}/pkg-config/)

#
# Build
#

set(Cbc_SRC_LIST ${Cbc_DIR}/src/Cbc_C_Interface.cpp
                 ${Cbc_DIR}/src/CbcBranchAllDifferent.cpp
                 #${Cbc_DIR}/src/CbcBranchBase.cpp
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

if (COIN_ENABLE_DOWNLOAD_ASL OR COIN_USE_ASL)
  set(Cbc_SRC_LIST ${Cbc_SRC_LIST}
                   ${Cbc_DIR}/src/Cbc_ampl.cpp)
  
  set(Cbc_SRC_LIST_Headers ${Cbc_SRC_LIST_Headers}
                   ${Cbc_DIR}/src/Cbc_ampl.h)
endif ()
	       
if (COIN_ENABLE_COMPAT)
  set(Cbc_SRC_LIST ${Cbc_SRC_LIST}
                   ${CMAKE_CURRENT_SOURCE_DIR}/../cmake/compat.cpp
                   ${CMAKE_CURRENT_SOURCE_DIR}/../cmake/compat.c)
endif ()

if (CMAKE_COMPILER_IS_GNUCXX AND ((CMAKE_CXX_COMPILER_VERSION VERSION_GREATER 4.4) OR (CMAKE_CXX_COMPILER_VERSION VERSION_EQUAL 4.4)))
  set_source_files_properties(${Cbc_DIR}/src/CbcCbcParam.cpp PROPERTIES COMPILE_FLAGS -fno-var-tracking-assignments)
endif ()

include_directories(${Cbc_DIR}/src)
include_directories(${Cbc_DIR}/src/OsiCbc)
include_directories(${BuildTools_DIR}/headers)

if (USE_COINOR_BIN)
  include_directories(${COINOR_DIR}/include)
  
  add_library(libCbc       STATIC IMPORTED)
  add_library(libCgl       STATIC IMPORTED)
  add_library(libOsiClp    STATIC IMPORTED)
  add_library(libOsi       STATIC IMPORTED)
  add_library(libClp       STATIC IMPORTED)
  add_library(libCoinUtils STATIC IMPORTED)
  add_library(libOsiGlpk   STATIC IMPORTED)
  if (COIN_USE_ASL)
    add_library(amplsolver STATIC IMPORTED)
  endif ()
  
  if (WIN32 AND NOT MINGW)
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
  include_directories(${Cgl_DIR}/src/CglBKClique)
  include_directories(${Cgl_DIR}/src/CglCliqueMerging)
  include_directories(${Cgl_DIR}/src/CglOddHoleWC)

  include_directories(${CoinUtils_DIR}/src)
  include_directories(${Clp_DIR}/src)
  include_directories(${Clp_DIR}/src/OsiClp)
  include_directories(${Osi_DIR}/src)
  include_directories(${Osi_DIR}/src/Osi)
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
    target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Cgl/include)
    target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Clp/include)
    target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  endif ()
  
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Cbc/include)
endmacro ()

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
if (COIN_COMPILE_LTO)
  set_target_properties(libCbc PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libCbc PROPERTIES PREFIX "")
endif ()
set_include_directories(libCbc)

if (CBC_BUILD_EXAMPLES)
  set(TEST_LIB_PATH "${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/lib")
  set(TEST_BIN_PATH "${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/bin")
  
  macro(add_example Name)
    add_executable(${Name} ${ARGN})
    target_link_libraries(${Name} libCbc libCgl libOsiClp libOsi libClp libCoinUtils)
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
      if ((COIN_HAS_BLAS OR COIN_HAS_LAPACK) AND (UNIX OR MINGW) AND NOT COIN_USE_LAPACK AND NOT (CMAKE_Fortran_COMPILER_ID STREQUAL "Intel"))
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
  
  add_example(inc ${Cbc_DIR}/examples/inc.cpp)
  
  add_test(NAME cbc_example_inc
           COMMAND $<TARGET_FILE:inc> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_inc PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_inc PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_inc PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_inc PROPERTIES PASS_REGULAR_EXPRESSION "Optimal objective -464.753.* - 5 iterations time .*, Presolve 0.00")
  
  add_example(allCuts ${Cbc_DIR}/examples/allCuts.cpp)
  
  add_test(NAME cbc_example_allCuts
           COMMAND $<TARGET_FILE:allCuts> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_allCuts PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_allCuts PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_allCuts PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_allCuts PROPERTIES PASS_REGULAR_EXPRESSION "Clp0032I Optimal objective -464.753.* - 5 iterations time .*, Presolve 0.00")
  
  add_example(cbc_driver ${Cbc_DIR}/examples/driver.cpp)
  
  add_test(NAME cbc_example_driver
           COMMAND $<TARGET_FILE:cbc_driver> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_driver PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_driver PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_driver PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_driver PROPERTIES PASS_REGULAR_EXPRESSION "Clp0000I Optimal - objective value -464.75")
    
  add_example(longthin ${Cbc_DIR}/examples/longthin.cpp 
                       ${Cbc_DIR}/examples/CbcBranchUser.cpp
                       ${Cbc_DIR}/examples/CbcCompareUser.cpp
                       ${Cbc_DIR}/examples/CbcSolver2.cpp)
  
  add_test(NAME cbc_example_longthin
           COMMAND $<TARGET_FILE:longthin> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_longthin PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_longthin PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_longthin PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_longthin PROPERTIES PASS_REGULAR_EXPRESSION "took .* seconds, 0 nodes with objective -464.75.* Finished")
  
  add_example(qmip2 ${Cbc_DIR}/examples/qmip2.cpp 
                    ${Cbc_DIR}/examples/CbcBranchUser.cpp)
  
  add_test(NAME cbc_example_qmip2
           COMMAND $<TARGET_FILE:qmip2> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/exmip1.5.mps)
  set_tests_properties(cbc_example_qmip2 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_qmip2 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_qmip2 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_qmip2 PROPERTIES PASS_REGULAR_EXPRESSION "took .* seconds, 4 nodes with objective -4 Finished")
  
  add_example(sample5 ${Cbc_DIR}/examples/sample5.cpp
                      ${Cbc_DIR}/examples/CbcBranchUser.cpp
                      ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  
  add_test(NAME cbc_example_sample5
           COMMAND $<TARGET_FILE:sample5> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_sample5 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_sample5 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_sample5 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_sample5 PROPERTIES PASS_REGULAR_EXPRESSION ".*3 1.000000")
  
  add_example(barrier ${Cbc_DIR}/examples/barrier.cpp)
  
  add_test(NAME cbc_example_barrier
           COMMAND $<TARGET_FILE:barrier> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_barrier PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_barrier PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_barrier PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_barrier PROPERTIES PASS_REGULAR_EXPRESSION "took .* seconds,  with objective -464.75.*")
  
  add_example(fast0507b ${Cbc_DIR}/examples/fast0507b.cpp
                        ${Cbc_DIR}/examples/CbcBranchFollow2.cpp
                        ${Cbc_DIR}/examples/CbcBranchUser.cpp
                        ${Cbc_DIR}/examples/CbcCompareUser.cpp
                        ${Cbc_DIR}/examples/CbcSolver2.cpp
                        ${Cbc_DIR}/examples/CbcSolver3.cpp)
  
  add_test(NAME cbc_example_fast0507b
           COMMAND $<TARGET_FILE:fast0507b> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_fast0507b PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_fast0507b PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_fast0507b PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_fast0507b PROPERTIES PASS_REGULAR_EXPRESSION "took .* seconds, 0 nodes with objective -464.753 Finished")
    
  add_example(lotsize ${Cbc_DIR}/examples/lotsize.cpp)
  
  add_test(NAME cbc_example_lotsize
           COMMAND $<TARGET_FILE:lotsize> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_lotsize PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_lotsize PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_lotsize PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_lotsize PROPERTIES PASS_REGULAR_EXPRESSION "took .* seconds, 0 nodes with objective -464.753 Finished")
    
  add_example(qmip ${Cbc_DIR}/examples/qmip.cpp
                   ${Cbc_DIR}/examples/CbcBranchUser.cpp
                   ${Cbc_DIR}/examples/CbcCompareUser.cpp
                   ${Cbc_DIR}/examples/ClpQuadInterface.cpp)
  
  add_test(NAME cbc_example_qmip
           COMMAND $<TARGET_FILE:qmip> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/exmip1.5.mps)
  set_tests_properties(cbc_example_qmip PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_qmip PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_qmip PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_qmip PROPERTIES PASS_REGULAR_EXPRESSION "Cbc0006I The LP relaxation is infeasible or too expensive")
  
  add_example(simpleBAB ${Cbc_DIR}/examples/simpleBAB.cpp)
  
  add_test(NAME cbc_example_simpleBAB
           COMMAND $<TARGET_FILE:simpleBAB> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_simpleBAB PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_simpleBAB PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_simpleBAB PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_simpleBAB PROPERTIES PASS_REGULAR_EXPRESSION "Clp0000I Optimal - objective value 2.95")
    
  add_example(fast0507 ${Cbc_DIR}/examples/fast0507.cpp
                       ${Cbc_DIR}/examples/CbcCompareUser.cpp
                       ${Cbc_DIR}/examples/CbcSolver3.cpp
                       ${Cbc_DIR}/examples/CbcBranchUser.cpp)
  
  add_test(NAME cbc_example_fast0507
           COMMAND $<TARGET_FILE:fast0507> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_fast0507 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_fast0507 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_fast0507 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_fast0507 PROPERTIES PASS_REGULAR_EXPRESSION "Cbc0006I The LP relaxation is infeasible or too expensive")
    
  add_example(cbc_minimum ${Cbc_DIR}/examples/minimum.cpp)
  set_target_properties(cbc_minimum PROPERTIES COMPILE_DEFINITIONS SAMPLEDIR=\"${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample\")
  
  add_test(NAME cbc_example_minimum
           COMMAND $<TARGET_FILE:cbc_minimum> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/p0033.mps)
  set_tests_properties(cbc_example_minimum PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_minimum PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_minimum PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_minimum PROPERTIES PASS_REGULAR_EXPRESSION "Clp0000I Optimal - objective value 3089")
    
  add_example(repeat ${Cbc_DIR}/examples/repeat.cpp
                     ${Cbc_DIR}/examples/CbcBranchUser.cpp
                     ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  
  add_test(NAME cbc_example_repeat
           COMMAND $<TARGET_FILE:repeat> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_repeat PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_repeat PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_repeat PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_repeat PROPERTIES PASS_REGULAR_EXPRESSION "took .* seconds, 0 nodes with objective -464.753 Finished")
    
  add_example(sos ${Cbc_DIR}/examples/sos.cpp)
  
  add_test(NAME cbc_example_sos
           COMMAND $<TARGET_FILE:sos> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_sos PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_sos PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_sos PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_sos PROPERTIES PASS_REGULAR_EXPRESSION "0 SOS")
    
  add_example(crew ${Cbc_DIR}/examples/crew.cpp ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  
  add_test(NAME cbc_example_crew
           COMMAND $<TARGET_FILE:crew> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_crew PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_crew PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_crew PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_crew PROPERTIES PASS_REGULAR_EXPRESSION "took .* seconds, 0 nodes with objective -464.753 Finished")
    
  add_example(gear ${Cbc_DIR}/examples/gear.cpp
                   ${Cbc_DIR}/examples/CbcBranchLink.cpp)
  
  add_test(NAME cbc_example_gear
           COMMAND $<TARGET_FILE:gear>)
  set_tests_properties(cbc_example_gear PROPERTIES TIMEOUT 360)
  if (WIN32)
    set_tests_properties(cbc_example_gear PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_gear PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE;LONG")
  set_tests_properties(cbc_example_gear PROPERTIES PASS_REGULAR_EXPRESSION "took .* seconds, 19870 nodes with objective 1.64343e-06 Finished")
    
  add_example(cbc_modify ${Cbc_DIR}/examples/modify.cpp)
  
  add_test(NAME cbc_example_modify
           COMMAND $<TARGET_FILE:cbc_modify> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_modify PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_modify PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_modify PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_modify PROPERTIES PASS_REGULAR_EXPRESSION "Cbc0001I Search completed - best objective -257.92.*, took 0 iterations and 0 nodes (.* seconds)")
    
  # This test hangs with COIN_BIG_INDEX==2
  add_example(sample1 ${Cbc_DIR}/examples/sample1.cpp
                      ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  
  add_test(NAME cbc_example_sample1
           COMMAND $<TARGET_FILE:sample1> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/lseu.mps)
  set_tests_properties(cbc_example_sample1 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_sample1 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_sample1 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_sample1 PROPERTIES PASS_REGULAR_EXPRESSION "Clp0000I Optimal - objective value 1120")
    
  add_example(sudoku ${Cbc_DIR}/examples/sudoku.cpp)
  
  add_test(NAME cbc_example_sudoku
           COMMAND $<TARGET_FILE:sudoku> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_sudoku PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_sudoku PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_sudoku PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_sudoku PROPERTIES PASS_REGULAR_EXPRESSION "Clp0032I PrimalInfeasible objective -73.56.* - 0 iterations time .*")
    
  add_example(cbc_driver2 ${Cbc_DIR}/examples/driver2.cpp)
  target_link_libraries(cbc_driver2 libOsi libOsiCbc)
  
  add_test(NAME cbc_example_driver2
           COMMAND $<TARGET_FILE:cbc_driver2> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_driver2 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_driver2 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_driver2 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_driver2 PROPERTIES PASS_REGULAR_EXPRESSION "Clp0000I Optimal - objective value -464.75.*")
    
  add_example(hotstart ${Cbc_DIR}/examples/hotstart.cpp
                       ${Cbc_DIR}/examples/CbcBranchUser.cpp
                       ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  
  add_test(NAME cbc_example_hotstart
           COMMAND $<TARGET_FILE:hotstart> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_hotstart PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_hotstart PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_hotstart PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_hotstart PROPERTIES PASS_REGULAR_EXPRESSION "took .* seconds, 0 nodes with objective -464.753 Finished")
    
  add_example(nway ${Cbc_DIR}/examples/nway.cpp)
  
  add_test(NAME cbc_example_nway
           COMMAND $<TARGET_FILE:nway> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_nway PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_nway PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_nway PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_nway PROPERTIES PASS_REGULAR_EXPRESSION "0 SOS")
    
  add_example(sample2 ${Cbc_DIR}/examples/sample2.cpp
                      ${Cbc_DIR}/examples/CbcBranchUser.cpp
                      ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  
  add_test(NAME cbc_example_sample2
           COMMAND $<TARGET_FILE:sample2> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_sample2 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_sample2 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_sample2 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_sample2 PROPERTIES PASS_REGULAR_EXPRESSION "took .* seconds, 0 nodes with objective -464.753 Finished")
    
  add_example(cbc_driver3 ${Cbc_DIR}/examples/driver3.cpp)
  
  add_test(NAME cbc_example_driver3
           COMMAND $<TARGET_FILE:cbc_driver3> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_driver3 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_driver3 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_driver3 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_driver3 PROPERTIES PASS_REGULAR_EXPRESSION "Optimal objective -464.75.* - 1 iterations time 0.002, Presolve 0.00")
    
  add_example(interrupt ${Cbc_DIR}/examples/interrupt.cpp
                        ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  
  add_test(NAME cbc_example_interrupt
           COMMAND $<TARGET_FILE:interrupt> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_interrupt PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_interrupt PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_interrupt PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_interrupt PROPERTIES PASS_REGULAR_EXPRESSION "Optimal objective -464.75.* - 5 iterations time .*, Presolve 0.00")
    
  add_example(sample3 ${Cbc_DIR}/examples/sample3.cpp
                      ${Cbc_DIR}/examples/CbcBranchUser.cpp
                      ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  
  add_test(NAME cbc_example_sample3
           COMMAND $<TARGET_FILE:sample3> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_sample3 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_sample3 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_sample3 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_sample3 PROPERTIES PASS_REGULAR_EXPRESSION "took .* seconds, 0 nodes with objective -464.753 Finished")
    
  add_example(cbc_driver4 ${Cbc_DIR}/examples/driver4.cpp
                          ${Cbc_DIR}/examples/CbcCompareUser.cpp)
  
  add_test(NAME cbc_example_driver4
           COMMAND $<TARGET_FILE:cbc_driver4> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_driver4 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_driver4 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_driver4 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_driver4 PROPERTIES PASS_REGULAR_EXPRESSION "Optimal objective -464.75.* - 5 iterations time .*, Presolve 0.00")
    
  add_example(link ${Cbc_DIR}/examples/link.cpp
                   ${Cbc_DIR}/examples/CbcBranchLink.cpp)
  
  add_test(NAME cbc_example_link
           COMMAND $<TARGET_FILE:link> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_link PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_link PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_link PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_link PROPERTIES PASS_REGULAR_EXPRESSION "Optimal solution when x is 1, y 1.06066, z 0.5 and w 1")

  add_example(clpdriver ${Cbc_DIR}/examples/clpdriver.cpp)
  
  add_test(NAME cbc_example_clpdriver
           COMMAND $<TARGET_FILE:clpdriver> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(cbc_example_clpdriver PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_clpdriver PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_clpdriver PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_clpdriver PROPERTIES PASS_REGULAR_EXPRESSION "Optimal objective -464.75.* - 5 iterations time .*, Presolve 0.00")

  if (CBC_USE_THREADS)
    add_example(parallel ${Cbc_DIR}/examples/parallel.cpp
                         ${Cbc_DIR}/examples/CbcCompareUser.cpp)
    
    add_test(NAME cbc_example_parallel
             COMMAND $<TARGET_FILE:parallel> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
    set_tests_properties(cbc_example_parallel PROPERTIES TIMEOUT 30)
    if (WIN32)
      set_tests_properties(cbc_example_parallel PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
    endif ()
    set_tests_properties(cbc_example_parallel PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE;PARALLEL")
    #set_tests_properties(cbc_example_parallel PROPERTIES PASS_REGULAR_EXPRESSION "????")
  endif ()
  
  add_example(sample4 ${Cbc_DIR}/examples/sample4.cpp
                      ${Cbc_DIR}/examples/CbcBranchUser.cpp
                      ${Cbc_DIR}/examples/CbcCompareUser.cpp)

  if (COIN_ENABLE_DOWNLOAD_DATA_TEST)
    add_test(NAME cbc_example_sample4
             COMMAND $<TARGET_FILE:sample4> ${CMAKE_BINARY_DIR}/Dependencies/DATA_TEST/src/EP_DATA_TEST/miplib3/rgn.gz)
    set_tests_properties(cbc_example_sample4 PROPERTIES TIMEOUT 30)
    if (WIN32)
      set_tests_properties(cbc_example_sample4 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
    endif ()
    set_tests_properties(cbc_example_sample4 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
    set_tests_properties(cbc_example_sample4 PROPERTIES PASS_REGULAR_EXPRESSION "rgn.mps took .* seconds, 154 nodes with objective 53.2 Finished")
  endif ()
  
  add_example(modk ${Cbc_DIR}/examples/modk.c)
  
  if (COIN_ENABLE_DOWNLOAD_DATA_TEST)
    add_test(NAME cbc_example_modk
             COMMAND $<TARGET_FILE:modk> ${CMAKE_BINARY_DIR}/Dependencies/DATA_TEST/src/EP_DATA_TEST/miplib3/rgn.gz)
    set_tests_properties(cbc_example_modk PROPERTIES TIMEOUT 30)
    if (WIN32)
      set_tests_properties(cbc_example_modk PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
    endif ()
    set_tests_properties(cbc_example_modk PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
    set_tests_properties(cbc_example_modk PROPERTIES PASS_REGULAR_EXPRESSION "Objective value: .* 82.199.*")
  endif ()

  #
  # Beginning of TSP tests
  #
  
  add_example(tsp-subtour ${Cbc_DIR}/examples/tsp/tsp-subtour.cpp)

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 31695")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 3 elements found:  0 7 8")
  
  add_test(NAME cbc_example_tsp-subtour_att48
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/att48.dist)
  set_tests_properties(cbc_example_tsp-subtour_att48 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_att48 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_att48 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_att48 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_ulysses22
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/ulysses22.dist)
  set_tests_properties(cbc_example_tsp-subtour_ulysses22 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_ulysses22 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_ulysses22 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_ulysses22 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_bays29
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/bays29.dist)
  set_tests_properties(cbc_example_tsp-subtour_bays29 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_bays29 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_bays29 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_bays29 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 937")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  
  add_test(NAME cbc_example_tsp-subtour_fri26
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/fri26.dist)
  set_tests_properties(cbc_example_tsp-subtour_fri26 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_fri26 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_fri26 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_fri26 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 2085")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  
  add_test(NAME cbc_example_tsp-subtour_gr17
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/gr17.dist)
  set_tests_properties(cbc_example_tsp-subtour_gr17 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_gr17 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_gr17 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_gr17 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 2707")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  
  add_test(NAME cbc_example_tsp-subtour_gr21
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/gr21.dist)
  set_tests_properties(cbc_example_tsp-subtour_gr21 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_gr21 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_gr21 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_gr21 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_swiss42
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/swiss42.dist)
  set_tests_properties(cbc_example_tsp-subtour_swiss42 PROPERTIES TIMEOUT 120)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_swiss42 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_swiss42 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_swiss42 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_bayg29
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/bayg29.dist)
  set_tests_properties(cbc_example_tsp-subtour_bayg29 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_bayg29 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_bayg29 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_bayg29 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_berlin52
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/berlin52.dist)
  set_tests_properties(cbc_example_tsp-subtour_berlin52 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_berlin52 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_berlin52 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_berlin52 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_brazil58
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/brazil58.dist)
  set_tests_properties(cbc_example_tsp-subtour_brazil58 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_brazil58 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_brazil58 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_brazil58 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_burma14
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/burma14.dist)
  set_tests_properties(cbc_example_tsp-subtour_burma14 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_burma14 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_burma14 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_burma14 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_dantzig42
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/dantzig42.dist)
  set_tests_properties(cbc_example_tsp-subtour_dantzig42 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_dantzig42 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_dantzig42 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_dantzig42 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_eil51
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/eil51.dist)
  set_tests_properties(cbc_example_tsp-subtour_eil51 PROPERTIES TIMEOUT 120)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_eil51 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_eil51 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_eil51 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_eil76
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/eil76.dist)
  set_tests_properties(cbc_example_tsp-subtour_eil76 PROPERTIES TIMEOUT 480)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_eil76 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_eil76 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_eil76 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_gr24
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/gr24.dist)
  set_tests_properties(cbc_example_tsp-subtour_gr24 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_gr24 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_gr24 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_gr24 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_gr48
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/gr48.dist)
  set_tests_properties(cbc_example_tsp-subtour_gr48 PROPERTIES TIMEOUT 120)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_gr48 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_gr48 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_gr48 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_gr96
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/gr96.dist)
  set_tests_properties(cbc_example_tsp-subtour_gr96 PROPERTIES TIMEOUT 600)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_gr96 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_gr96 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE;LONG")
  set_tests_properties(cbc_example_tsp-subtour_gr96 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_hk48
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/hk48.dist)
  set_tests_properties(cbc_example_tsp-subtour_hk48 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_hk48 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_hk48 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_hk48 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_pr76
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/pr76.dist)
  set_tests_properties(cbc_example_tsp-subtour_pr76 PROPERTIES TIMEOUT 1200)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_pr76 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_pr76 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE;LONG")
  set_tests_properties(cbc_example_tsp-subtour_pr76 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_rat99
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/rat99.dist)
  set_tests_properties(cbc_example_tsp-subtour_rat99 PROPERTIES TIMEOUT 1200)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_rat99 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_rat99 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE;LONG")
  set_tests_properties(cbc_example_tsp-subtour_rat99 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_st70
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/st70.dist)
  set_tests_properties(cbc_example_tsp-subtour_st70 PROPERTIES TIMEOUT 360)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_st70 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_st70 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_st70 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  set(TEST_REGEX )
  #add_regex(TEST_REGEX "Clp0000I Optimal - objective value 62")
  #add_regex(TEST_REGEX "Branch & Bound Finished with status: 0")
  #add_regex(TEST_REGEX "isProvenOptimal: 1")
  #add_regex(TEST_REGEX "subtour with 2 elements found:  0 15")
  
  add_test(NAME cbc_example_tsp-subtour_ulysses16
           COMMAND $<TARGET_FILE:tsp-subtour> ${CMAKE_SOURCE_DIR}/Cbc/examples/tsp/ulysses16.dist)
  set_tests_properties(cbc_example_tsp-subtour_ulysses16 PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_tsp-subtour_ulysses16 PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_tsp-subtour_ulysses16 PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  set_tests_properties(cbc_example_tsp-subtour_ulysses16 PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  #
  # End of TSP tests
  #
  
  add_example(osiCbcUnitTest ${Cbc_DIR}/test/gamsTest.cpp ${Cbc_DIR}/test/osiUnitTest.cpp ${Cbc_DIR}/test/CInterfaceTest.c ${Cbc_DIR}/test/OsiCbcSolverInterfaceTest.cpp)
  include_directories(osiCbcUnitTest BEFORE PRIVATE ${Osi_DIR}/src/OsiCommonTest)
  target_link_libraries(osiCbcUnitTest libOsiCbc libCbc libOsiClp libClp libCoinUtils libCgl libOsi libOsiCommonTests)
  if (COINUTILS_HAS_ZLIB OR COIN_USE_ZLIB)
    target_link_libraries(osiCbcUnitTest ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB OR COIN_USE_BZLIB)
    target_link_libraries(osiCbcUnitTest ${BZLIB_NAME})
  endif ()
  
  add_test(NAME cbc_example_osiUnitTest
           COMMAND $<TARGET_FILE:osiCbcUnitTest>)
  set_tests_properties(cbc_example_osiUnitTest PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(cbc_example_osiUnitTest PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_PATH}\\;${TEST_BIN_PATH}")
  endif ()
  set_tests_properties(cbc_example_osiUnitTest PROPERTIES LABELS "DISTRIB;CBC;EXAMPLE")
  
  set(TEST_REGEX )
  add_regex(TEST_REGEX "Objective value in model: 2.1.*in solver: 2.1.*expected: 2.1")
  add_regex(TEST_REGEX "Primal value variable 0 in model: 0.*in solver: 0.*expected: 0")
  add_regex(TEST_REGEX "Primal value variable 1 in model: 2.1.*in solver: 2.1.*expected: 2.1")
  add_regex(TEST_REGEX "Primal value variable 2 in model: 0.*in solver: 0.*expected: 0")
  add_regex(TEST_REGEX "Primal value variable 3 in model: 10.*in solver: 10.*expected: 10")
  add_regex(TEST_REGEX "Reduced cost variable 0 in model: -1.*in solver: -1.*expected: -1")
  add_regex(TEST_REGEX "Reduced cost variable 3 in model: 0.*in solver: 0.*expected: 0")
  add_regex(TEST_REGEX "Row 2 marginal \\\\(price\\\\) in model: 1.*in solver: 1.*expected: 1")
  add_regex(TEST_REGEX "Row 2 marginal \\\\(price\\\\) in model: 1.*in solver: 1.*expected: 1")
  set_tests_properties(cbc_example_osiUnitTest PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
endif ()

add_executable(cbc ${Cbc_DIR}/src/CoinSolve.cpp)
target_link_libraries(cbc libCbc libCgl libOsiClp libOsi libClp libCoinUtils)
set_include_directories(cbc)
if (COIN_COMPILE_LTO)
  set_target_properties(cbc PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (COIN_HAS_AMD)
  target_link_libraries(cbc amd)
endif ()
if (COIN_HAS_CHOLMOD)
  target_link_libraries(cbc cholmod suitesparseconfig amd ccolamd colamd camd)
endif () 
if (MKL_FOUND)
  target_link_libraries(cbc ${COIN_MKL_LIBS})
else ()
  if (COIN_HAS_LAPACK OR COIN_USE_LAPACK)
    target_link_libraries(cbc lapack)
  endif ()
  if (COIN_HAS_BLAS OR COIN_USE_BLAS)
    target_link_libraries(cbc blas)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_CLAPACK)
    target_link_libraries(cbc f2c)
  endif ()
  if ((COIN_HAS_BLAS OR COIN_HAS_LAPACK) AND (UNIX OR MINGW) AND NOT COIN_USE_LAPACK AND NOT (CMAKE_Fortran_COMPILER_ID STREQUAL "Intel"))
    target_link_libraries(cbc gfortran)
  endif ()
endif ()
if (COINUTILS_HAS_ZLIB OR COIN_USE_ZLIB)
  target_link_libraries(cbc ${ZLIB_NAME})
endif ()
if (COINUTILS_HAS_BZLIB OR COIN_USE_BZLIB)
  target_link_libraries(cbc ${BZLIB_NAME})
endif ()
if (COIN_HAS_GLPK OR COIN_USE_GLPK)
  target_link_libraries(cbc libOsiGlpk glpk)
  endif ()
if (CBC_USE_THREADS OR COINUTILS_USE_THREADS OR COIN_USE_PTHREAD_WIN32 OR COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32 OR COIN_HAS_ABC)
  if (MINGW)
    target_link_libraries(cbc winpthread)
  elseif (NOT WIN32)
    target_link_libraries(cbc pthread)
  else ()
    target_link_libraries(cbc pthreadVC2)
  endif ()
endif ()
if (COIN_HAS_ABC AND (COIN_ABC_LEVEL GREATER 2))
  target_link_libraries(cbc cilkrts)
endif ()  
if (COIN_ENABLE_DOWNLOAD_ASL OR COIN_USE_ASL)
  target_link_libraries(cbc amplsolver dl)
endif ()  
if (READLINE_FOUND)
  target_link_libraries(cbc ${READLINE_LIBRARIES})
endif ()  
if (COIN_HAS_MUMPS)
  if (CMAKE_Fortran_COMPILER_ID STREQUAL "Intel")
    target_link_libraries(cbc dmumps mumps_common seq blas lapack ifort pthread)
  else ()
    target_link_libraries(cbc dmumps mumps_common seq blas lapack gfortran pthread)
  endif ()
endif ()
if (COIN_ENABLE_DOWNLOAD_METIS OR COIN_USE_METIS)
  target_link_libraries(cbc metis m)
endif ()  
  
install(TARGETS cbc
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR})

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
  
  target_link_libraries(cbc-generic libCbc libCgl libOsiClp libOsi libClp libCoinUtils)
  set_include_directories(cbc-generic)
  if (COIN_COMPILE_LTO)
    set_target_properties(cbc-generic PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
  endif ()
  if (COIN_HAS_AMD)
    target_link_libraries(cbc-generic amd)
  endif ()
  if (COIN_HAS_CHOLMOD)
    target_link_libraries(cbc-generic cholmod suitesparseconfig amd ccolamd colamd camd)
  endif () 
  if (MKL_FOUND)
    target_link_libraries(cbc-generic ${COIN_MKL_LIBS})
  else ()
    if (COIN_HAS_LAPACK OR COIN_USE_LAPACK)
      target_link_libraries(cbc-generic lapack)
    endif ()
    if (COIN_HAS_BLAS OR COIN_USE_BLAS)
      target_link_libraries(cbc-generic blas)
    endif ()
    if (COIN_ENABLE_DOWNLOAD_CLAPACK)
      target_link_libraries(cbc-generic f2c)
    endif ()
    if ((COIN_HAS_BLAS OR COIN_HAS_LAPACK) AND (UNIX OR MINGW) AND NOT COIN_USE_LAPACK AND NOT (CMAKE_Fortran_COMPILER_ID STREQUAL "Intel"))
      target_link_libraries(cbc-generic gfortran)
    endif ()
  endif ()
  if (COINUTILS_HAS_ZLIB OR COIN_USE_ZLIB)
    target_link_libraries(cbc-generic ${ZLIB_NAME})
  endif ()
  if (COINUTILS_HAS_BZLIB OR COIN_USE_BZLIB)
    target_link_libraries(cbc-generic ${BZLIB_NAME})
  endif ()
  if (COIN_HAS_GLPK OR COIN_USE_GLPK)
    target_link_libraries(cbc-generic libOsiGlpk glpk)
  endif ()
  if (COIN_HAS_XPR OR COIN_USE_XPR)
    target_link_libraries(cbc-generic libOsiXpr xprs)
  endif ()
  if (COIN_HAS_GRB OR COIN_USE_GRB)
    target_link_libraries(cbc-generic libOsiGrb)
  endif ()
  if (COIN_HAS_SPX OR COIN_USE_SPX)
    target_link_libraries(cbc-generic libOsiSpx)
  endif ()
  if (COIN_HAS_VOL OR COIN_USE_VOL)
    target_link_libraries(cbc-generic libOsiVol libVol)
  endif ()
  if (COIN_HAS_DYLP OR COIN_USE_DYLP)
    target_link_libraries(cbc-generic libOsiDylp libDyLP)
  endif ()
  
  if (CBC_USE_THREADS OR COINUTILS_USE_THREAD OR COIN_USE_PTHREAD_WIN32 OR COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32 OR COIN_HAS_ABC)
    if (MINGW)
      target_link_libraries(cbc-generic winpthread)
    elseif (NOT WIN32)
      target_link_libraries(cbc-generic pthread)
    else ()
      target_link_libraries(cbc-generic pthreadVC2)
    endif ()
  endif ()
  if (COIN_HAS_ABC AND (COIN_ABC_LEVEL GREATER 2))
    target_link_libraries(cbc-generic cilkrts)
  endif ()  
  if (COIN_ENABLE_DOWNLOAD_ASL OR COIN_USE_ASL)
    target_link_libraries(cbc-generic amplsolver dl)
  endif ()  
  if (READLINE_FOUND)
    target_link_libraries(cbc-generic ${READLINE_LIBRARIES})
  endif ()  
  if (COIN_HAS_MUMPS)
    if (CMAKE_Fortran_COMPILER_ID STREQUAL "Intel")
      target_link_libraries(cbc-generic dmumps mumps_common seq blas lapack ifort pthread)
    else ()
      target_link_libraries(cbc-generic dmumps mumps_common seq blas lapack gfortran pthread)
    endif ()
  endif ()
  if (COIN_ENABLE_DOWNLOAD_METIS OR COIN_USE_METIS)
    target_link_libraries(cbc-generic metis m)
  endif ()  
  
  install(TARGETS cbc-generic
          DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR})
endif ()

install(TARGETS libCbc 
        RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR}
        LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}/static)

install(FILES ${Cbc_SRC_LIST_Headers} 
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}/coin)

install(FILES ${CMAKE_BINARY_DIR}/Cbc/include/config_cbc.h
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}/coin
        RENAME CbcConfig.h)

install(FILES ${CMAKE_BINARY_DIR}/Cbc/include/config_cbc.h
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}/coin)
