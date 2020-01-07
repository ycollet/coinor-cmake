#
# pkg-config file generation
#

set(prefix                "${CMAKE_INSTALL_PREFIX}")
set(exec_prefix           "\${prefix}")
set(libdir                "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}")
set(includedir            "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}")
set(PACKAGE_VERSION       "${OSI_VERSION}")
set(OSIGLPKLIB_PCLIBS     "-lglpk")
set(OSIGLPKLIB_PCREQUIRES "glpk")

configure_file(${Osi_DIR}/src/OsiGlpk/osi-glpk.pc.in ${CMAKE_BINARY_DIR}/Osi/osi-glpk.pc @ONLY)

set(libdir         "${Osi_DIR}")
set(abs_source_dir "${CMAKE_BINARY_DIR}/bin")

configure_file(${Osi_DIR}/src/OsiGlpk/osi-glpk-uninstalled.pc.in ${CMAKE_BINARY_DIR}/Osi/osi-glpk-uninstalled.pc @ONLY)

install(FILES ${CMAKE_BINARY_DIR}/Osi/osi-glpk.pc
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}/pkg-config/)

#
# Build
#

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${Osi_DIR}/src/OsiGlpk)
include_directories(${MY_GLPK_DIR}/include)

if ((COIN_HAS_GLPK_INCLUDE_PATH STREQUAL "None") AND (COIN_HAS_GLPK_LIBRARY_PATH STREQUAL "None"))
  find_package(Glpk)
else ()
  set(GLPK_VERSION "4.52")
endif ()

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Osi/include)
endmacro ()

if (NOT COIN_GLPK_DIR STREQUAL "None")
  include_directories(${COIN_GLPK_DIR}/include)
endif ()

set(OsiGlpk_SRCS ${Osi_DIR}/src/OsiGlpk/OsiGlpkSolverInterface.cpp)
if ("${GLPK_VERSION}" VERSION_GREATER "4.48")
  set(OsiGlpk_SRCS ${OsiGlpk_SRCS}
                   ${CMAKE_CURRENT_SOURCE_DIR}/lpx.c)
endif ()

if (NOT WIN32)
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fPIC")
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libOsiGlpk SHARED ${OsiGlpk_SRCS})
else ()
  add_library(libOsiGlpk STATIC ${OsiGlpk_SRCS})
endif ()
if (COIN_COMPILE_LTO)
  set_target_properties(libOsiGlpk PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libOsiGlpk PROPERTIES PREFIX "")
endif ()
set_include_directories(libOsiGlpk)

install(TARGETS libOsiGlpk
        RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR}
        LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}/static)

install(FILES ${Osi_DIR}/src/OsiGlpk/OsiGlpkSolverInterface.hpp
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}/coin)
