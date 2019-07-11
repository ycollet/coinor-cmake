get_ac_init_version(${Osi_DIR}/../configure.ac OSI)

set(OSI_VERSION_MAJOR   "${OSI_MAJOR_VERSION}"  CACHE STRING "The OSI major version number")
set(OSI_VERSION_MINOR   "${OSI_MINOR_VERSION}"  CACHE STRING "The OSI minor version number")
set(OSI_VERSION_RELEASE "${OSI_PATCH_VERSION}"  CACHE STRING "The OSI patch version number")
set(OSI_VERSION         "${OSI_VERSION_STRING}" CACHE STRING "The OSI version")

set(OSI_WC_REVISION "0")
if (EXISTS "${Osi_DIR}/../.svn")
  find_package(Subversion)
  if (Subversion_FOUND)
    Subversion_WC_INFO(${Osi_DIR} OSI)
  endif ()
endif ()

if (EXISTS "${Osi_DIR}/../.git")
  find_package(Git)
  if (Git_FOUND)
    include(export_git)
    GIT_WC_INFO(${Osi_DIR} OSI)
    set(OSI_WC_REVISION "${OSI_WC_SVNEQUIV}") # alphanumeric rev not yet managed
  endif ()
endif ()

message(STATUS "Current OSI revision is ${OSI_WC_REVISION}")
set(OSI_SVN_REV "${OSI_WC_REVISION}" CACHE STRING "The OSI subversion revision" PARENT_SCOPE)

mark_as_advanced(OSI_VERSION_MAJOR
                 OSI_VERSION_MINOR
                 OSI_VERSION_RELEASE
                 OSI_VERSION
                 OSI_SVN_REV)

add_definitions(-DOSI_BUILD)

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/include/config_osi.h.in ${CMAKE_BINARY_DIR}/Osi/include/config_osi.h)
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/include/config.h.in     ${CMAKE_BINARY_DIR}/Osi/include/config.h)

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
                 ${Osi_DIR}/src/Osi/OsiSolverInterface.cpp)

set(OsiCommonTests_SRC_LIST ${Osi_DIR}/src/OsiCommonTest/OsiUnitTestUtils.cpp
                            ${Osi_DIR}/src/OsiCommonTest/OsiColCutTest.cpp
                            ${Osi_DIR}/src/OsiCommonTest/OsiCutsTest.cpp
                            ${Osi_DIR}/src/OsiCommonTest/OsiNetlibTest.cpp
                            ${Osi_DIR}/src/OsiCommonTest/OsiRowCutDebuggerTest.cpp
                            ${Osi_DIR}/src/OsiCommonTest/OsiRowCutTest.cpp
                            ${Osi_DIR}/src/OsiCommonTest/OsiSimplexAPITest.cpp
                            ${Osi_DIR}/src/OsiCommonTest/OsiSolverInterfaceTest.cpp)

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

include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${CoinUtils_DIR}/src)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Osi/include)
endmacro ()

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libOsi SHARED ${Osi_SRC_LIST})
  add_library(libOsiCommonTests SHARED ${OsiCommonTests_SRC_LIST})
else ()
  add_library(libOsi STATIC ${Osi_SRC_LIST})
  add_library(libOsiCommonTests STATIC ${OsiCommonTests_SRC_LIST})
endif ()
if (COIN_COMPILE_LTO)
  set_target_properties(libOsi PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
  set_target_properties(libOsiCommonTests PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libOsi PROPERTIES PREFIX "")
  set_target_properties(libOsiCommonTests PROPERTIES PREFIX "")
endif ()
set_include_directories(libOsi)
set_include_directories(libOsiCommonTests)

install(TARGETS libOsi libOsiCommonTests 
        DESTINATION lib)

install(FILES ${Osi_SRC_LIST_Headers} 
        DESTINATION include/coin)

install(FILES ${CMAKE_BINARY_DIR}/Osi/include/config_osi.h
        DESTINATION include/coin
        RENAME OsiConfig.h)

install(FILES ${CMAKE_BINARY_DIR}/Osi/include/config_osi.h
        DESTINATION include/coin)
