get_ac_init_version(${CMAKE_SOURCE_DIR}/Ipopt/configure.ac)

set(IPOPT_VERSION_MAJOR   "${MAJOR_VERSION}" CACHE STRING "The IpOpt major version number")
set(IPOPT_VERSION_MINOR   "${MINOR_VERSION}" CACHE STRING "The IpOpt minor version number")
set(IPOPT_VERSION_RELEASE "${PATCH_VERSION}" CACHE STRING "The IpOpt patch version number")
set(IPOPT_VERSION "${IPOPT_VERSION_MAJOR}.${IPOPT_VERSION_MINOR}.${IPOPT_VERSION_RELEASE}")
set(IPOPT_SVN_REV "${IPOPT_VERSION_RELEASE}")

add_definitions(-DIPOPT_BUILD)

configure_file(${CMAKE_SOURCE_DIR}/Ipopt/include/config.h.in       ${CMAKE_BINARY_DIR}/Ipopt/include/config.h)
configure_file(${CMAKE_SOURCE_DIR}/Ipopt/include/config_ipopt.h.in ${CMAKE_BINARY_DIR}/Ipopt/include/config_ipopt.h)

set (IPOPT_SRC_ALGORITHM_LIST ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpAdaptiveMuUpdate.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpAlgBuilder.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpAlgorithmRegOp.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpAugRestoSystemSolver.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpBacktrackingLineSearch.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpDefaultIterateInitializer.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpEquilibrationScaling.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpExactHessianUpdater.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpFilterLSAcceptor.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpFilter.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpGenAugSystemSolver.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpGradientScaling.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpIpoptAlg.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpIpoptCalculatedQuantities.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpIpoptData.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpIteratesVector.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpLeastSquareMults.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpLimMemQuasiNewtonUpdater.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpLoqoMuOracle.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpLowRankAugSystemSolver.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpLowRankSSAugSystemSolver.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpMonotoneMuUpdate.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpNLPBoundsRemover.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpNLPScaling.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpOptErrorConvCheck.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpOrigIpoptNLP.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpOrigIterationOutput.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpPDFullSpaceSolver.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpPDPerturbationHandler.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpPDSearchDirCalc.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpPenaltyLSAcceptor.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpProbingMuOracle.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpQualityFunctionMuOracle.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpRestoConvCheck.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpRestoFilterConvCheck.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpRestoIpoptNLP.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpRestoIterateInitializer.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpRestoIterationOutput.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpRestoMinC_1Nrm.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpRestoPenaltyConvCheck.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpRestoRestoPhase.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpStdAugSystemSolver.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpTimingStatistics.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpUserScaling.cpp
                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/IpWarmStartIterateInitializer.cpp)

set (IPOPT_SRC_ALGORITHM_INEXACT_LIST ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/Inexact/IpInexactAlgBuilder.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/Inexact/IpInexactCq.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/Inexact/IpInexactData.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/Inexact/IpInexactDoglegNormal.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/Inexact/IpInexactLSAcceptor.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/Inexact/IpInexactNewtonNormal.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/Inexact/IpInexactNormalTerminationTester.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/Inexact/IpInexactRegOp.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/Inexact/IpInexactSearchDirCalc.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/Inexact/IpInexactTSymScalingMethod.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/Inexact/IpIterativeSolverTerminationTester.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/Inexact/IpInexactPDSolver.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/Inexact/IpInexactPDTerminationTester.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/Inexact/IpIterativePardisoSolverInterface.cpp)

set (IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpLinearSolversRegOp.cpp
                                            ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpSlackBasedTSymScalingMethod.cpp
                                            ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpTripletToCSRConverter.cpp
                                            ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpTSymDependencyDetector.cpp
                                            ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpTSymLinearSolver.cpp
                                            ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpMa27TSolverInterface.cpp
                                            ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpMa57TSolverInterface.cpp
                                            ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpMa86SolverInterface.cpp
                                            ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpMa97SolverInterface.cpp
                                            ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpMc19TSymScalingMethod.cpp
                                            ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpMa28TDependencyDetector.cpp
                                            ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpMa77SolverInterface.cpp)

