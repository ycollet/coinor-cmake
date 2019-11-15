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
        DESTINATION lib)

install(FILES ${OsiSym_DIR}/OsiSymSolverInterface.hpp ${OsiSym_DIR}/OsiSymSolverParameters.hpp ${OsiSym_DIR}/SymWarmStart.hpp
        DESTINATION include/coin)
