cmake_minimum_required(VERSION 2.8)

project(CoinUtils)

set(COINUTILS_VERSION_MAJOR   "2"  CACHE STRING "The COINUTILS major version number")
set(COINUTILS_VERSION_MINOR   "9"  CACHE STRING "The COINUTILS minor version number")
set(COINUTILS_VERSION_RELEASE "11" CACHE STRING "The COINUTILS patch version number")
set(COINUTILS_VERSION "${COINUTILS_VERSION_MAJOR}.${COINUTILS_VERSION_MINOR}.${COINUTILS_VERSION_RELEASE}")
set(COINUTILS_SVN_REV "${COINUTILS_VERSION_RELEASE}")

add_definitions(-DCOINUTILS_BUILD)

configure_file(${CMAKE_SOURCE_DIR}/CoinUtils/include/config_coinutils.h.in ${CMAKE_BINARY_DIR}/CoinUtils/include/config_coinutils.h)
configure_file(${CMAKE_SOURCE_DIR}/CoinUtils/include/config.h.in           ${CMAKE_BINARY_DIR}/CoinUtils/include/config.h)

set(CoinUtils_SRC_LIST ${CoinUtils_DIR}/src/CoinAlloc.cpp
                       ${CoinUtils_DIR}/src/CoinBuild.cpp
                       ${CoinUtils_DIR}/src/CoinDenseVector.cpp
                       ${CoinUtils_DIR}/src/CoinError.cpp
                       ${CoinUtils_DIR}/src/CoinFactorization1.cpp
                       ${CoinUtils_DIR}/src/CoinFactorization2.cpp
                       ${CoinUtils_DIR}/src/CoinFactorization3.cpp
                       ${CoinUtils_DIR}/src/CoinFactorization4.cpp
                       ${CoinUtils_DIR}/src/CoinSimpFactorization.cpp
                       ${CoinUtils_DIR}/src/CoinDenseFactorization.cpp
                       ${CoinUtils_DIR}/src/CoinOslFactorization.cpp
                       ${CoinUtils_DIR}/src/CoinOslFactorization2.cpp
                       ${CoinUtils_DIR}/src/CoinOslFactorization3.cpp
                       ${CoinUtils_DIR}/src/CoinFileIO.cpp
                       ${CoinUtils_DIR}/src/CoinFinite.cpp
                       ${CoinUtils_DIR}/src/CoinIndexedVector.cpp
                       ${CoinUtils_DIR}/src/CoinLpIO.cpp
                       ${CoinUtils_DIR}/src/CoinMessage.cpp
                       ${CoinUtils_DIR}/src/CoinMessageHandler.cpp
                       ${CoinUtils_DIR}/src/CoinModel.cpp
                       ${CoinUtils_DIR}/src/CoinStructuredModel.cpp
                       ${CoinUtils_DIR}/src/CoinModelUseful.cpp
                       ${CoinUtils_DIR}/src/CoinModelUseful2.cpp
                       ${CoinUtils_DIR}/src/CoinMpsIO.cpp
                       ${CoinUtils_DIR}/src/CoinPackedMatrix.cpp
                       ${CoinUtils_DIR}/src/CoinPackedVector.cpp
                       ${CoinUtils_DIR}/src/CoinPackedVectorBase.cpp
                       ${CoinUtils_DIR}/src/CoinParam.cpp
                       ${CoinUtils_DIR}/src/CoinParamUtils.cpp
                       ${CoinUtils_DIR}/src/CoinPostsolveMatrix.cpp
                       ${CoinUtils_DIR}/src/CoinPrePostsolveMatrix.cpp
                       ${CoinUtils_DIR}/src/CoinPresolveDoubleton.cpp
                       ${CoinUtils_DIR}/src/CoinPresolveDual.cpp
                       ${CoinUtils_DIR}/src/CoinPresolveDupcol.cpp
                       ${CoinUtils_DIR}/src/CoinPresolveEmpty.cpp
                       ${CoinUtils_DIR}/src/CoinPresolveFixed.cpp
                       ${CoinUtils_DIR}/src/CoinPresolveForcing.cpp
                       ${CoinUtils_DIR}/src/CoinPresolveHelperFunctions.cpp
                       ${CoinUtils_DIR}/src/CoinPresolveImpliedFree.cpp
                       ${CoinUtils_DIR}/src/CoinPresolveIsolated.cpp
                       ${CoinUtils_DIR}/src/CoinPresolveMatrix.cpp
                       ${CoinUtils_DIR}/src/CoinPresolvePsdebug.cpp
                       ${CoinUtils_DIR}/src/CoinPresolveMonitor.cpp
                       ${CoinUtils_DIR}/src/CoinPresolveSingleton.cpp
                       ${CoinUtils_DIR}/src/CoinPresolveSubst.cpp
                       ${CoinUtils_DIR}/src/CoinPresolveTighten.cpp
                       ${CoinUtils_DIR}/src/CoinPresolveTripleton.cpp
                       ${CoinUtils_DIR}/src/CoinPresolveUseless.cpp
                       ${CoinUtils_DIR}/src/CoinPresolveZeros.cpp
                       ${CoinUtils_DIR}/src/CoinSearchTree.cpp
                       ${CoinUtils_DIR}/src/CoinShallowPackedVector.cpp
                       ${CoinUtils_DIR}/src/CoinSnapshot.cpp
                       ${CoinUtils_DIR}/src/CoinWarmStartBasis.cpp
                       ${CoinUtils_DIR}/src/CoinWarmStartVector.cpp
                       ${CoinUtils_DIR}/src/CoinWarmStartDual.cpp
                       ${CoinUtils_DIR}/src/CoinWarmStartPrimalDual.cpp)

