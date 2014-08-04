cmake_minimum_required(VERSION 2.8)

project(OsiGlpk)

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${Osi_DIR}/src/OsiGlpk)
include_directories(${MY_GLPK_DIR}/include)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Osi/include)
endmacro()

if (NOT COIN_GLPK_DIR STREQUAL "None")
  include_directories(${COIN_GLPK_DIR}/include)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libOsiGlpk SHARED ${Osi_DIR}/src/OsiGlpk/OsiGlpkSolverInterface.cpp)
else ()
  add_library(libOsiGlpk STATIC ${Osi_DIR}/src/OsiGlpk/OsiGlpkSolverInterface.cpp)
endif ()
set_include_directories(libOsiGlpk)

install(TARGETS libOsiGlpk
        DESTINATION lib)

install(FILES ${Osi_DIR}/src/OsiGlpk/OsiGlpkSolverInterface.hpp
        DESTINATION include/coin)
