get_ac_init_version(${Vol_DIR}/configure.ac VOL)

option(VOL_BUILD_EXAMPLES "Enable the building of examples" OFF)

set(VOL_VERSION_MAJOR   "${VOL_MAJOR_VERSION}"  CACHE STRING "The Vol major version number")
set(VOL_VERSION_MINOR   "${VOL_MINOR_VERSION}"  CACHE STRING "The Vol minor version number")
set(VOL_VERSION_RELEASE "${VOL_PATCH_VERSION}"  CACHE STRING "The Vol patch version number")
set(VOL_VERSION         "${VOL_VERSION_STRING}" CACHE STRING "The Vol version")

set(VOL_WC_REVISION "0")
if ((EXISTS "${Vol_DIR}/../.svn") OR (EXISTS "${Vol_DIR}/../../.svn"))
  find_package(Subversion)
  if (Subversion_FOUND)
    Subversion_WC_INFO(${Vol_DIR}/.. VOL)
  endif ()
endif ()

if ((EXISTS "${Vol_DIR}/../.git") OR (EXISTS "${Vol_DIR}/../../.git"))
  find_package(Git)
  if (Git_FOUND)
    include(export_git)
    GIT_WC_INFO(${Vol_DIR}/.. VOL)
    set(VOL_WC_REVISION "${VOL_WC_SVNEQUIV}") # alphanumeric rev not yet managed
  endif ()
endif ()

message(STATUS "Current VOL revision is ${VOL_WC_REVISION}")
set(VOL_SVN_REV "${VOL_WC_REVISION}" CACHE STRING "The VOL subversion revision" FORCE)

mark_as_advanced(VOL_VERSION_MAJOR
                 VOL_VERSION_MINOR
                 VOL_VERSION_RELEASE
                 VOL_VERSION
                 VOL_SVN_REV)

add_definitions(-DVOL_BUILD)

if (CMAKE_COMPILER_IS_GNUCXX)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pedantic-errors -Wparentheses -Wreturn-type -Wcast-qual -Wall -Wpointer-arith -Wwrite-strings -Wconversion -Wno-unknown-pragmas -Wno-long-long")
endif ()

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/include/config_vol.h.in ${CMAKE_BINARY_DIR}/Vol/include/config_vol.h)

#
# pkg-config file generation
#

set(prefix            "${CMAKE_INSTALL_PREFIX}")
set(exec_prefix       "\${prefix}")
set(libdir            "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}")
set(includedir        "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}")
set(PACKAGE_VERSION   "${OSI_VERSION}")
set(VOLLIB_PCLIBS     "")
set(VOLLIB_PCREQUIRES "coinutils")

configure_file(${Vol_DIR}/vol.pc.in ${CMAKE_BINARY_DIR}/Vol/vol.pc @ONLY)

set(libdir         "${Vol_DIR}")
set(abs_source_dir "${CMAKE_BINARY_DIR}/bin")

configure_file(${Vol_DIR}/vol-uninstalled.pc.in ${CMAKE_BINARY_DIR}/Vol/vol-uninstalled.pc @ONLY)

install(FILES ${CMAKE_BINARY_DIR}/Vol/vol.pc
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}/pkg-config/)

#
# Build
#

set(Vol_SRC_LIST ${Vol_DIR}/src/VolVolume.cpp)

if (COIN_ENABLE_COMPAT)
  set(Vol_SRC_LIST ${Vol_SRC_LIST}
                   ${CMAKE_CURRENT_SOURCE_DIR}/../cmake/compat.cpp
                   ${CMAKE_CURRENT_SOURCE_DIR}/../cmake/compat.c)
endif ()

include_directories(${BuildTools_DIR}/headers)
include_directories(SYSTEM ${CoinUtils_DIR}/src)
include_directories(${Vol_DIR}/src)
include_directories(${Vol_DIR}/src/OsiVol)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Vol/include)
endmacro ()

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libVol SHARED ${Vol_SRC_LIST})
else ()
  add_library(libVol STATIC ${Vol_SRC_LIST})
