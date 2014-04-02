cmake_minimum_required(VERSION 2.8)

project(Cgl)

option(CGL_ENABLE_EXAMPLES "Enable the building of examples" OFF)
set(CGL_VERSION_MAJOR   "0"  CACHE STRING "The CGL major version number")
set(CGL_VERSION_MINOR   "58" CACHE STRING "The CGL minor version number")
set(CGL_VERSION_RELEASE "6"  CACHE STRING "The CGL patch version number")
set(CGL_VERSION "${CGL_VERSION_MAJOR}.${CGL_VERSION_MINOR}.${CGL_VERSION_RELEASE}")
set(CGL_SVN_REV "${CGL_VERSION_RELEASE}")

add_definitions(-DCGL_BUILD)

configure_file(${CMAKE_SOURCE_DIR}/Cgl/include/config_cgl.h.in ${CMAKE_BINARY_DIR}/Cgl/include/config_cgl.h)
configure_file(${CMAKE_SOURCE_DIR}/Cgl/include/config.h.in     ${CMAKE_BINARY_DIR}/Cgl/include/config.h)

set(Cgl_SRC_LIST ${Cgl_DIR}/src/CglMixedIntegerRounding/CglMixedIntegerRoundingTest.cpp
                 ${Cgl_DIR}/src/CglMixedIntegerRounding/CglMixedIntegerRounding.cpp
                 ${Cgl_DIR}/src/CglDuplicateRow/CglDuplicateRow.cpp
                 ${Cgl_DIR}/src/CglCutGenerator.cpp
                 ${Cgl_DIR}/src/CglPreProcess/CglPreProcess.cpp
                 ${Cgl_DIR}/src/CglProbing/CglProbing.cpp
                 ${Cgl_DIR}/src/CglProbing/CglProbingTest.cpp
                 ${Cgl_DIR}/src/CglMixedIntegerRounding2/CglMixedIntegerRounding2.cpp
                 ${Cgl_DIR}/src/CglMixedIntegerRounding2/CglMixedIntegerRounding2Test.cpp
                 ${Cgl_DIR}/src/CglLandP/CglLandPUtils.cpp
                 ${Cgl_DIR}/src/CglLandP/CglLandPTest.cpp
                 ${Cgl_DIR}/src/CglLandP/CglLandPTabRow.cpp
                 ${Cgl_DIR}/src/CglLandP/CglLandPSimplex.cpp
                 ${Cgl_DIR}/src/CglLandP/CglLandPValidator.cpp
                 ${Cgl_DIR}/src/CglLandP/CglLandPMessages.cpp
                 ${Cgl_DIR}/src/CglLandP/CglLandP.cpp
                 ${Cgl_DIR}/src/CglOddHole/CglOddHoleTest.cpp
                 ${Cgl_DIR}/src/CglOddHole/CglOddHole.cpp
                 ${Cgl_DIR}/src/CglRedSplit/CglRedSplitParam.cpp
                 ${Cgl_DIR}/src/CglRedSplit/CglRedSplit.cpp
                 ${Cgl_DIR}/src/CglRedSplit/CglRedSplitTest.cpp
                 ${Cgl_DIR}/src/CglAllDifferent/CglAllDifferent.cpp
                 ${Cgl_DIR}/src/CglKnapsackCover/CglKnapsackCoverTest.cpp
                 ${Cgl_DIR}/src/CglKnapsackCover/CglKnapsackCover.cpp
                 ${Cgl_DIR}/src/CglSimpleRounding/CglSimpleRoundingTest.cpp
                 ${Cgl_DIR}/src/CglSimpleRounding/CglSimpleRounding.cpp
                 ${Cgl_DIR}/src/CglZeroHalf/CglZeroHalfTest.cpp
                 ${Cgl_DIR}/src/CglZeroHalf/Cgl012cut.cpp
                 ${Cgl_DIR}/src/CglZeroHalf/CglZeroHalf.cpp
                 ${Cgl_DIR}/src/CglRedSplit2/CglRedSplit2Test.cpp
                 ${Cgl_DIR}/src/CglRedSplit2/CglRedSplit2Param.cpp
                 ${Cgl_DIR}/src/CglRedSplit2/CglRedSplit2.cpp
                 ${Cgl_DIR}/src/CglMessage.cpp
                 ${Cgl_DIR}/src/CglStored.cpp
                 ${Cgl_DIR}/src/CglParam.cpp
                 ${Cgl_DIR}/src/CglResidualCapacity/CglResidualCapacity.cpp
                 ${Cgl_DIR}/src/CglResidualCapacity/CglResidualCapacityTest.cpp
                 ${Cgl_DIR}/src/CglTwomir/CglTwomirTest.cpp
                 ${Cgl_DIR}/src/CglTwomir/CglTwomir.cpp
                 ${Cgl_DIR}/src/CglFlowCover/CglFlowCoverTest.cpp
                 ${Cgl_DIR}/src/CglFlowCover/CglFlowCover.cpp
                 ${Cgl_DIR}/src/CglClique/CglCliqueHelper.cpp
                 ${Cgl_DIR}/src/CglClique/CglCliqueTest.cpp
                 ${Cgl_DIR}/src/CglClique/CglClique.cpp
                 ${Cgl_DIR}/src/CglTreeInfo.cpp
                 ${Cgl_DIR}/src/CglLiftAndProject/CglLiftAndProject.cpp
                 ${Cgl_DIR}/src/CglGomory/CglGomoryTest.cpp
                 ${Cgl_DIR}/src/CglGomory/CglGomory.cpp
                 ${Cgl_DIR}/src/CglGMI/CglGMI.cpp
                 ${Cgl_DIR}/src/CglGMI/CglGMIParam.cpp)

