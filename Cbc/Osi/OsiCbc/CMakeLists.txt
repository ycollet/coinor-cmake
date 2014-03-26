cmake_minimum_required(VERSION 2.8)

project(OsiCbc)

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Cbc_DIR}/src)
include_directories(${Clp_DIR}/src)
include_directories(${Clp_DIR}/src/OsiClp)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)

include_directories(${CMAKE_BINARY_DIR}/Osi/include)
include_directories(${CMAKE_BINARY_DIR}/Cbc/include)
include_directories(${CMAKE_BINARY_DIR}/Clp/include)
include_directories(${CMAKE_BINARY_DIR}/CoinUtils/include)

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

add_library(libOsiCbc STATIC ${Cbc_DIR}/src/OsiCbc/OsiCbcSolverInterface.cpp)

install(TARGETS libOsiCbc 
        DESTINATION lib)

install(FILES ${Cbc_DIR}/src/OsiCbc/OsiCbcSolverInterface.hpp
        DESTINATION include/coin)
