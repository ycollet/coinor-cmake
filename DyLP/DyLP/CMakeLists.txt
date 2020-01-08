get_ac_init_version(${DyLP_DIR}/configure.ac DYLP)

option(DYLP_BUILD_EXAMPLES "Enable the building of examples" OFF)

set(DYLP_VERSION_MAJOR   "${DYLP_MAJOR_VERSION}"  CACHE STRING "The Vol major version number")
set(DYLP_VERSION_MINOR   "${DYLP_MINOR_VERSION}"  CACHE STRING "The Vol minor version number")
set(DYLP_VERSION_RELEASE "${DYLP_PATCH_VERSION}"  CACHE STRING "The Vol patch version number")
set(DYLP_VERSION         "${DYLP_VERSION_STRING}" CACHE STRING "The Vol version")
set(DYLP_SVN_REV         "${DYLP_VERSION_RELEASE}")

set(DYLP_WC_REVISION "0")
if ((EXISTS "${DyLP_DIR}/../.svn") OR (EXISTS "${DyLP_DIR}/../../.svn"))
  find_package(Subversion)
  if (Subversion_FOUND)
    Subversion_WC_INFO(${DyLP_DIR}/.. DYLP)
  endif ()
endif ()

if ((EXISTS "${DyLP_DIR}/../.git") OR (EXISTS "${DyLP_DIR}/../../.git"))
  find_package(Git)
  if (Git_FOUND)
    include(export_git)
    GIT_WC_INFO(${DyLP_DIR}/.. DYLP)
    set(DYLP_WC_REVISION "${DYLP_WC_SVNEQUIV}") # alphanumeric rev not yet managed
  endif ()
endif ()

message(STATUS "Current DYLP revision is ${DYLP_WC_REVISION}")
set(DYLP_SVN_REV "${DYLP_WC_REVISION}" CACHE STRING "The DYLP subversion revision" FORCE)

mark_as_advanced(DYLP_VERSION_MAJOR
                 DYLP_VERSION_MINOR
                 DYLP_VERSION_RELEASE
                 DYLP_VERSION
                 DYLP_SVN_REV)

add_definitions(-DDYLP_BUILD -DODSI_PARANOIA=0)

if (CMAKE_COMPILER_IS_GNUCXX)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pedantic-errors -Wparentheses -Wreturn-type -Wcast-qual -Wall -Wpointer-arith -Wwrite-strings -Wconversion -Wno-unknown-pragmas -Wno-long-long")
endif ()

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/include/config.h.in ${CMAKE_BINARY_DIR}/DyLP/include/config_dylp.h)
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/include/config.h.in ${CMAKE_BINARY_DIR}/DyLP/include/config.h)

#
# pkg-config file generation
#

set(prefix           "${CMAKE_INSTALL_PREFIX}")
set(exec_prefix      "\${prefix}")
set(libdir           "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}")
set(includedir       "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}")
set(DYLPLIB_PCLIBS   "")
set(PACKAGE_VERSION   "${DYLP_VERSION}")

configure_file(${DyLP_DIR}/dylp.pc.in ${CMAKE_BINARY_DIR}/DyLP/dylp.pc @ONLY)

set(libdir         "${DyLP_DIR}")
set(abs_source_dir "${CMAKE_BINARY_DIR}/bin")

configure_file(${DyLP_DIR}/dylp-uninstalled.pc.in ${CMAKE_BINARY_DIR}/DyLP/dylp-uninstalled.pc @ONLY)

install(FILES ${CMAKE_BINARY_DIR}/DyLP/dylp.pc
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}/pkg-config/)

#
# Build
#

set(DyLPSTDLIB_SRC_LIST ${DyLP_DIR}/src/DylpStdLib/dylib_binsrch.c
                        ${DyLP_DIR}/src/DylpStdLib/dylib_bnfrdrio.c
                        ${DyLP_DIR}/src/DylpStdLib/dylib_hash.c
                        ${DyLP_DIR}/src/DylpStdLib/dylib_littab.c
                        ${DyLP_DIR}/src/DylpStdLib/dylib_bnfrdr.c
                        ${DyLP_DIR}/src/DylpStdLib/dylib_errs.c
                        ${DyLP_DIR}/src/DylpStdLib/dylib_io.c
                        ${DyLP_DIR}/src/DylpStdLib/dylib_strrtns.c)

