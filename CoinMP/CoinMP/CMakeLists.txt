cmake_minimum_required(VERSION 2.8)

project(CoinMP)

set(COINMP_VERSION_MAJOR   "1"  CACHE STRING "The CoinMP major version number")
set(COINMP_VERSION_MINOR   "15" CACHE STRING "The CoinMP minor version number")
set(COINMP_VERSION_RELEASE "6"  CACHE STRING "The CoinMP patch version number")
set(COINMP_VERSION "${COINMP_VERSION_MAJOR}.${COINMP_VERSION_MINOR}.${COINMP_VERSION_RELEASE}")
set(COINMP_SVN_REV "${COINMP_VERSION_RELEASE}")

add_definitions(-DCOINMP_BUILD)

if (CMAKE_COMPILER_IS_GNUCXX)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pedantic-errors -Wparentheses -Wreturn-type -Wcast-qual -Wall -Wpointer-arith -Wwrite-strings -Wconversion -Wno-unknown-pragmas -Wno-long-long")
endif ()

configure_file(${CMAKE_SOURCE_DIR}/CoinMP/include/config.h.in        ${CMAKE_BINARY_DIR}/CoinMP/include/config.h)
configure_file(${CMAKE_SOURCE_DIR}/CoinMP/include/config_coinmp.h.in ${CMAKE_BINARY_DIR}/CoinMP/include/config_coinmp.h)

set(CoinMP_SRC_LIST ${CoinMP_DIR}/src/CoinMP.cpp
                    ${CoinMP_DIR}/src/CoinProblem.c
		    ${CoinMP_DIR}/src/CoinResult.c
		    ${CoinMP_DIR}/src/CoinSolver.c
		    ${CoinMP_DIR}/src/CoinOption.c
		    ${CoinMP_DIR}/src/CoinCbc.cpp)

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Clp_DIR}/src)
include_directories(${Clp_DIR}/src/OsiClp)
include_directories(${Cbc_DIR}/src)
include_directories(${Cgl_DIR}/src)
include_directories(${Cgl_DIR}/src/CglAllDifferent)
include_directories(${Cgl_DIR}/src/CglClique)
include_directories(${Cgl_DIR}/src/CglDuplicateRow)
include_directories(${Cgl_DIR}/src/CglFlowCover)
include_directories(${Cgl_DIR}/src/CglGomory)
include_directories(${Cgl_DIR}/src/CglGMI)
include_directories(${Cgl_DIR}/src/CglKnapsackCover)
include_directories(${Cgl_DIR}/src/CglLandP)
include_directories(${Cgl_DIR}/src/CglLiftAndProject)
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
include_directories(${Cgl_DIR}/src/CglProbing)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${CoinMP_DIR}/src)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinMP/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Clp/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Cbc/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
endmacro()

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libCoinMP SHARED ${CoinMP_SRC_LIST})
else ()
  add_library(libCoinMP STATIC ${CoinMP_SRC_LIST})
endif ()
if (NOT WIN32)
  set_target_properties(libCoinMP PROPERTIES PREFIX "")
endif ()

set_include_directories(libCoinMP)

install(TARGETS libCoinMP
        DESTINATION lib)

install(FILES ${CoinMP_SRC}/src/CoinMP.h 
        DESTINATION include/coin)

install(FILES ${CMAKE_BINARY_DIR}/CoinMP/include/config_clp.h
        DESTINATION include/coin
        RENAME CoinMPConfig.h)
