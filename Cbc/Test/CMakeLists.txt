cmake_minimum_required(VERSION 2.8)

project(Test)

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Clp_DIR}/src)
include_directories(${Clp_DIR}/src/OsiClp)
include_directories(${Cbc_DIR}/src)
include_directories(${Cbc_DIR}/src/OsiCbc)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${Osi_DIR}/src/OsiXpr)

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

add_executable(test main.cpp)
target_link_libraries(test libOsiCbc libCbc libOsiClp libClp libOsi libCoinUtils libCgl)

if (USE_XPRESS)
  target_link_libraries(test libOsiXpr ${MY_XPRESS_DIR}/lib/xprs.lib)
endif ()