set(Coin_SRC_Headers ${CoinUtils_DIR}/src/Coin_C_defines.h
                     ${CoinUtils_DIR}/src/CoinAlloc.hpp
                     ${CoinUtils_DIR}/src/CoinBuild.hpp
                     ${CoinUtils_DIR}/src/CoinDenseVector.hpp
                     ${CoinUtils_DIR}/src/CoinDistance.hpp
                     ${CoinUtils_DIR}/src/CoinError.hpp
                     ${CoinUtils_DIR}/src/CoinFactorization.hpp
                     ${CoinUtils_DIR}/src/CoinSimpFactorization.hpp
                     ${CoinUtils_DIR}/src/CoinDenseFactorization.hpp
                     ${CoinUtils_DIR}/src/CoinOslFactorization.hpp
                     ${CoinUtils_DIR}/src/CoinFileIO.hpp
                     ${CoinUtils_DIR}/src/CoinFinite.hpp
                     ${CoinUtils_DIR}/src/CoinFloatEqual.hpp
                     ${CoinUtils_DIR}/src/CoinHelperFunctions.hpp
                     ${CoinUtils_DIR}/src/CoinIndexedVector.hpp
                     ${CoinUtils_DIR}/src/CoinLpIO.hpp
                     ${CoinUtils_DIR}/src/CoinMessage.hpp
                     ${CoinUtils_DIR}/src/CoinMessageHandler.hpp
                     ${CoinUtils_DIR}/src/CoinModel.hpp
                     ${CoinUtils_DIR}/src/CoinStructuredModel.hpp
                     ${CoinUtils_DIR}/src/CoinModelUseful.hpp
                     ${CoinUtils_DIR}/src/CoinMpsIO.hpp
                     ${CoinUtils_DIR}/src/CoinPackedMatrix.hpp
                     ${CoinUtils_DIR}/src/CoinPackedVector.hpp
                     ${CoinUtils_DIR}/src/CoinPackedVectorBase.hpp
                     ${CoinUtils_DIR}/src/CoinParam.hpp
                     ${CoinUtils_DIR}/src/CoinPragma.hpp
                     ${CoinUtils_DIR}/src/CoinPresolveDoubleton.hpp
                     ${CoinUtils_DIR}/src/CoinPresolveDual.hpp
                     ${CoinUtils_DIR}/src/CoinPresolveDupcol.hpp
                     ${CoinUtils_DIR}/src/CoinPresolveEmpty.hpp
                     ${CoinUtils_DIR}/src/CoinPresolveFixed.hpp
                     ${CoinUtils_DIR}/src/CoinPresolveForcing.hpp
                     ${CoinUtils_DIR}/src/CoinPresolveImpliedFree.hpp
                     ${CoinUtils_DIR}/src/CoinPresolveIsolated.hpp
                     ${CoinUtils_DIR}/src/CoinPresolveMatrix.hpp
                     ${CoinUtils_DIR}/src/CoinPresolveMonitor.hpp
                     ${CoinUtils_DIR}/src/CoinPresolvePsdebug.hpp
                     ${CoinUtils_DIR}/src/CoinPresolveSingleton.hpp
                     ${CoinUtils_DIR}/src/CoinPresolveSubst.hpp
                     ${CoinUtils_DIR}/src/CoinPresolveTighten.hpp
                     ${CoinUtils_DIR}/src/CoinPresolveTripleton.hpp
                     ${CoinUtils_DIR}/src/CoinPresolveUseless.hpp
                     ${CoinUtils_DIR}/src/CoinPresolveZeros.hpp
                     ${CoinUtils_DIR}/src/CoinSearchTree.hpp
                     ${CoinUtils_DIR}/src/CoinShallowPackedVector.hpp
                     ${CoinUtils_DIR}/src/CoinSignal.hpp
                     ${CoinUtils_DIR}/src/CoinSmartPtr.hpp
                     ${CoinUtils_DIR}/src/CoinSnapshot.hpp
                     ${CoinUtils_DIR}/src/CoinSort.hpp
                     ${CoinUtils_DIR}/src/CoinTime.hpp
                     ${CoinUtils_DIR}/src/CoinTypes.hpp
                     ${CoinUtils_DIR}/src/CoinUtility.hpp
                     ${CoinUtils_DIR}/src/CoinWarmStart.hpp
                     ${CoinUtils_DIR}/src/CoinWarmStartBasis.hpp
                     ${CoinUtils_DIR}/src/CoinWarmStartVector.hpp
                     ${CoinUtils_DIR}/src/CoinWarmStartDual.hpp
                     ${CoinUtils_DIR}/src/CoinWarmStartPrimalDual.hpp)

