get_ac_init_version(${CMAKE_CURRENT_SOURCE_DIR}/configure.ac IPOPT)

set(IPOPT_VERSION_MAJOR   "${IPOPT_MAJOR_VERSION}"  CACHE STRING "The IpOpt major version number")
set(IPOPT_VERSION_MINOR   "${IPOPT_MINOR_VERSION}"  CACHE STRING "The IpOpt minor version number")
set(IPOPT_VERSION_RELEASE "${IPOPT_PATCH_VERSION}"  CACHE STRING "The IpOpt patch version number")
set(IPOPT_VERSION         "${IPOPT_VERSION_STRING}" CACHE STRING "The IpOpt version")

set(IPOPT_WC_REVISION "0")
if (EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/../.svn")
  find_package(Subversion)
  if (Subversion_FOUND)
    Subversion_WC_INFO(${CMAKE_CURRENT_SOURCE_DIR}/.. IPOPT)
  endif ()
endif ()

if (EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/../.git")
  find_package(Git)
  if (Git_FOUND)
    include(export_git)
    GIT_WC_INFO(${CMAKE_CURRENT_SOURCE_DIR}/.. IPOPT)
    set(IPOPT_WC_REVISION "${IPOPT_WC_SVNEQUIV}") # alphanumeric rev not yet managed
  endif ()
endif ()

message(STATUS "Current IPOPT revision is ${IPOPT_WC_REVISION}")
set(IPOPT_SVN_REV "${IPOPT_WC_REVISION}" CACHE STRING "The IPOPT subversion revision" FORCE)

mark_as_advanced(IPOPT_VERSION_MAJOR
                 IPOPT_VERSION_MINOR
                 IPOPT_VERSION_RELEASE
                 IPOPT_VERSION
                 IPOPT_SVN_REV)

add_definitions(-DIPOPT_BUILD)

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/include/config.h.in       ${CMAKE_BINARY_DIR}/Ipopt/include/config.h)
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/include/config_ipopt.h.in ${CMAKE_BINARY_DIR}/Ipopt/include/config_ipopt.h)

set (IPOPT_SRC_ALGORITHM_LIST ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpAdaptiveMuUpdate.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpAlgBuilder.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpAlgorithmRegOp.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpAugRestoSystemSolver.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpBacktrackingLineSearch.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpDefaultIterateInitializer.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpEquilibrationScaling.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpExactHessianUpdater.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpFilterLSAcceptor.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpFilter.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpGenAugSystemSolver.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpGradientScaling.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpIpoptAlg.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpIpoptCalculatedQuantities.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpIpoptData.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpIteratesVector.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpLeastSquareMults.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpLimMemQuasiNewtonUpdater.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpLoqoMuOracle.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpLowRankAugSystemSolver.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpLowRankSSAugSystemSolver.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpMonotoneMuUpdate.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpNLPBoundsRemover.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpNLPScaling.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpOptErrorConvCheck.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpOrigIpoptNLP.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpOrigIterationOutput.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpPDFullSpaceSolver.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpPDPerturbationHandler.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpPDSearchDirCalc.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpPenaltyLSAcceptor.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpProbingMuOracle.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpQualityFunctionMuOracle.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpRestoConvCheck.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpRestoFilterConvCheck.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpRestoIpoptNLP.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpRestoIterateInitializer.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpRestoIterationOutput.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpRestoMinC_1Nrm.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpRestoPenaltyConvCheck.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpRestoRestoPhase.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpStdAugSystemSolver.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpTimingStatistics.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpUserScaling.cpp
                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/IpWarmStartIterateInitializer.cpp)

set (IPOPT_SRC_ALGORITHM_INEXACT_LIST ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/Inexact/IpInexactAlgBuilder.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/Inexact/IpInexactCq.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/Inexact/IpInexactData.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/Inexact/IpInexactDoglegNormal.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/Inexact/IpInexactLSAcceptor.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/Inexact/IpInexactNewtonNormal.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/Inexact/IpInexactNormalTerminationTester.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/Inexact/IpInexactRegOp.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/Inexact/IpInexactSearchDirCalc.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/Inexact/IpInexactTSymScalingMethod.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/Inexact/IpIterativeSolverTerminationTester.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/Inexact/IpInexactPDSolver.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/Inexact/IpInexactPDTerminationTester.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/Inexact/IpIterativePardisoSolverInterface.cpp)

set (IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpLinearSolversRegOp.cpp
                                            ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpSlackBasedTSymScalingMethod.cpp
                                            ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpTripletToCSRConverter.cpp
                                            ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpTSymDependencyDetector.cpp
                                            ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpTSymLinearSolver.cpp
                                            ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpMa27TSolverInterface.cpp
                                            ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpMa57TSolverInterface.cpp
                                            ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpMa86SolverInterface.cpp
                                            ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpMa97SolverInterface.cpp
                                            ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpMc19TSymScalingMethod.cpp
                                            ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpMa28TDependencyDetector.cpp
                                            ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpMa77SolverInterface.cpp)

