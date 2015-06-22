#
# macros for tests
#

find_package(PythonInterp REQUIRED)

if (NOT EXISTS ${CMAKE_BINARY_DIR}/GlpkTests)
  make_directory(${CMAKE_BINARY_DIR}/GlpkTests)
endif ()

# add_coin_test: generate a cmake wrapper around cbc executable and then add the test
macro(add_coin_test Name FileData FileOut)
  add_test(NAME ${Name}
           COMMAND $<TARGET_FILE:glpsol> --mps ${FileData} -o ${FileOut})
  
  if (WIN32)
    set_tests_properties(${Name} PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/lib\\;${CMAKE_BINARY_DIR}/bin")
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
