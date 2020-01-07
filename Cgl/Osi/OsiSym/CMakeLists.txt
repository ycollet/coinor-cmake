#
# pkg-config file generation
#

set(prefix                 "${CMAKE_INSTALL_PREFIX}")
set(exec_prefix            "\${prefix}")
set(libdir                 "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}")
set(includedir             "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}")
set(PACKAGE_VERSION        "${OSI_VERSION}")
set(SYMPHONYLIB_PCLIBS     "")
set(SYM_OPENMP_LIBS        "")
set(SYM_OPENMP_FLAGS       "")
set(SYMPHONYLIB_PCREQUIRES "cgl osi-clp coinutils osi")

configure_file(${SYMPHONY_DIR}/src/OsiSym/osi-symphony.pc.in ${CMAKE_BINARY_DIR}/Osi/osi-symphony.pc @ONLY)

set(libdir         "${SYMPHONY_DIR}")
set(abs_source_dir "${CMAKE_BINARY_DIR}/bin")

configure_file(${SYMPHONY_DIR}/src/OsiSym/osi-symphony-uninstalled.pc.in ${CMAKE_BINARY_DIR}/Osi/osi-symphony-uninstalled.pc @ONLY)

install(FILES ${CMAKE_BINARY_DIR}/Osi/osi-symphony.pc
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}/pkg-config/)

#
# Build
#

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Cbc_DIR}/src)
include_directories(${Clp_DIR}/src)
include_directories(${Clp_DIR}/src/OsiClp)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Clp/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Symphony/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Osi/include)
endmacro ()

include_directories(${COIN_SYMPHONY_DIR}/include)

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libOsiSym SHARED ${OsiSym_DIR}/OsiSymSolverInterface.cpp ${OsiSym_DIR}/SymWarmStart.cpp)
else ()
  add_library(libOsiSym STATIC ${OsiSym_DIR}/OsiSymSolverInterface.cpp ${OsiSym_DIR}/SymWarmStart.cpp)
endif ()
if (COIN_COMPILE_LTO)
  set_target_properties(libOsiSym PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libOsiSym PROPERTIES PREFIX "")
endif ()
set_include_directories(libOsiSym)

install(TARGETS libOsiSym 
        RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_BINDIR}
        LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}/static)

install(FILES ${OsiSym_DIR}/OsiSymSolverInterface.hpp ${OsiSym_DIR}/OsiSymSolverParameters.hpp ${OsiSym_DIR}/SymWarmStart.hpp
        DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}/coin)
