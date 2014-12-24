cmake_minimum_required(VERSION 2.8)

project(Osi)

set(OSI_VERSION_MAJOR   "0"   CACHE STRING "The OSI major version number")
set(OSI_VERSION_MINOR   "106" CACHE STRING "The OSI minor version number")
set(OSI_VERSION_RELEASE "6"   CACHE STRING "The OSI patch version number")
set(OSI_VERSION "${OSI_VERSION_MAJOR}.${OSI_VERSION_MINOR}.${OSI_VERSION_RELEASE}")
set(OSI_SVN_REV "${OSI_VERSION_RELEASE}")

add_definitions(-DOSI_BUILD)

configure_file(${CMAKE_SOURCE_DIR}/Osi/Osi/include/config_osi.h.in ${CMAKE_BINARY_DIR}/Osi/include/config_osi.h)
configure_file(${CMAKE_SOURCE_DIR}/Osi/Osi/include/config.h.in     ${CMAKE_BINARY_DIR}/Osi/include/config.h)

set(Osi_SRC_LIST ${Osi_DIR}/src/Osi/OsiAuxInfo.cpp
                 ${Osi_DIR}/src/Osi/OsiBranchingObject.cpp
                 ${Osi_DIR}/src/Osi/OsiChooseVariable.cpp
                 ${Osi_DIR}/src/Osi/OsiColCut.cpp
                 ${Osi_DIR}/src/Osi/OsiCut.cpp
                 ${Osi_DIR}/src/Osi/OsiCuts.cpp
                 ${Osi_DIR}/src/Osi/OsiNames.cpp
                 ${Osi_DIR}/src/Osi/OsiPresolve.cpp
                 ${Osi_DIR}/src/Osi/OsiRowCut.cpp
                 ${Osi_DIR}/src/Osi/OsiRowCutDebugger.cpp
                 ${Osi_DIR}/src/Osi/OsiSolverBranch.cpp
                 ${Osi_DIR}/src/Osi/OsiSolverInterface.cpp
	         ${Osi_DIR}/src/OsiCommonTest/OsiUnitTestUtils.cpp)

set(Osi_SRC_LIST_Headers ${Osi_DIR}/src/Osi/OsiAuxInfo.hpp
                         ${Osi_DIR}/src/Osi/OsiBranchingObject.hpp
                         ${Osi_DIR}/src/Osi/OsiChooseVariable.hpp
                         ${Osi_DIR}/src/Osi/OsiColCut.hpp
                         ${Osi_DIR}/src/Osi/OsiCollections.hpp
                         ${Osi_DIR}/src/Osi/OsiCut.hpp
                         ${Osi_DIR}/src/Osi/OsiCuts.hpp
                         ${Osi_DIR}/src/Osi/OsiPresolve.hpp
                         ${Osi_DIR}/src/Osi/OsiRowCut.hpp
                         ${Osi_DIR}/src/Osi/OsiRowCutDebugger.hpp
                         ${Osi_DIR}/src/Osi/OsiSolverBranch.hpp
                         ${Osi_DIR}/src/Osi/OsiSolverInterface.hpp
                         ${Osi_DIR}/src/Osi/OsiSolverParameters.hpp)

include_directories(${BuildTools_DIR}/headers)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)

if (USE_COINOR_BIN)
  include_directories(${COINOR_DIR}/include)
  
  add_library(libCoinUtils STATIC IMPORTED)

  if (WIN32)
    set_property(TARGET libCoinUtils PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libCoinUtils.lib)
  else ()
    set_property(TARGET libCoinUtils PROPERTY IMPORTED_LOCATION ${COINOR_DIR}/lib/libCoinUtils.a)
  endif ()
else ()
  include_directories(${CoinUtils_DIR}/src)
endif ()

macro(set_include_directories TARGET)
  if (USE_COINOR_BIN)
    target_include_directories(${TARGET} BEFORE PRIVATE ${COINOR_DIR}/include)
  else ()
    target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
    target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Osi/include)
  endif ()
endmacro()

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libOsi SHARED ${Osi_SRC_LIST})
else ()
  add_library(libOsi STATIC ${Osi_SRC_LIST})
endif ()
if (NOT WIN32)
  set_target_properties(libOsi PROPERTIES PREFIX "")
endif ()
set_include_directories(libOsi)

#${Osi_DIR}/src/OsiCommonTest/OsiColCutTest.cpp
#${Osi_DIR}/src/OsiCommonTest/OsiCutsTest.cpp
#${Osi_DIR}/src/OsiCommonTest/OsiNetlibTest.cpp
#${Osi_DIR}/src/OsiCommonTest/OsiRowCutDebuggerTest.cpp
#${Osi_DIR}/src/OsiCommonTest/OsiRowCutTest.cpp
#${Osi_DIR}/src/OsiCommonTest/OsiSimplexAPITest.cpp
#${Osi_DIR}/src/OsiCommonTest/OsiSolverInterfaceTest.cpp

install(TARGETS libOsi 
        DESTINATION lib)

install(FILES ${Osi_SRC_LIST_Headers} 
        DESTINATION include/coin)

install(FILES ${CMAKE_BINARY_DIR}/Osi/include/config_osi.h
        DESTINATION include/coin
        RENAME OsiConfig.h)
