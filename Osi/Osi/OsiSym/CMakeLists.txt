cmake_minimum_required(VERSION 2.8)

project(OsiSym)

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Cbc_DIR}/src)
include_directories(${Clp_DIR}/src)
include_directories(${Clp_DIR}/src/OsiClp)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)

include_directories(${CMAKE_BINARY_DIR}/Osi/include)
include_directories(${CMAKE_BINARY_DIR}/Clp/include)
include_directories(${CMAKE_BINARY_DIR}/Cbc/include)
include_directories(${CMAKE_BINARY_DIR}/Symphony/include)
include_directories(${CMAKE_BINARY_DIR}/CoinUtils/include)

include_directories(${SYMPHONY_DIR}/include)

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

add_library(libOsiSym STATIC ${OsiSym_DIR}/OsiSymSolverInterface.cpp ${OsiSym_DIR}/SymWarmStart.cpp)

install(TARGETS libOsiSym 
        DESTINATION lib)

install(FILES ${OsiSym_DIR}/OsiSymSolverInterface.hpp ${OsiSym_DIR}/OsiSymSolverParameters.hpp ${OsiSym_DIR}/SymWarmStart.hpp
        DESTINATION include/coin)