include_directories(${CoinUtils_DIR}/src)
include_directories(${CMAKE_BINARY_DIR}/CoinUtils/include)

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

add_library(libCoinUtils STATIC ${CoinUtils_SRC_LIST})

#${CoinUtils_DIR}/test/CoinDenseVectorTest.cpp
#${CoinUtils_DIR}/test/CoinErrorTest.cpp
#${CoinUtils_DIR}/test/CoinIndexedVectorTest.cpp
#${CoinUtils_DIR}/test/CoinMessageHandlerTest.cpp
#${CoinUtils_DIR}/test/CoinModelTest.cpp
#${CoinUtils_DIR}/test/CoinMpsIOTest.cpp
#${CoinUtils_DIR}/test/CoinPackedMatrixTest.cpp
#${CoinUtils_DIR}/test/CoinPackedVectorTest.cpp
#${CoinUtils_DIR}/test/CoinShallowPackedVectorTest.cpp
#${CoinUtils_DIR}/test/unitTest.cpp)

install(TARGETS libCoinUtils 
        DESTINATION lib)

install(FILES ${Coin_SRC_Headers} 
        DESTINATION include/coin)

install(FILES ${CMAKE_BINARY_DIR}/CoinUtils/include/config_coinutils.h
        DESTINATION include/coin
        RENAME CoinUtilsConfig.h)