endif ()
if (COIN_COMPILE_LTO)
  set_target_properties(libVol PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libVol PROPERTIES PREFIX "")
endif ()

if (COIN_HAS_GLPK AND (NOT COIN_HAS_GLPK_LIBRARY_PATH STREQUAL "None"))
  link_directories(${COIN_HAS_GLPK_LIBRARY_PATH})
endif ()
set_include_directories(libVol)

if (VOL_BUILD_EXAMPLES)
  #
  # Build Examples
  #
  macro(add_example Name)
    add_executable(${Name} ${ARGN})
    target_link_libraries(${Name} libVol libCoinUtils)
    set_include_directories(${Name})
    if (COIN_COMPILE_LTO)
      set_target_properties(${Name} PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
    endif ()
    if (MKL_FOUND)
      target_link_libraries(${Name} ${COIN_MKL_LIBS})
    else ()
      if (COIN_HAS_LAPACK OR COIN_USE_LAPACK)
        target_link_libraries(${Name} lapack)
      endif ()
      if (COIN_HAS_BLAS OR COIN_USE_BLAS)
        target_link_libraries(${Name} blas)
      endif ()
      if (COIN_ENABLE_DOWNLOAD_CLAPACK)
        target_link_libraries(${Name} f2c)
      endif ()
      if ((COIN_HAS_BLAS OR COIN_HAS_LAPACK) AND (UNIX OR MINGW) AND NOT COIN_USE_LAPACK)
        target_link_libraries(${Name} gfortran)
      endif ()
    endif ()
    if (COINUTILS_HAS_ZLIB OR COIN_USE_ZLIB)
      target_link_libraries(${Name} ${ZLIB_NAME})
    endif ()
    if (COINUTILS_HAS_BZLIB OR COIN_USE_ZLIB)
      target_link_libraries(${Name} ${BZLIB_NAME})
    endif ()
    if (COIN_HAS_GLPK OR COIN_USE_GLPK)
      target_link_libraries(${Name} glpk)
    endif ()
    if (USE_OPENMP AND UNIX)
      target_link_libraries(${Name} gomp)
    endif ()
  endmacro ()
  
  set(TEST_LIB_PATH "${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/lib")
  set(TEST_BIN_PATH "${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/bin")
  
  add_example(vollp ${Vol_DIR}/examples/VolLp/vollp.cpp)
  
  add_test(NAME vollp_example_afiro
           COMMAND $<TARGET_FILE:vollp> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(vollp_example_afiro PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(vollp_example_afiro PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
  
  add_example(volufl ${Vol_DIR}/examples/VolUfl/ufl.cpp)

  # TODO: Need to gunzip Vol/examples/VolUfl/data.gz
  add_test(NAME volufl_example_par
           COMMAND $<TARGET_FILE:volufl>
           WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/examples/VolUfl)
  
  set_tests_properties(volufl_example_par PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(volufl_example_par PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()

  # TODO: Need to gunzip Vol/examples/Volume-LP/data.mps.gz
  add_example(volume-lp ${Vol_DIR}/examples/Volume-LP/lpc.cpp
                        ${Vol_DIR}/examples/Volume-LP/lp.cpp
                        ${Vol_DIR}/examples/Volume-LP/reader.cpp)

  add_test(NAME volume_lp_example_data
           COMMAND $<TARGET_FILE:volume-lp>
           WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/examples/Volume-LP)
  
  set_tests_properties(volume_lp_example_data PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(volume_lp_example_data PROPERTIES ENVIRONMENT "PATH=${TEST_LIB_DIR}\\;${TEST_BIN_DIR}")
  endif ()
endif () 

install(TARGETS libVol 
        RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR}
        LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}/static)

install(FILES ${Vol_SRC_LIST_Headers} 
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}/coin)

install(FILES ${CMAKE_BINARY_DIR}/Vol/include/config_vol.h
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}/coin
        RENAME VolConfig.h)

install(FILES ${CMAKE_BINARY_DIR}/Vol/include/config_vol.h
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}/coin)