set(Cgl_SRC_LIST_Headers ${Cgl_DIR}/src/CglMixedIntegerRounding/CglMixedIntegerRounding.hpp
                         ${Cgl_DIR}/src/CglDuplicateRow/CglDuplicateRow.hpp
                         ${Cgl_DIR}/src/CglStored.hpp
                         ${Cgl_DIR}/src/CglPreProcess/CglPreProcess.hpp
                         ${Cgl_DIR}/src/CglProbing/CglProbing.hpp
                         ${Cgl_DIR}/src/CglMixedIntegerRounding2/CglMixedIntegerRounding2.hpp
                         ${Cgl_DIR}/src/CglLandP/CglLandP.hpp
                         ${Cgl_DIR}/src/CglLandP/CglLandPUtils.hpp
                         ${Cgl_DIR}/src/CglLandP/CglLandPValidator.hpp
                         ${Cgl_DIR}/src/CglLandP/CglLandPTabRow.hpp
                         ${Cgl_DIR}/src/CglLandP/CglLandPMessages.hpp
                         ${Cgl_DIR}/src/CglLandP/CglLandPSimplex.hpp
                         ${Cgl_DIR}/src/CglOddHole/CglOddHole.hpp
                         ${Cgl_DIR}/src/CglRedSplit/CglRedSplitParam.hpp
                         ${Cgl_DIR}/src/CglRedSplit/CglRedSplit.hpp
                         ${Cgl_DIR}/src/CglAllDifferent/CglAllDifferent.hpp
                         ${Cgl_DIR}/src/CglKnapsackCover/CglKnapsackCover.hpp
                         ${Cgl_DIR}/src/CglSimpleRounding/CglSimpleRounding.hpp
                         ${Cgl_DIR}/src/CglMessage.hpp
                         ${Cgl_DIR}/src/CglZeroHalf/CglZeroHalf.hpp
                         ${Cgl_DIR}/src/CglZeroHalf/Cgl012cut.hpp
                         ${Cgl_DIR}/src/CglRedSplit2/CglRedSplit2Param.hpp
                         ${Cgl_DIR}/src/CglRedSplit2/CglRedSplit2.hpp
                         ${Cgl_DIR}/src/CglCutGenerator.hpp
                         ${Cgl_DIR}/src/CglResidualCapacity/CglResidualCapacity.hpp
                         ${Cgl_DIR}/src/CglTwomir/CglTwomir.hpp
                         ${Cgl_DIR}/src/CglFlowCover/CglFlowCover.hpp
                         ${Cgl_DIR}/src/CglClique/CglClique.hpp
                         ${Cgl_DIR}/src/CglLiftAndProject/CglLiftAndProject.hpp
                         ${Cgl_DIR}/src/CglGomory/CglGomory.hpp
                         ${Cgl_DIR}/src/CglGMI/CglGMIParam.hpp
                         ${Cgl_DIR}/src/CglGMI/CglGMI.hpp
                         ${Cgl_DIR}/src/CglParam.hpp
                         ${Cgl_DIR}/src/CglTreeInfo.hpp)

include_directories(${Cgl_DIR}/src)
include_directories(${Cgl_DIR}/src/CglClique)
include_directories(${Cgl_DIR}/src/CglDuplicateRow)
include_directories(${Cgl_DIR}/src/CglFlowCover)
include_directories(${Cgl_DIR}/src/CglGomory)
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
include_directories(${Cgl_DIR}/src/CglSimpleRounding)
include_directories(${Cgl_DIR}/src/CglTwomir)
include_directories(${Cgl_DIR}/src/CglZeroHalf)

include_directories(${CoinUtils_DIR}/src)
include_directories(${Clp_DIR}/src)
include_directories(${Clp_DIR}/src/OsiClp)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)

include_directories(${CMAKE_BINARY_DIR}/Cgl/include)
include_directories(${CMAKE_BINARY_DIR}/CoinUtils/include)
include_directories(${CMAKE_BINARY_DIR}/Clp/include)

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libCgl SHARED ${Cgl_SRC_LIST})
else ()
  add_library(libCgl STATIC ${Cgl_SRC_LIST})
endif ()

if (CGL_ENABLE_EXAMPLES)
  add_executable(cgl1 ${Cgl_DIR}/examples/cgl1.cpp)
  target_link_libraries(cgl1 libCgl)
  
  add_executable(cgl_data_test ${Cgl_DIR}/examples/cgl_data_test.cpp)
  target_link_libraries(cgl_data_test libCgl)
endif ()

add_executable(unitTest ${Cgl_DIR}/test/unitTest.cpp)
target_link_libraries(unitTest libCgl)

install(TARGETS libCgl 
        DESTINATION lib)

install(FILES ${Cgl_SRC_LIST_Headers} 
        DESTINATION include/coin)

install(FILES ${CMAKE_BINARY_DIR}/Cgl/include/config_cgl.h
        DESTINATION include/coin
        RENAME CglConfig.h)
