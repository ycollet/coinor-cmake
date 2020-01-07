#
# pkg-config file generation
#

set(prefix           "${CMAKE_INSTALL_PREFIX}")
set(exec_prefix      "\${prefix}")
set(libdir           "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}")
set(includedir       "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}")
set(PACKAGE_VERSION  "${OSI_VERSION}")
set(MSKLIB           "-lmosek")
set(MSKINCDIR        "/usr/include/mosek")

configure_file(${Osi_DIR}/src/OsiMsk/osi-mosek.pc.in ${CMAKE_BINARY_DIR}/Osi/osi-mosek.pc @ONLY)

set(libdir         "${Osi_DIR}")
set(abs_source_dir "${CMAKE_BINARY_DIR}/bin")

configure_file(${Osi_DIR}/src/OsiMsk/osi-mosek-uninstalled.pc.in ${CMAKE_BINARY_DIR}/Osi/osi-mosek-uninstalled.pc @ONLY)

install(FILES ${CMAKE_BINARY_DIR}/Osi/osi-mosek.pc
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}/pkg-config/)

#
# Build
#

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${Osi_DIR}/src/OsiMsk)
include_directories(${MY_MOSEK_DIR}/include)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Osi/include)
endmacro ()

if (NOT COIN_MOSEK_DIR STREQUAL "None")
  include_directories(${COIN_MOSEK_DIR}/include)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libOsiMsk SHARED ${Osi_DIR}/src/OsiMsk/OsiMskSolverInterface.cpp)
else ()
  add_library(libOsiMsk STATIC ${Osi_DIR}/src/OsiMsk/OsiMskSolverInterface.cpp)
endif ()
if (COIN_COMPILE_LTO)
  set_target_properties(libOsiMsk PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libOsiMsk PROPERTIES PREFIX "")
endif ()
set_include_directories(libOsiMsk)

install(TARGETS libOsiMsk
        RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR}
        LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}/static)

install(FILES ${Osi_DIR}/src/OsiMsk/OsiMskSolverInterface.hpp
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}/coin)