set(DyLP_SRC_LIST ${DyLP_DIR}/src/Dylp/dy_basis.c
                  ${DyLP_DIR}/src/Dylp/dy_dualmultipivot.c
                  ${DyLP_DIR}/src/Dylp/dy_pivreject.c
                  ${DyLP_DIR}/src/Dylp/dy_varmgmt.c
                  ${DyLP_DIR}/src/Dylp/dy_bound.c
                  ${DyLP_DIR}/src/Dylp/dy_dualpivot.c
                  ${DyLP_DIR}/src/Dylp/dy_primal.c
                  ${DyLP_DIR}/src/Dylp/dy_vector_utils.c
                  ${DyLP_DIR}/src/Dylp/dy_cmdint.c
                  ${DyLP_DIR}/src/Dylp/dy_duenna.c
                  ${DyLP_DIR}/src/Dylp/dy_primalmultipivot.c
                  ${DyLP_DIR}/src/Dylp/dy_warmstart.c
                  ${DyLP_DIR}/src/Dylp/dy_coldstart.c
                  ${DyLP_DIR}/src/Dylp/dy_force.c
                  ${DyLP_DIR}/src/Dylp/dy_primalpivot.c
                  ${DyLP_DIR}/src/Dylp/glpinv.c
                  ${DyLP_DIR}/src/Dylp/dy_conmgmt.c
                  ${DyLP_DIR}/src/Dylp/dy_hotstart.c
                  ${DyLP_DIR}/src/Dylp/dy_rays.c
                  ${DyLP_DIR}/src/Dylp/glplib1.c
                  ${DyLP_DIR}/src/Dylp/dy_consys_io.c
                  ${DyLP_DIR}/src/Dylp/dylp.c
                  ${DyLP_DIR}/src/Dylp/dy_scaling.c
                  ${DyLP_DIR}/src/Dylp/glplib2.c
                  ${DyLP_DIR}/src/Dylp/dy_consys_mathutils.c
                  ${DyLP_DIR}/src/Dylp/dylp_io.c
                  ${DyLP_DIR}/src/Dylp/dy_setup.c
                  ${DyLP_DIR}/src/Dylp/glplib3.c
                  ${DyLP_DIR}/src/Dylp/dy_consys_scaling.c
                  ${DyLP_DIR}/src/Dylp/dylp_utils.c
                  ${DyLP_DIR}/src/Dylp/dy_solutions.c
                  ${DyLP_DIR}/src/Dylp/glplib4.c
                  ${DyLP_DIR}/src/Dylp/dy_consys_utils.c
                  ${DyLP_DIR}/src/Dylp/dy_options.c
                  ${DyLP_DIR}/src/Dylp/dy_statistics.c
                  ${DyLP_DIR}/src/Dylp/glpluf.c
                  ${DyLP_DIR}/src/Dylp/dy_dual.c
                  ${DyLP_DIR}/src/Dylp/dy_penalty.c
                  ${DyLP_DIR}/src/Dylp/dy_tableau.c)

if (COIN_ENABLE_COMPAT)
  set(DyLP_SRC_LIST ${DyLP_SRC_LIST}
                    ${CMAKE_CURRENT_SOURCE_DIR}/../cmake/compat.cpp
                    ${CMAKE_CURRENT_SOURCE_DIR}/../cmake/compat.c)
endif ()

include_directories(${BuildTools_DIR}/headers)
include_directories(SYSTEM ${CoinUtils_DIR}/src)
include_directories(${DyLP_DIR}/src/Dylp)
include_directories(${DyLP_DIR}/src/DylpStdLib)
include_directories(${DyLP_DIR}/src/OsiDyLP)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/DyLP/include)
endmacro ()

add_definitions(-DDYLP_BUILD)
if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libDyLP SHARED ${DyLPSTDLIB_SRC_LIST} ${DyLP_SRC_LIST})
else ()
  add_library(libDyLP STATIC ${DyLPSTDLIB_SRC_LIST} ${DyLP_SRC_LIST})
endif ()
if (COIN_COMPILE_LTO)
  set_target_properties(libDyLP PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libDyLP PROPERTIES PREFIX "")
endif ()

if (COIN_HAS_GLPK AND (NOT COIN_HAS_GLPK_LIBRARY_PATH STREQUAL "None"))
  link_directories(${COIN_HAS_GLPK_LIBRARY_PATH})
endif ()
set_include_directories(libDyLP)

if (DYLP_BUILD_EXAMPLES)
  #
  # Build Examples
  #
  macro(add_example Name)
    add_executable(${Name} ${ARGN})
    target_link_libraries(${Name} libOsiDyLP libDyLP libCoinUtils)
    set_include_directories(${Name})
    if (COIN_COMPILE_LTO)
      set_target_properties(${Name} PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
    endif ()
    if (MKL_FOUND)
      target_link_libraries(${Name} ${COIN_MKL_LIBS})
    else ()
      if (COIN_HAS_LAPACK OR COIN_USE_SYSTEM_LAPACK)
        target_link_libraries(${Name} lapack)
      endif ()
      if (COIN_HAS_BLAS OR COIN_USE_BLAS)
        target_link_libraries(${Name} blas)
      endif ()
      if (COIN_ENABLE_DOWNLOAD_CLAPACK)
        target_link_libraries(${Name} f2c)
      endif ()
      if ((COIN_HAS_BLAS OR COIN_HAS_LAPACK) AND (UNIX OR MINGW) AND COIN_USE_SYSTEM_LAPACK)
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
  
  add_example(osi_dylp ${DyLP_DIR}/examples/osi_dylp.c ${DyLP_DIR}/examples/mpsio.c)
  
  add_test(NAME osi_dylp_example_afiro
           COMMAND $<TARGET_FILE:osi_dylp> ${CMAKE_CURRENT_SOURCE_DIR}/../Data/Sample/afiro.mps)
  set_tests_properties(osi_dylp_example_afiro PROPERTIES TIMEOUT 30)
  if (WIN32)
    set_tests_properties(osi_dylp_example_afiro PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/lib\\;${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/bin")
  endif ()
endif () 

install(TARGETS libDyLP 
        RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR}
        LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}/static)

install(FILES ${DyLP_SRC_LIST_Headers} 
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}/coin)

install(FILES ${CMAKE_BINARY_DIR}/DyLP/include/config.h
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}/coin
        RENAME DyLPConfig.h)

install(FILES ${CMAKE_BINARY_DIR}/DyLP/include/config.h
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}/coin)
