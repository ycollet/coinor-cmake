include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Cbc_DIR}/src)
include_directories(${Clp_DIR}/src)
include_directories(${Clp_DIR}/src/OsiClp)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Cbc/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Clp/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Osi/include)
endmacro ()

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libOsiCbc SHARED ${Cbc_DIR}/src/OsiCbc/OsiCbcSolverInterface.cpp)
else ()
  add_library(libOsiCbc STATIC ${Cbc_DIR}/src/OsiCbc/OsiCbcSolverInterface.cpp)
endif ()
if (COIN_COMPILE_LTO)
  set_target_properties(libOsiCbc PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libOsiCbc PROPERTIES PREFIX "")
endif ()
set_include_directories(libOsiCbc)

install(TARGETS libOsiCbc 
        DESTINATION lib)

install(FILES ${Cbc_DIR}/src/OsiCbc/OsiCbcSolverInterface.hpp
        DESTINATION include/coin)
