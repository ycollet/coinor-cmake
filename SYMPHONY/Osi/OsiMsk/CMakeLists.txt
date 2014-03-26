cmake_minimum_required(VERSION 2.8)

project(OsiMsk)

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${Osi_DIR}/src/OsiMsk)
include_directories(${MY_MOSEK_DIR}/include)

include_directories(${CMAKE_BINARY_DIR}/Osi/include)
include_directories(${CMAKE_BINARY_DIR}/CoinUtils/include)

if (NOT COIN_MOSEK_DIR STREQUAL "None")
  include_directories(${COIN_MOSEK_DIR}/include)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libOsiMsk SHARED ${Osi_DIR}/src/OsiMsk/OsiMskSolverInterface.cpp)
else ()
  add_library(libOsiMsk STATIC ${Osi_DIR}/src/OsiMsk/OsiMskSolverInterface.cpp)
endif ()

install(TARGETS libOsiMsk
        DESTINATION lib)

install(FILES ${Osi_DIR}/src/OsiMsk/OsiMskSolverInterface.hpp
        DESTINATION include/coin)
