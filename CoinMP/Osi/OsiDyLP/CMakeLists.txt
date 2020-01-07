#
# pkg-config file generation
#

set(prefix               "${CMAKE_INSTALL_PREFIX}")
set(exec_prefix          "\${prefix}")
set(libdir               "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}")
set(includedir           "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}")
set(PACKAGE_VERSION      "${CLP_VERSION}")

configure_file(${DyLP_DIR}/src/OsiDylp/osi-dylp.pc.in ${CMAKE_BINARY_DIR}/DyLP/osi-dylp.pc @ONLY)

set(libdir         "${DyLP_DIR}")
set(abs_source_dir "${CMAKE_BINARY_DIR}/bin")

configure_file(${DyLP_DIR}/src/OsiDylp/osi-dylp-uninstalled.pc.in ${CMAKE_BINARY_DIR}/DyLP/osi-dylp-uninstalled.pc @ONLY)

install(FILES ${CMAKE_BINARY_DIR}/DyLP/osi-dylp.pc
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}/pkg-config/)

#
# Build
#

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${DyLP_DIR}/src/Dylp)
include_directories(${DyLP_DIR}/src/DylpStdLib)
include_directories(${DyLP_DIR}/src/OsiDyLP)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/DyLP/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Osi/include)
endmacro ()

add_definitions(-DODSI_PARANOIA=0)
if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

set(OsiDyLP_SRC_LIST ${DyLP_DIR}/src/OsiDylp/OsiDylpMessages.cpp
                     ${DyLP_DIR}/src/OsiDylp/OsiDylpSimplex.cpp
                     ${DyLP_DIR}/src/OsiDylp/OsiDylpWarmStartBasis.cpp
                     ${DyLP_DIR}/src/OsiDylp/OsiDylpPresolve.cpp
                     ${DyLP_DIR}/src/OsiDylp/OsiDylpSolverInterface.cpp)

if (ENABLE_SHARED_LIBRARIES)
  add_library(libOsiDyLP SHARED ${OsiDyLP_SRC_LIST})
else ()
  add_library(libOsiDyLP STATIC ${OsiDyLP_SRC_LIST})
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libOsiDyLP PROPERTIES PREFIX "")
endif ()
set_include_directories(libOsiDyLP)

install(TARGETS libOsiDyLP 
        RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR}
        LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}/static)

install(FILES ${DyLP_DIR}/src/OsiDylp/OsiDylpMessages.hpp
              ${DyLP_DIR}/src/OsiDylp/OsiDylpSolverInterface.hpp
              ${DyLP_DIR}/src/OsiDylp/OsiDylpWarmStartBasis.hpp
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}/coin)
