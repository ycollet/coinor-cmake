# coin_check_and_add_include_path: check if ${dir}/include is a path and exists
# dir must be a variable containing "None" or a path
macro(coin_check_and_add_include_path dir)
  if (NOT ${dir} STREQUAL "None")
    if (NOT EXISTS "${${dir}}")
      message(FATAL_ERROR "Error: ${dir} = ${${dir}} which is not an existing directory")
    else ()
      include_directories(${${dir}})
    endif ()
  endif ()
endmacro ()

# coin_check_and_add_library_path: check if ${dir}/lib is a path and exists
# dir must be a variable containing "None" or a path
macro(coin_check_and_add_library_path dir)
  if (NOT ${dir} STREQUAL "None")
    if (NOT EXISTS "${${dir}}")
      message(FATAL_ERROR "Error: ${dir} = ${${dir}} which is not an existing directory")
    else ()
      link_directories(${${dir}})
    endif ()
  endif ()
endmacro ()

# coin_check_and_add_include_library_path: check if ${dir}/lib and ${dir}/include are pathes and exists
# dir must be a variable containing "None" or a path
macro(coin_check_and_add_include_library_path dir)
  if (NOT ${dir} STREQUAL "None")
    if (NOT EXISTS "${${dir}}/include")
      message(FATAL_ERROR "Error: ${dir} = ${${dir}}/include which is not an existing directory")
    else ()
      include_directories(${${dir}}/include)
    endif ()
    
    if (NOT EXISTS "${${dir}}/lib")
      message(FATAL_ERROR "Error: ${dir} = ${${dir}}/lib which is not an existing directory")
    else ()
      link_directories(${${dir}}/lib)
    endif ()
  endif ()
endmacro()

#
# macros for tests
#

find_package(PythonInterp REQUIRED)

if (NOT EXISTS ${CMAKE_BINARY_DIR}/CoinTests)
  make_directory(${CMAKE_BINARY_DIR}/CoinTests)
endif ()

# add_coin_test: generate a cmake wrapper around cbc executable and then add the test
# SolverName: the name of the solver. Will be appended to the out and log filename (must have the same name as the built target)
# Name: the name of the test
# FileData: the name of the mps / lp data file
# FileOut: the name of the .out data file
# FileLog: the name of the .log data file

macro(add_coin_test Name SolverName FileData FileOut FileLog)
  if (WIN32)
    file(WRITE ${CMAKE_BINARY_DIR}/CoinTests/${Name}_${SolverName}.cmake
         "execute_process(COMMAND     ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${SolverName} ${FileData} %COIN_EXE_OPTIONS% -solution ${FileOut} -solve\n"
         "                OUTPUT_FILE ${FileLog})\n")
  else ()
    file(WRITE ${CMAKE_BINARY_DIR}/CoinTests/${Name}_${SolverName}.cmake
         "execute_process(COMMAND     ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${SolverName} ${FileData} $COIN_EXE_OPTIONS -solution ${FileOut} -solve\n"
         "                OUTPUT_FILE ${FileLog})\n")
  endif ()
  
  add_test(NAME ${Name}
           COMMAND ${CMAKE_COMMAND} -P ${CMAKE_BINARY_DIR}/CoinTests/${Name}_${SolverName}.cmake)
  
  if (WIN32)
    set_tests_properties(${Name} PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/Dependencies/lib\\;${CMAKE_BINARY_DIR}/Dependencies/bin")
  endif ()
endmacro()

# create_log_analysis: build a log analysis test for one solver. The string FAILED is returned is case of failure and PASSED in case of success
# - Name: a value corresponding to the name of the test
# - AdditionalName: a value corresponding to the suffix name of the test
# - Filename: the filename of the log file
# - TestRegex: the regex to be extracted with <number> where the result must be found
# - TestRefVal: the reference result
# - TestRelLevel: the test threshold
macro(create_log_analysis Name AdditionalName Filename TestRegex TestRefVal TestRelLevel)
  add_test(NAME ${Name}_${AdditionalName}
           WORKING_DIRECTORY ${BinTestPath}
           COMMAND ${PYTHON_EXECUTABLE} ${CMAKE_SOURCE_DIR}/cmake/parse_results.py ${Filename} ${TestRegex} ${TestRefVal} ${TestRelLevel})
    
  set_tests_properties(${Name}_${AdditionalName} PROPERTIES DEPENDS "${TestName}_${TestSolverName}")
  set_tests_properties(${Name}_${AdditionalName} PROPERTIES ENVIRONMENT "${TEST_ENV_VAR}")
  set_tests_properties(${Name}_${AdditionalName} PROPERTIES PASS_REGULAR_EXPRESSION "PASSED")
endmacro()
