cmake_minimum_required(VERSION 2.8)

project(OsiXpr)

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${Osi_DIR}/src/OsiXpr)
include_directories(${MY_XPRESS_DIR}/include)

include_directories(${CMAKE_BINARY_DIR}/Osi/include)
include_directories(${CMAKE_BINARY_DIR}/CoinUtils/include)

if (NOT COIN_XPRESS_DIR STREQUAL "None")
  include_directories(${COIN_XPRESS_DIR}/include)
endif ()

add_library(libOsiXpr STATIC ${Osi_DIR}/src/OsiXpr/OsiXprSolverInterface.cpp)

install(TARGETS libOsiXpr 
        DESTINATION lib)

install(FILES ${Osi_DIR}/src/OsiXpr/OsiXprSolverInterface.hpp
        DESTINATION include/coin)
