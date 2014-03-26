cmake_minimum_required(VERSION 2.8)

project(OsiSpx)

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${Osi_DIR}/src/OsiSpx)
include_directories(${MY_SOPLEX_DIR}/include)

include_directories(${CMAKE_BINARY_DIR}/Osi/include)
include_directories(${CMAKE_BINARY_DIR}/CoinUtils/include)

if (NOT COIN_SOPLEX_DIR STREQUAL "None")
  include_directories(${COIN_SOPLEX_DIR}/include)
endif ()

add_library(libOsiSpx STATIC ${Osi_DIR}/src/OsiSpx/OsiSpxSolverInterface.cpp)

install(TARGETS libOsiSpx
        DESTINATION lib)

install(FILES ${Osi_DIR}/src/OsiSpx/OsiSpxSolverInterface.hpp
        DESTINATION include/coin)
