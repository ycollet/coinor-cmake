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
        DESTINATION lib)

install(FILES ${DyLP_DIR}/src/OsiDylp/OsiDylpMessages.hpp
              ${DyLP_DIR}/src/OsiDylp/OsiDylpSolverInterface.hpp
              ${DyLP_DIR}/src/OsiDylp/OsiDylpWarmStartBasis.hpp
        DESTINATION include/coin)