if (IPOPT_ENABLE_PARDISOSOLVERLOADER AND CMAKE_Fortran_COMPILER)
  set (IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST ${IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST}
                                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpPardisoSolverInterface.cpp
                                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpMa28Partition.F)
else ()
  if (IPOPT_HAS_PARDISO)
    set (IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST ${IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST}
                                                ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpPardisoSolverInterface.cpp)
  endif ()
  if (COINHSL_HAVE_MA28 AND CMAKE_Fortran_COMPILER)
    set (IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST ${IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST}
                                                ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpMa28Partition.F)
  endif ()
endif ()

if (IPOPT_HAS_WSMP)
  set (IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST ${IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST}
                                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpWsmpSolverInterface.cpp
                                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpIterativeWsmpSolverInterface.cpp)
endif ()

if (IPOPT_HAS_MUMPS)
  set (IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST ${IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST}
                                              ${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers/IpMumpsSolverInterface.cpp)
endif ()

set (IPOPT_SRC_APPS_CUTERINTERFACE_LIST )
set (IPOPT_SRC_APPS_AMPLSOLVER_LIST )

set (IPOPT_SRC_CONTRIB_CGPENALTY_LIST ${CMAKE_CURRENT_SOURCE_DIR}/src/contrib/CGPenalty/IpCGPenaltyCq.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/contrib/CGPenalty/IpCGPenaltyData.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/contrib/CGPenalty/IpCGPenaltyLSAcceptor.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/contrib/CGPenalty/IpCGPenaltyRegOp.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/contrib/CGPenalty/IpCGPerturbationHandler.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/contrib/CGPenalty/IpCGSearchDirCalc.cpp
                                      ${CMAKE_CURRENT_SOURCE_DIR}/src/contrib/CGPenalty/IpPiecewisePenalty.cpp)

set (IPOPT_SRC_CONTRIB_LINEARSOLVERLOADER_LIST ${CMAKE_CURRENT_SOURCE_DIR}/src/contrib/LinearSolverLoader/LibraryHandler.c
                                               ${CMAKE_CURRENT_SOURCE_DIR}/src/contrib/LinearSolverLoader/HSLLoader.c)

if (IPOPT_ENABLE_PARDISOSOLVERLOADER)
  set(IPOPT_SRC_CONTRIB_LINEARSOLVERLOADER_LIST ${IPOPT_SRC_CONTRIB_LINEARSOLVERLOADER_LIST}
                                                ${CMAKE_CURRENT_SOURCE_DIR}/src/contrib/LinearSolverLoader/PardisoLoader.c)
endif ()

set (IPOPT_SRC_COMMON_LIST ${CMAKE_CURRENT_SOURCE_DIR}/src/Common/IpJournalist.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/Common/IpObserver.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/Common/IpOptionsList.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/Common/IpRegOptions.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/Common/IpTaggedObject.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/Common/IpUtils.cpp)

set (IPOPT_SRC_INTERFACES_LIST ${CMAKE_CURRENT_SOURCE_DIR}/src/Interfaces/IpInterfacesRegOp.cpp
                               ${CMAKE_CURRENT_SOURCE_DIR}/src/Interfaces/IpIpoptApplication.cpp
                               ${CMAKE_CURRENT_SOURCE_DIR}/src/Interfaces/IpSolveStatistics.cpp
                               ${CMAKE_CURRENT_SOURCE_DIR}/src/Interfaces/IpStdCInterface.cpp
                               ${CMAKE_CURRENT_SOURCE_DIR}/src/Interfaces/IpStdFInterface.c
                               ${CMAKE_CURRENT_SOURCE_DIR}/src/Interfaces/IpStdInterfaceTNLP.cpp
                               ${CMAKE_CURRENT_SOURCE_DIR}/src/Interfaces/IpTNLPAdapter.cpp
                               ${CMAKE_CURRENT_SOURCE_DIR}/src/Interfaces/IpTNLPReducer.cpp)

set (IPOPT_SRC_LINALG_LIST ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpBlas.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpCompoundMatrix.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpCompoundSymMatrix.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpCompoundVector.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpDenseGenMatrix.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpDenseSymMatrix.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpDenseVector.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpDiagMatrix.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpExpandedMultiVectorMatrix.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpExpansionMatrix.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpIdentityMatrix.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpLapack.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpLowRankUpdateSymMatrix.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpMatrix.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpMultiVectorMatrix.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpScaledMatrix.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpSumMatrix.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpSumSymMatrix.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpSymScaledMatrix.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpTransposeMatrix.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpVector.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpZeroMatrix.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/IpZeroSymMatrix.cpp)

set (IPOPT_SRC_LINALG_TMATRICES ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/TMatrices/IpGenTMatrix.cpp
                                ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/TMatrices/IpSymTMatrix.cpp
                                ${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/TMatrices/IpTripletHelper.cpp)

set (IPOPT_SRC_LIST ${IPOPT_SRC_ALGORITHM_LIST}
                    ${IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST}
                    ${IPOPT_SRC_APPS_CUTERINTERFACE_LIST}
                    ${IPOPT_SRC_APPS_AMPLSOLVER_LIST}
                    ${IPOPT_SRC_CONTRIB_CGPENALTY_LIST}
                    ${IPOPT_SRC_CONTRIB_LINEARSOLVERLOADER_LIST}
                    ${IPOPT_SRC_COMMON_LIST}
                    ${IPOPT_SRC_INTERFACES_LIST}
                    ${IPOPT_SRC_LINALG_LIST}
                    ${IPOPT_SRC_LINALG_TMATRICES})

if (IPOPT_ENABLE_INEXACT)
  set(IPOPT_SRC_LIST ${IPOPT_SRC_LIST}
                     ${IPOPT_SRC_ALGORITHM_INEXACT_LIST})
endif ()

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Ipopt/include)
endmacro ()

if (EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/ThirdParty/HSL)
  include_directories(${CMAKE_CURRENT_SOURCE_DIR}/ThirdParty/HSL)
endif ()

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/LinearSolvers)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/Algorithm/Inexact)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/contrib/CGPenalty)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/contrib/LinearSolverLoader)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/Interfaces)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/Common)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/Apps/AmplSolver)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src/LinAlg/TMatrices)

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

