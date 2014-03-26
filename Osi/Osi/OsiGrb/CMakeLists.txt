cmake_minimum_required(VERSION 2.8)

project(OsiGrb)

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${Osi_DIR}/src/OsiGrb)
include_directories(${MY_GUROBI_DIR}/include)

include_directories(${CMAKE_BINARY_DIR}/Osi/include)
include_directories(${CMAKE_BINARY_DIR}/CoinUtils/include)

if (NOT COIN_GUROBI_DIR STREQUAL "None")
  include_directories(${COIN_GUROBI_DIR}/include)
endif ()


add_library(libOsiGrb STATIC ${Osi_DIR}/src/OsiGrb/OsiGrbSolverInterface.cpp)

install(TARGETS libOsiGrb
        DESTINATION lib)

install(FILES ${Osi_DIR}/src/OsiGrb/OsiGrbSolverInterface.hpp
        DESTINATION include/coin)
