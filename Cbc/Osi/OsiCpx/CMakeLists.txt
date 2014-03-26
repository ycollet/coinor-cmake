cmake_minimum_required(VERSION 2.8)

project(OsiCpx)

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${Osi_DIR}/src/OsiCpx)
include_directories(${MY_CPLEX_DIR}/include)

include_directories(${CMAKE_BINARY_DIR}/Osi/include)
include_directories(${CMAKE_BINARY_DIR}/CoinUtils/include)

if (NOT COIN_CPLEX_DIR STREQUAL "None")
  include_directories(${COIN_CPLEX_DIR}/include)
endif ()

add_library(libOsiCpx STATIC ${Osi_DIR}/src/OsiCpx/OsiCpxSolverInterface.cpp)

install(TARGETS libOsiCpx
        DESTINATION lib)

install(FILES ${Osi_DIR}/src/OsiCpx/OsiCpxSolverInterface.hpp
        DESTINATION include/coin)
