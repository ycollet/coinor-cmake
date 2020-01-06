#
# pkg-config file generation
#

set(prefix               "${CMAKE_INSTALL_PREFIX}")
set(exec_prefix          "\${prefix}")
set(libdir               "${CMAKE_INSTALL_PREFIX}/lib")
set(includedir           "${CMAKE_INSTALL_PREFIX}/include")
set(PACKAGE_VERSION      "${OSI_VERSION}")
set(OSISPXLIB_PCLIBS     "-lsoplex")
set(OSISPXLIB_PCREQUIRES "soplex")

configure_file(${CMAKE_SOURCE_DIR}/Osi/Osi/src/OsiSpx/osi-soplex.pc.in ${CMAKE_BINARY_DIR}/Osi/osi-soplex.pc @ONLY)

set(libdir            "${Osi_DIR}")
set(abs_source_dir    "${CMAKE_BINARY_DIR}/bin")

configure_file(${CMAKE_SOURCE_DIR}/Osi/Osi/src/OsiSpx/osi-soplex-uninstalled.pc.in ${CMAKE_BINARY_DIR}/Osi/osi-soplex-uninstalled.pc @ONLY)

install(FILES ${CMAKE_BINARY_DIR}/Osi/osi-soplex.pc
        DESTINATION ${LIBDIR}/pkg-config/)

install(FILES ${CMAKE_BINARY_DIR}/Osi/osi-soplex-uninstalled.pc
        DESTINATION ${LIBDIR}/pkg-config/)

#
# Build
#

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${Osi_DIR}/src/OsiSpx)
include_directories(${MY_SOPLEX_DIR}/include)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Osi/include)
endmacro ()

if (NOT COIN_SOPLEX_DIR STREQUAL "None")
  include_directories(${COIN_SOPLEX_DIR}/include)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libOsiSpx SHARED ${Osi_DIR}/src/OsiSpx/OsiSpxSolverInterface.cpp)
else ()
  add_library(libOsiSpx STATIC ${Osi_DIR}/src/OsiSpx/OsiSpxSolverInterface.cpp)
endif ()
if (COIN_COMPILE_LTO)
  set_target_properties(libOsiSpx PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libOsiSpx PROPERTIES PREFIX "")
endif ()
set_include_directories(libOsiSpx)

install(TARGETS libOsiSpx
        DESTINATION ${LIBDIR})

install(FILES ${Osi_DIR}/src/OsiSpx/OsiSpxSolverInterface.hpp
        DESTINATION ${INCLUDEDIR}/coin)