if (IPOPT_HAS_PARDISO)
  add_definition(-DHAVE_PARDISO=1)
  if (IPOPT_HAS_PARDISO_MKL)
    add_definition(-DHAVE_PARDISO_MKL=1)
  endif ()
  if (IPOPT_HAS_PARDISO_OLDINTERFACE)
    add_definition(-DHAVE_PARDISO_OLDINTERFACE=1)
  endif ()
  if (IPOPT_HAS_PARDISO_PARALLEL)
    add_definition(-DHAVE_PARDISO_PARALLEL=1)
  endif ()
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libIpopt SHARED ${IPOPT_SRC_LIST})
else ()
  add_library(libIpopt STATIC ${IPOPT_SRC_LIST})
endif ()
if (COIN_COMPILE_LTO)
  set_target_properties(libIpopt PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32)
  set_target_properties(libIpopt PROPERTIES PREFIX "")
endif ()
set_include_directories(libIpopt)

if (IPOPT_HAS_AMPL)
  set (IPOPT_AMPL_SRC_LIST ${CMAKE_CURRENT_SOURCE_DIR}/src/Apps/AmplSolver/ampl_ipopt.cpp
                           ${CMAKE_CURRENT_SOURCE_DIR}/src/Apps/AmplSolver/AmplTNLP.cpp)
  
  add_executable(ipopt ${IPOPT_AMPL_SRC_LIST})
  
  target_link_libraries(ipopt libIpopt)
  if (COIN_HAS_MUMPS)
    target_link_libraries(ipopt dmumps mumps_common seq pthread)
  endif ()
  if (MKL_FOUND)
    target_link_libraries(ipopt ${COIN_MKL_LIBS})
  else ()
    if (COIN_HAS_LAPACK OR COIN_ENABLE_DOWNLOAD_LAPACK)
      target_link_libraries(ipopt lapack)
    endif ()
    if (COIN_HAS_BLAS OR COIN_ENABLE_DOWNLOAD_BLAS)
      target_link_libraries(ipopt blas)
    endif ()
    if (COIN_ENABLE_DOWNLOAD_CLAPACK)
      target_link_libraries(ipopt f2c)
    endif ()
  endif ()
  if (COIN_ENABLE_COMPILE_HSL OR COIN_ENABLE_DOWNLOAD_LAPACK OR COIN_ENABLE_DOWNLOAD_CLAPACK OR COIN_ENABLE_DOWNLOAD_MUMPS OR COIN_HAS_MUMPS)
    target_link_libraries(ipopt gfortran)
  endif ()
  if (COIN_ENABLE_COMPILE_HSL)
    target_link_libraries(ipopt hsl)
  endif ()
  if ((IPOPT_ENABLE_LINEARSOLVERLOADER OR IPOPT_ENABLE_PARDISOSOLVERLOADER) AND UNIX)
    target_link_libraries(ipopt dl)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_ASL)
    target_link_libraries(ipopt amplsolver)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_METIS)
    target_link_libraries(ipopt metis)
  endif ()
  if (IPOPT_HAS_WSMP)
    target_link_libraries(ipopt wsmp)
  endif ()
  if (IPOPT_HAS_PARDISO)
    target_link_libraries(ipopt wsmp)
    if (WIN32)
      if (CMAKE_SIZEOF_VOID_P EQUAL 4)
	target_link_libraries(ipopt mkl_intel_c.lib mkl_sequential.lib mkl_core.lib)
      else ()
	target_link_libraries(ipopt mkl_intel_lp64.lib mkl_sequential.lib mkl_core.lib)
      endif ()
    else ()
      set(MKL_TMP_LIB "-Wl,--start-group -lmkl_core")
      if (CMAKE_SIZEOF_VOID_P EQUAL 4)
	set(MKL_TMP_LIB "${MKL_TMP_LIB} -lmkl_intel")
      else ()
	set(MKL_TMP_LIB "${MKL_TMP_LIB} -lmkl_intel_lp64")
      endif ()
      if (IPOPT_HAS_PARDISO_PARALLEL)
	set(MKL_TMP_LIB "${MKL_TMP_LIB} -lmkl_intel_thread")
      else ()
	set(MKL_TMP_LIB "${MKL_TMP_LIB} -lmkl_sequential")
      endif ()
      set(MKL_TMP_LIB "${MKL_TMP_LIB} -Wl,--end-group")
      
      target_link_libraries(ipopt ${MKL_TMP_LIB})
    endif ()
  endif ()
  
  set_include_directories(ipopt)
  
  install(TARGETS ipopt
          DESTINATION bin)
  
  include(${CMAKE_SOURCE_DIR}/ThirdParty/IpoptTests.cmake)