if (BUILD_LINEARSOLVERLOADER AND CMAKE_Fortran_COMPILER)
  set (IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST ${IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST}
                                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpPardisoSolverInterface.cpp
                                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpMa28Partition.F)
else ()
  if (IPOPT_HAS_PARDISO)
    set (IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST ${IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST}
                                                ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpPardisoSolverInterface.cpp)
  endif ()
  if (COINHSL_HAVE_MA28 AND CMAKE_Fortran_COMPILER)
    set (IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST ${IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST}
                                                ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpMa28Partition.F)
  endif ()
endif ()

if (IPOPT_HAS_WSMP)
  set (IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST ${IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST}
                                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpWsmpSolverInterface.cpp
                                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpIterativeWsmpSolverInterface.cpp)
endif ()

if (IPOPT_HAS_MUMPS)
  set (IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST ${IPOPT_SRC_ALGORITHM_LINEARSOLVERS_LIST}
                                              ${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers/IpMumpsSolverInterface.cpp)
endif ()

set (IPOPT_SRC_APPS_CUTERINTERFACE_LIST )
set (IPOPT_SRC_APPS_AMPLSOLVER_LIST )

set (IPOPT_SRC_CONTRIB_CGPENALTY_LIST ${CMAKE_SOURCE_DIR}/Ipopt/src/contrib/CGPenalty/IpCGPenaltyCq.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/contrib/CGPenalty/IpCGPenaltyData.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/contrib/CGPenalty/IpCGPenaltyLSAcceptor.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/contrib/CGPenalty/IpCGPenaltyRegOp.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/contrib/CGPenalty/IpCGPerturbationHandler.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/contrib/CGPenalty/IpCGSearchDirCalc.cpp
                                      ${CMAKE_SOURCE_DIR}/Ipopt/src/contrib/CGPenalty/IpPiecewisePenalty.cpp)

set (IPOPT_SRC_CONTRIB_LINEARSOLVERLOADER_LIST ${CMAKE_SOURCE_DIR}/Ipopt/src/contrib/LinearSolverLoader/LibraryHandler.c
                                               ${CMAKE_SOURCE_DIR}/Ipopt/src/contrib/LinearSolverLoader/HSLLoader.c)

if (BUILD_PARDISOLOADER)
  set(IPOPT_SRC_CONTRIB_LINEARSOLVERLOADER_LIST ${IPOPT_SRC_CONTRIB_LINEARSOLVERLOADER_LIST}
                                                ${CMAKE_SOURCE_DIR}/Ipopt/src/contrib/LinearSolverLoader/PardisoLoader.c)
endif ()

set (IPOPT_SRC_COMMON_LIST ${CMAKE_SOURCE_DIR}/Ipopt/src/Common/IpJournalist.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/Common/IpObserver.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/Common/IpOptionsList.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/Common/IpRegOptions.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/Common/IpTaggedObject.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/Common/IpUtils.cpp)

set (IPOPT_SRC_INTERFACES_LIST ${CMAKE_SOURCE_DIR}/Ipopt/src/Interfaces/IpInterfacesRegOp.cpp
                               ${CMAKE_SOURCE_DIR}/Ipopt/src/Interfaces/IpIpoptApplication.cpp
                               ${CMAKE_SOURCE_DIR}/Ipopt/src/Interfaces/IpSolveStatistics.cpp
                               ${CMAKE_SOURCE_DIR}/Ipopt/src/Interfaces/IpStdCInterface.cpp
                               ${CMAKE_SOURCE_DIR}/Ipopt/src/Interfaces/IpStdFInterface.c
                               ${CMAKE_SOURCE_DIR}/Ipopt/src/Interfaces/IpStdInterfaceTNLP.cpp
                               ${CMAKE_SOURCE_DIR}/Ipopt/src/Interfaces/IpTNLPAdapter.cpp
                               ${CMAKE_SOURCE_DIR}/Ipopt/src/Interfaces/IpTNLPReducer.cpp)

set (IPOPT_SRC_LINALG_LIST ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpBlas.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpCompoundMatrix.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpCompoundSymMatrix.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpCompoundVector.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpDenseGenMatrix.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpDenseSymMatrix.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpDenseVector.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpDiagMatrix.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpExpandedMultiVectorMatrix.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpExpansionMatrix.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpIdentityMatrix.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpLapack.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpLowRankUpdateSymMatrix.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpMatrix.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpMultiVectorMatrix.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpScaledMatrix.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpSumMatrix.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpSumSymMatrix.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpSymScaledMatrix.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpTransposeMatrix.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpVector.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpZeroMatrix.cpp
                           ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/IpZeroSymMatrix.cpp)

set (IPOPT_SRC_LINALG_TMATRICES ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/TMatrices/IpGenTMatrix.cpp
                                ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/TMatrices/IpSymTMatrix.cpp
                                ${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/TMatrices/IpTripletHelper.cpp)

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

if (IPOPT_HAS_AMPL)
  set (IPOPT_SRC_LIST ${IPOPT_SRC_LIST}
                      ${CMAKE_SOURCE_DIR}/Ipopt/src/Apps/AmplSolver/ampl_ipopt.cpp
                      ${CMAKE_SOURCE_DIR}/Ipopt/src/Apps/AmplSolver/AmplTNLP.cpp)
endif ()

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Ipopt/include)
endmacro ()

include_directories(${CMAKE_SOURCE_DIR}/ThirdParty/HSL)

include_directories(${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm)
include_directories(${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/LinearSolvers)
include_directories(${CMAKE_SOURCE_DIR}/Ipopt/src/Algorithm/Inexact)
include_directories(${CMAKE_SOURCE_DIR}/Ipopt/src/contrib/CGPenalty)
include_directories(${CMAKE_SOURCE_DIR}/Ipopt/src/contrib/LinearSolverLoader)
include_directories(${CMAKE_SOURCE_DIR}/Ipopt/src/Interfaces)
include_directories(${CMAKE_SOURCE_DIR}/Ipopt/src/Common)
include_directories(${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg)
include_directories(${CMAKE_SOURCE_DIR}/Ipopt/src/Apps/AmplSolver)
include_directories(${CMAKE_SOURCE_DIR}/Ipopt/src/LinAlg/TMatrices)

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libIpopt SHARED ${IPOPT_SRC_LIST})
else ()
  add_library(libIpopt STATIC ${IPOPT_SRC_LIST})
endif ()
if (NOT WIN32)
  set_target_properties(libIpopt PROPERTIES PREFIX "")
endif ()
set_include_directories(libIpopt)

if (IPOPT_BUILD_EXAMPLES)
  set(ScalableProblems_SRCS ${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems/LuksanVlcek1.cpp
                            ${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems/LuksanVlcek2.cpp
                            ${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems/LuksanVlcek3.cpp
                            ${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems/LuksanVlcek4.cpp
                            ${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems/LuksanVlcek5.cpp
                            ${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems/LuksanVlcek6.cpp
                            ${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems/LuksanVlcek7.cpp
                            ${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems/MittelmannBndryCntrlDiri3Dsin.cpp
                            ${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems/MittelmannBndryCntrlDiri3D_27.cpp
                            ${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems/MittelmannBndryCntrlDiri3D.cpp
                            ${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems/MittelmannDistCntrlDiri.cpp
                            ${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems/MittelmannBndryCntrlDiri.cpp
                            ${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems/MittelmannDistCntrlNeumA.cpp
                            ${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems/MittelmannDistCntrlNeumB.cpp
                            ${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems/MittelmannBndryCntrlNeum.cpp
                            ${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems/RegisteredTNLP.cpp
                            ${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems/solve_problem.cpp)
    
  add_executable(solve_problem ${ScalableProblems_SRCS})
  target_link_libraries(solve_problem libIpopt)
  if (COIN_HAS_MUMPS)
    target_link_libraries(solve_problem libdmumps libmumps_common libseq pthread)
  endif ()
  if (COIN_HAS_LAPACK OR COIN_ENABLE_DOWNLOAD_LAPACK)
    target_link_libraries(solve_problem lapack blas)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_CLAPACK)
    target_link_libraries(solve_problem f2c)
  endif ()
  if (COIN_ENABLE_COMPILE_HSL)
    target_link_libraries(solve_problem hsl)
  endif ()
  if (COIN_ENABLE_COMPILE_HSL OR COIN_ENABLE_DOWNLOAD_LAPACK OR COIN_HAS_MUMPS)
    target_link_libraries(solve_problem gfortran)
  endif ()
  if (BUILD_LINEARSOLVERLOADER AND UNIX)
    target_link_libraries(solve_problem dl)
  endif ()
  include_directories(${CMAKE_SOURCE_DIR}/Ipopt/examples/ScalableProblems)
  set_include_directories(solve_problem)

  set(Cpp_example_SRCS ${CMAKE_SOURCE_DIR}/Ipopt/examples/Cpp_example/cpp_example.cpp
                       ${CMAKE_SOURCE_DIR}/Ipopt/examples/Cpp_example/MyNLP.cpp)
  
  add_executable(cpp_example ${Cpp_example_SRCS})
  target_link_libraries(cpp_example libIpopt)
  if (COIN_HAS_MUMPS)
    target_link_libraries(cpp_example libdmumps libmumps_common libseq pthread)
  endif ()
  if (COIN_HAS_LAPACK OR COIN_ENABLE_DOWNLOAD_LAPACK)
    target_link_libraries(cpp_example lapack blas)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_CLAPACK)
    target_link_libraries(cpp_example f2c)
  endif ()
  if (COIN_ENABLE_COMPILE_HSL)
    target_link_libraries(cpp_example hsl)
  endif ()
  if (COIN_ENABLE_COMPILE_HSL OR COIN_ENABLE_DOWNLOAD_LAPACK OR COIN_HAS_MUMPS)
    target_link_libraries(cpp_example gfortran)
  endif ()
  if (BUILD_LINEARSOLVERLOADER AND UNIX)
    target_link_libraries(cpp_example dl)
  endif ()
  set_include_directories(cpp_example)

  set(hs071_c_SRCS ${CMAKE_SOURCE_DIR}/Ipopt/examples/hs071_c/hs071_c.c)
  
  add_executable(hs071_c ${hs071_c_SRCS})
  target_link_libraries(hs071_c libIpopt)
  if (COIN_HAS_MUMPS)
    target_link_libraries(hs071_c libdmumps libmumps_common libseq pthread)
  endif ()
  if (COIN_HAS_LAPACK OR COIN_ENABLE_DOWNLOAD_LAPACK)
    target_link_libraries(hs071_c lapack blas)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_CLAPACK)
    target_link_libraries(hs071_c f2c)
  endif ()
  target_link_libraries(hs071_c lapack blas)
  if (COIN_ENABLE_COMPILE_HSL)
    target_link_libraries(hs071_c hsl)
  endif ()
  if (COIN_ENABLE_COMPILE_HSL OR COIN_ENABLE_DOWNLOAD_LAPACK OR COIN_HAS_MUMPS)
    target_link_libraries(hs071_c gfortran)
  endif ()
  if (BUILD_LINEARSOLVERLOADER AND UNIX)
    target_link_libraries(hs071_c dl)
  endif ()
  set_include_directories(hs071_c)

  set(hs071_cpp_SRCS ${CMAKE_SOURCE_DIR}/Ipopt/examples/hs071_cpp/hs071_main.cpp
                     ${CMAKE_SOURCE_DIR}/Ipopt/examples/hs071_cpp/hs071_nlp.cpp)
  
  add_executable(hs071_cpp ${hs071_cpp_SRCS})
  target_link_libraries(hs071_cpp libIpopt)
  if (COIN_HAS_MUMPS)
    target_link_libraries(hs071_cpp libdmumps libmumps_common libseq gfortran pthread)
  endif ()
  if (COIN_HAS_LAPACK OR COIN_ENABLE_DOWNLOAD_LAPACK)
    target_link_libraries(hs071_cpp lapack blas)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_CLAPACK)
    target_link_libraries(hs071_cpp f2c)
  endif ()
  if (COIN_ENABLE_COMPILE_HSL)
    target_link_libraries(hs071_cpp hsl)
  endif ()
  if (COIN_ENABLE_COMPILE_HSL OR COIN_ENABLE_DOWNLOAD_LAPACK OR COIN_HAS_MUMPS)
    target_link_libraries(hs071_cpp gfortran)
  endif ()
  if (BUILD_LINEARSOLVERLOADER AND UNIX)
    target_link_libraries(hs071_cpp dl)
  endif ()
  set_include_directories(hs071_cpp)

  if (CMAKE_Fortran_COMPILER)
    if (HAVE_64_BIT)
      set(BIT32FCOMMENT "C")
      set(BIT64FCOMMENT "")
    else ()
      set(BIT32FCOMMENT "")
      set(BIT64FCOMMENT "C")
    endif ()
    
    configure_file(${CMAKE_SOURCE_DIR}/Ipopt/examples/hs071_f/hs071_f.f.in ${CMAKE_BINARY_DIR}/hs071_f.f)
    set(hs071_f_SRCS ${CMAKE_BINARY_DIR}/hs071_f.f)
    
    add_executable(hs071_f ${hs071_f_SRCS})
    target_link_libraries(hs071_f libIpopt)
    if (COIN_HAS_MUMPS)
      target_link_libraries(hs071_f libdmumps libmumps_common libseq pthread)
    endif ()
    if (COIN_HAS_LAPACK OR COIN_ENABLE_DOWNLOAD_LAPACK)
      target_link_libraries(hs071_f lapack blas)
    endif ()
    if (COIN_ENABLE_DOWNLOAD_CLAPACK)
      target_link_libraries(hs071_f f2c)
    endif ()
    if (COIN_ENABLE_COMPILE_HSL)
      target_link_libraries(hs071_f hsl)
    endif ()
    if (COIN_ENABLE_COMPILE_HSL OR COIN_ENABLE_DOWNLOAD_LAPACK OR COIN_HAS_MUMPS)
      target_link_libraries(hs071_f gfortran)
    endif ()
    if (BUILD_LINEARSOLVERLOADER AND UNIX)
      target_link_libraries(hs071_f dl)
    endif ()
    set_include_directories(hs071_f)
  endif ()
endif ()

# Tests from solve_problem
#LukVlE1
#LukVlE2
#LukVlE3
#LukVlE4
#LukVlE5
#LukVlE6
#LukVlE7
#LukVlI1
#LukVlI2
#LukVlI3
#LukVlI4
#LukVlI5
#LukVlI6
#LukVlI7
#MBndryCntrl1
#MBndryCntrl2
#MBndryCntrl3
#MBndryCntrl4
#MBndryCntrl5
#MBndryCntrl6
#MBndryCntrl7
#MBndryCntrl8
#MBndryCntrl_3D
#MBndryCntrl_3D_27
#MBndryCntrl_3D_27BT
#MBndryCntrl_3Dsin
#MDistCntrl1
#MDistCntrl2
#MDistCntrl3
#MDistCntrl3a
#MDistCntrl4
#MDistCntrl4a
#MDistCntrl5
#MDistCntrl5a
#MDistCntrl6
#MDistCntrl6a
#MPara5_1
#MPara5_2_1
#MPara5_2_2
#MPara5_2_3
