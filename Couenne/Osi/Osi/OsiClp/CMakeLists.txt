include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Clp_DIR}/src)
include_directories(${Clp_DIR}/src/OsiClp)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Clp/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Osi/include)
endmacro ()

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libOsiClp SHARED ${Clp_DIR}/src/OsiClp/OsiClpSolverInterface.cpp)
else ()
  add_library(libOsiClp STATIC ${Clp_DIR}/src/OsiClp/OsiClpSolverInterface.cpp)
endif ()
if (COIN_COMPILE_LTO)
  set_target_properties(libOsiClp PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libOsiClp PROPERTIES PREFIX "")
endif ()
set_include_directories(libOsiClp)

install(TARGETS libOsiClp 
        DESTINATION lib)

install(FILES ${Clp_DIR}/src/OsiClp/OsiClpSolverInterface.hpp
        DESTINATION include/coin)