endif ()

if (IPOPT_BUILD_EXAMPLES)
  set(ScalableProblems_SRCS ${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems/LuksanVlcek1.cpp
                            ${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems/LuksanVlcek2.cpp
                            ${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems/LuksanVlcek3.cpp
                            ${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems/LuksanVlcek4.cpp
                            ${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems/LuksanVlcek5.cpp
                            ${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems/LuksanVlcek6.cpp
                            ${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems/LuksanVlcek7.cpp
                            ${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems/MittelmannBndryCntrlDiri3Dsin.cpp
                            ${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems/MittelmannBndryCntrlDiri3D_27.cpp
                            ${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems/MittelmannBndryCntrlDiri3D.cpp
                            ${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems/MittelmannDistCntrlDiri.cpp
                            ${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems/MittelmannBndryCntrlDiri.cpp
                            ${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems/MittelmannDistCntrlNeumA.cpp
                            ${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems/MittelmannDistCntrlNeumB.cpp
                            ${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems/MittelmannBndryCntrlNeum.cpp
                            ${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems/RegisteredTNLP.cpp
                            ${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems/solve_problem.cpp)
    
  add_executable(solve_problem ${ScalableProblems_SRCS})
  target_link_libraries(solve_problem libIpopt)
  if (COIN_COMPILE_LTO)
    set_target_properties(solve_problem PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
  endif ()
  if (COIN_HAS_MUMPS)
    target_link_libraries(solve_problem dmumps mumps_common seq pthread)
  endif ()
  if (MKL_FOUND)
    target_link_libraries(solve_problem ${COIN_MKL_LIBS})
  else ()
    if (COIN_HAS_LAPACK OR COIN_ENABLE_DOWNLOAD_LAPACK)
      target_link_libraries(solve_problem lapack blas)
    endif ()
    if (COIN_ENABLE_DOWNLOAD_CLAPACK)
      target_link_libraries(solve_problem f2c)
    endif ()
  endif ()
  if (COIN_ENABLE_COMPILE_HSL OR COIN_ENABLE_DOWNLOAD_LAPACK OR COIN_ENABLE_DOWNLOAD_CLAPACK OR COIN_HAS_MUMPS)
    target_link_libraries(solve_problem gfortran)
  endif ()
  if (COIN_ENABLE_COMPILE_HSL)
    target_link_libraries(solve_problem hsl)
  endif ()
  if ((IPOPT_ENABLE_LINEARSOLVERLOADER OR IPOPT_ENABLE_PARDISOSOLVERLOADER) AND UNIX)
    target_link_libraries(solve_problem dl)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_METIS)
    target_link_libraries(solve_problem metis)
  endif ()
  include_directories(${CMAKE_CURRENT_SOURCE_DIR}/examples/ScalableProblems)
  set_include_directories(solve_problem)
  
  add_test(NAME ipopt_example_luksan_LukVlE1
           COMMAND $<TARGET_FILE:solve_problem> LukVlE1 10)
  set_tests_properties(ipopt_example_luksan_LukVlE1 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_LukVlE1 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_LukVlE2
           COMMAND $<TARGET_FILE:solve_problem> LukVlE2 14)
  set_tests_properties(ipopt_example_luksan_LukVlE2 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_LukVlE2 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_LukVlE3
           COMMAND $<TARGET_FILE:solve_problem> LukVlE3 10)
  set_tests_properties(ipopt_example_luksan_LukVlE3 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_LukVlE3 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_LukVlE4
           COMMAND $<TARGET_FILE:solve_problem> LukVlE4 10)
  set_tests_properties(ipopt_example_luksan_LukVlE4 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_LukVlE4 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_LukVlE5
           COMMAND $<TARGET_FILE:solve_problem> LukVlE5 10)
  set_tests_properties(ipopt_example_luksan_LukVlE5 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_LukVlE5 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_LukVlE6
           COMMAND $<TARGET_FILE:solve_problem> LukVlE6 10)
  set_tests_properties(ipopt_example_luksan_LukVlE6 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_LukVlE6 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_LukVlE7
           COMMAND $<TARGET_FILE:solve_problem> LukVlE7 4)
  set_tests_properties(ipopt_example_luksan_LukVlE7 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_LukVlE7 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_LukVlI1
           COMMAND $<TARGET_FILE:solve_problem> LukVlI1 10)
  set_tests_properties(ipopt_example_luksan_LukVlI1 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_LukVlI1 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_LukVlI2
           COMMAND $<TARGET_FILE:solve_problem> LukVlI2 14)
  set_tests_properties(ipopt_example_luksan_LukVlI2 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_LukVlI2 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_LukVlI3
           COMMAND $<TARGET_FILE:solve_problem> LukVlI3 10)
  set_tests_properties(ipopt_example_luksan_LukVlI3 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_LukVlI3 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_LukVlI4
           COMMAND $<TARGET_FILE:solve_problem> LukVlI4 10)
  set_tests_properties(ipopt_example_luksan_LukVlI4 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_LukVlI4 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_LukVlI5
           COMMAND $<TARGET_FILE:solve_problem> LukVlI5 10)
  set_tests_properties(ipopt_example_luksan_LukVlI5 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_LukVlI5 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_LukVlI6
           COMMAND $<TARGET_FILE:solve_problem> LukVlI6 10)
  set_tests_properties(ipopt_example_luksan_LukVlI6 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_LukVlI6 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_LukVlI7
           COMMAND $<TARGET_FILE:solve_problem> LukVlI7 4)
  set_tests_properties(ipopt_example_luksan_LukVlI7 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_LukVlI7 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MBndryCntrl1
           COMMAND $<TARGET_FILE:solve_problem> MBndryCntrl1 10)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl1 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl1 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MBndryCntrl2
           COMMAND $<TARGET_FILE:solve_problem> MBndryCntrl2 14)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl2 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl2 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MBndryCntrl3
           COMMAND $<TARGET_FILE:solve_problem> MBndryCntrl3 10)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl3 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl3 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MBndryCntrl4
           COMMAND $<TARGET_FILE:solve_problem> MBndryCntrl4 10)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl4 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl4 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MBndryCntrl5
           COMMAND $<TARGET_FILE:solve_problem> MBndryCntrl5 10)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl5 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl5 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MBndryCntrl6
           COMMAND $<TARGET_FILE:solve_problem> MBndryCntrl6 10)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl6 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl6 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MBndryCntrl7
           COMMAND $<TARGET_FILE:solve_problem> MBndryCntrl7 10)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl7 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl7 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MBndryCntrl8
           COMMAND $<TARGET_FILE:solve_problem> MBndryCntrl8 10)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl8 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl8 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MBndryCntrl_3D
           COMMAND $<TARGET_FILE:solve_problem> MBndryCntrl_3D 10)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl_3D PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl_3D PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MBndryCntrl_3D_27
           COMMAND $<TARGET_FILE:solve_problem> MBndryCntrl_3D_27 10)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl_3D_27 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl_3D_27 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MBndryCntrl_3D_27BT
           COMMAND $<TARGET_FILE:solve_problem> MBndryCntrl_3D_27BT 10)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl_3D_27BT PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl_3D_27BT PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MBndryCntrl_3Dsin
           COMMAND $<TARGET_FILE:solve_problem> MBndryCntrl_3Dsin 10)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl_3Dsin PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MBndryCntrl_3Dsin PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MDistCntrl1
           COMMAND $<TARGET_FILE:solve_problem> MDistCntrl1 10)
  set_tests_properties(ipopt_example_luksan_MDistCntrl1 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MDistCntrl1 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MDistCntrl2
           COMMAND $<TARGET_FILE:solve_problem> MDistCntrl2 10)
  set_tests_properties(ipopt_example_luksan_MDistCntrl2 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MDistCntrl2 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MDistCntrl3
           COMMAND $<TARGET_FILE:solve_problem> MDistCntrl3 10)
  set_tests_properties(ipopt_example_luksan_MDistCntrl3 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MDistCntrl3 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MDistCntrl3a
           COMMAND $<TARGET_FILE:solve_problem> MDistCntrl3a 10)
  set_tests_properties(ipopt_example_luksan_MDistCntrl3a PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MDistCntrl3a PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MDistCntrl4
           COMMAND $<TARGET_FILE:solve_problem> MDistCntrl4 10)
  set_tests_properties(ipopt_example_luksan_MDistCntrl4 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MDistCntrl4 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MDistCntrl4a
           COMMAND $<TARGET_FILE:solve_problem> MDistCntrl4a 10)
  set_tests_properties(ipopt_example_luksan_MDistCntrl4a PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MDistCntrl4a PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MDistCntrl5
           COMMAND $<TARGET_FILE:solve_problem> MDistCntrl5 10)
  set_tests_properties(ipopt_example_luksan_MDistCntrl5 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MDistCntrl5 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MDistCntrl5a
           COMMAND $<TARGET_FILE:solve_problem> MDistCntrl5a 10)
  set_tests_properties(ipopt_example_luksan_MDistCntrl5a PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MDistCntrl5a PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MDistCntrl6
           COMMAND $<TARGET_FILE:solve_problem> MDistCntrl6 10)
  set_tests_properties(ipopt_example_luksan_MDistCntrl6 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MDistCntrl6 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MDistCntrl6a
           COMMAND $<TARGET_FILE:solve_problem> MDistCntrl6a 10)
  set_tests_properties(ipopt_example_luksan_MDistCntrl6a PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MDistCntrl6a PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MPara5_1
           COMMAND $<TARGET_FILE:solve_problem> MPara5_1 10)
  set_tests_properties(ipopt_example_luksan_MPara5_1 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MPara5_1 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MPara5_2_1
           COMMAND $<TARGET_FILE:solve_problem> MPara5_2_1 10)
  set_tests_properties(ipopt_example_luksan_MPara5_2_1 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MPara5_2_1 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MPara5_2_2
           COMMAND $<TARGET_FILE:solve_problem> MPara5_2_2 10)
  set_tests_properties(ipopt_example_luksan_MPara5_2_2 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MPara5_2_2 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  add_test(NAME ipopt_example_luksan_MPara5_2_3
           COMMAND $<TARGET_FILE:solve_problem> MPara5_2_3 10)
  set_tests_properties(ipopt_example_luksan_MPara5_2_3 PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_luksan_MPara5_2_3 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")

  set(Cpp_example_SRCS ${CMAKE_CURRENT_SOURCE_DIR}/examples/Cpp_example/cpp_example.cpp
                       ${CMAKE_CURRENT_SOURCE_DIR}/examples/Cpp_example/MyNLP.cpp)
  
  add_executable(cpp_example ${Cpp_example_SRCS})
  target_link_libraries(cpp_example libIpopt)
  if (COIN_COMPILE_LTO)
    set_target_properties(cpp_example PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
  endif ()
  if (COIN_HAS_MUMPS)
    target_link_libraries(cpp_example dmumps mumps_common seq pthread)
  endif ()
  if (MKL_FOUND)
    target_link_libraries(cpp_example ${COIN_MKL_LIBS})
  else ()
    if (COIN_HAS_LAPACK OR COIN_ENABLE_DOWNLOAD_LAPACK)
      target_link_libraries(cpp_example lapack blas)
    endif ()
    if (COIN_ENABLE_DOWNLOAD_CLAPACK)
      target_link_libraries(cpp_example f2c)
    endif ()
  endif ()
  if (COIN_ENABLE_COMPILE_HSL OR COIN_ENABLE_DOWNLOAD_LAPACK OR COIN_ENABLE_DOWNLOAD_CLAPACK OR COIN_HAS_MUMPS)
    target_link_libraries(cpp_example gfortran)
  endif ()
  if (COIN_ENABLE_COMPILE_HSL)
    target_link_libraries(cpp_example hsl)
  endif ()
  if ((IPOPT_ENABLE_LINEARSOLVERLOADER OR IPOPT_ENABLE_PARDISOSOLVERLOADER) AND UNIX)
    target_link_libraries(cpp_example dl)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_METIS)
    target_link_libraries(cpp_example metis)
  endif ()
  set_include_directories(cpp_example)
  
  add_test(NAME ipopt_example_cpp_example
           COMMAND $<TARGET_FILE:cpp_example>)
  set_tests_properties(ipopt_example_cpp_example PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_cpp_example PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")


  set(hs071_c_SRCS ${CMAKE_CURRENT_SOURCE_DIR}/examples/hs071_c/hs071_c.c)
  
  add_executable(hs071_c ${hs071_c_SRCS})
  target_link_libraries(hs071_c libIpopt)
  if (COIN_COMPILE_LTO)
    set_target_properties(hs071_c PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
  endif ()
  if (COIN_HAS_MUMPS)
    target_link_libraries(hs071_c dmumps mumps_common seq pthread)
  endif ()
  if (MKL_FOUND)
    target_link_libraries(hs071_c ${COIN_MKL_LIBS})
  else ()
    if (COIN_HAS_LAPACK OR COIN_ENABLE_DOWNLOAD_LAPACK)
      target_link_libraries(hs071_c lapack blas)
    endif ()
    if (COIN_ENABLE_DOWNLOAD_CLAPACK)
      target_link_libraries(hs071_c f2c)
    endif ()
  endif ()
  if (COIN_ENABLE_COMPILE_HSL OR COIN_ENABLE_DOWNLOAD_LAPACK OR COIN_ENABLE_DOWNLOAD_CLAPACK OR COIN_HAS_MUMPS)
    target_link_libraries(hs071_c gfortran)
  endif ()
  if (COIN_ENABLE_COMPILE_HSL)
    target_link_libraries(hs071_c hsl)
  endif ()
  if ((IPOPT_ENABLE_LINEARSOLVERLOADER OR IPOPT_ENABLE_PARDISOSOLVERLOADER) AND UNIX)
    target_link_libraries(hs071_c dl)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_METIS)
    target_link_libraries(hs071_c metis)
  endif ()
  set_include_directories(hs071_c)

  add_test(NAME ipopt_example_hs071_c
           COMMAND $<TARGET_FILE:hs071_c>)
  set_tests_properties(ipopt_example_hs071_c PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_hs071_c PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
  
  
  set(hs071_cpp_SRCS ${CMAKE_CURRENT_SOURCE_DIR}/examples/hs071_cpp/hs071_main.cpp
                     ${CMAKE_CURRENT_SOURCE_DIR}/examples/hs071_cpp/hs071_nlp.cpp)
  
  add_executable(hs071_cpp ${hs071_cpp_SRCS})
  target_link_libraries(hs071_cpp libIpopt)
  if (COIN_COMPILE_LTO)
    set_target_properties(hs071_cpp PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
  endif ()
  if (COIN_HAS_MUMPS)
    target_link_libraries(hs071_cpp dmumps mumps_common seq gfortran pthread)
  endif ()
  if (MKL_FOUND)
    target_link_libraries(hs071_cpp ${COIN_MKL_LIBS})
  else ()
    if (COIN_HAS_LAPACK OR COIN_ENABLE_DOWNLOAD_LAPACK)
      target_link_libraries(hs071_cpp lapack blas)
    endif ()
    if (COIN_ENABLE_DOWNLOAD_CLAPACK)
      target_link_libraries(hs071_cpp f2c)
    endif ()
  endif ()
  if (COIN_ENABLE_COMPILE_HSL OR COIN_ENABLE_DOWNLOAD_LAPACK OR COIN_ENABLE_DOWNLOAD_CLAPACK OR COIN_HAS_MUMPS)
    target_link_libraries(hs071_cpp gfortran)
  endif ()
  if (COIN_ENABLE_COMPILE_HSL)
    target_link_libraries(hs071_cpp hsl)
  endif ()
  if ((IPOPT_ENABLE_LINEARSOLVERLOADER OR IPOPT_ENABLE_PARDISOSOLVERLOADER) AND UNIX)
    target_link_libraries(hs071_cpp dl)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_METIS)
    target_link_libraries(hs071_cpp metis)
  endif ()
  set_include_directories(hs071_cpp)
  
  add_test(NAME ipopt_example_hs071_cpp
           COMMAND $<TARGET_FILE:hs071_cpp>)
  set_tests_properties(ipopt_example_hs071_cpp PROPERTIES TIMEOUT 30)
  set_tests_properties(ipopt_example_hs071_cpp PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
  

  if (CMAKE_Fortran_COMPILER)
    if (HAVE_64_BIT)
      set(BIT32FCOMMENT "C")
      set(BIT64FCOMMENT "")
    else ()
      set(BIT32FCOMMENT "")
      set(BIT64FCOMMENT "C")
    endif ()
    
    configure_file(${CMAKE_CURRENT_SOURCE_DIR}/examples/hs071_f/hs071_f.f.in ${CMAKE_BINARY_DIR}/hs071_f.f)
    set(hs071_f_SRCS ${CMAKE_BINARY_DIR}/hs071_f.f)
    
    add_executable(hs071_f ${hs071_f_SRCS})
    target_link_libraries(hs071_f libIpopt)
    if (COIN_COMPILE_LTO)
      set_target_properties(hs071_f PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
    endif ()
    if (COIN_HAS_MUMPS)
      target_link_libraries(hs071_f dmumps mumps_common seq pthread)
    endif ()
    if (MKL_FOUND)
      target_link_libraries(hs071_f ${COIN_MKL_LIBS})
    else ()
      if (COIN_HAS_LAPACK OR COIN_ENABLE_DOWNLOAD_LAPACK)
        target_link_libraries(hs071_f lapack blas)
      endif ()
      if (COIN_ENABLE_DOWNLOAD_CLAPACK)
        target_link_libraries(hs071_f f2c)
      endif ()
    endif ()
    if (COIN_ENABLE_COMPILE_HSL OR COIN_ENABLE_DOWNLOAD_LAPACK OR COIN_ENABLE_DOWNLOAD_CLAPACK OR COIN_HAS_MUMPS)
      target_link_libraries(hs071_f gfortran)
    endif ()
    if (COIN_ENABLE_COMPILE_HSL)
      target_link_libraries(hs071_f hsl)
    endif ()
    if ((IPOPT_ENABLE_LINEARSOLVERLOADER OR IPOPT_ENABLE_PARDISOSOLVERLOADER) AND UNIX)
      target_link_libraries(hs071_f dl)
    endif ()
    if (COIN_ENABLE_DOWNLOAD_METIS)
      target_link_libraries(hs071_f metis)
    endif ()
    set_include_directories(hs071_f)
    add_test(NAME ipopt_example_hs071_f
            COMMAND $<TARGET_FILE:hs071_f>)
    set_tests_properties(ipopt_example_hs071_f PROPERTIES TIMEOUT 30)
    set_tests_properties(ipopt_example_hs071_f PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
  endif ()
endif ()

#
# Install part
#

set(LINALG_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/IpMatrix.hpp
                ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/IpSymMatrix.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/IpExpansionMatrix.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/IpVector.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/IpDenseVector.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/IpCompoundVector.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/IpCompoundMatrix.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/IpCompoundSymMatrix.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/IpSumSymMatrix.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/IpDiagMatrix.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/IpIdentityMatrix.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/IpScaledMatrix.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/IpSymScaledMatrix.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/IpZeroSymMatrix.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/IpBlas.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/IpLapack.hpp)

set(TMATRICES_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/TMatrices/IpGenTMatrix.hpp
	           ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/TMatrices/IpSymTMatrix.hpp
	           ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/LinAlg/TMatrices/IpTripletHelper.hpp)

set(INTERFACES_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Interfaces/IpAlgTypes.hpp
	            ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Interfaces/IpIpoptApplication.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Interfaces/IpNLP.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Interfaces/IpReturnCodes.h
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Interfaces/IpReturnCodes.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Interfaces/IpReturnCodes_inc.h
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Interfaces/IpReturnCodes.inc
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Interfaces/IpSolveStatistics.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Interfaces/IpStdCInterface.h
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Interfaces/IpTNLP.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Interfaces/IpTNLPAdapter.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Interfaces/IpTNLPReducer.hpp)

set(COMMON_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Common/IpCachedResults.hpp
	        ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Common/IpDebug.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Common/IpException.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Common/IpJournalist.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Common/IpObserver.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Common/IpOptionsList.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Common/IpReferenced.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Common/IpRegOptions.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Common/IpSmartPtr.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Common/IpTaggedObject.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Common/IpTimedTask.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Common/IpTypes.hpp
		${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Common/IpUtils.hpp)

set(ALGORITHMS_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpIpoptCalculatedQuantities.hpp
                    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpIpoptData.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpIteratesVector.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpTimingStatistics.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpIpoptNLP.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpOrigIpoptNLP.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpNLPScaling.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpAlgBuilder.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpIpoptAlg.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpAlgStrategy.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpSearchDirCalculator.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpLineSearch.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpMuUpdate.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpConvCheck.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpIterateInitializer.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpIterationOutput.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpHessianUpdater.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpEqMultCalculator.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpAugSystemSolver.hpp
		    ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/IpPDSystemSolver.hpp)

set(LINEARSOLVERS_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpSymLinearSolver.hpp)

set(ALL_HDRS ${LINALG_HDRS}
             ${TMATRICES_HDRS}
	     ${INTERFACES_HDRS}
	     ${COMMON_HDRS}
	     ${ALGORITHMS_HDRS}
	     ${LINEARSOLVERS_HDRS})

install(FILES ${ALL_HDRS} 
        DESTINATION include/coin)

install(TARGETS libIpopt
        RUNTIME DESTINATION bin
        LIBRARY DESTINATION lib
        ARCHIVE DESTINATION lib/static)

install(FILES AUTHORS 
	DESTINATION share/coin/doc/Ipopt/)
