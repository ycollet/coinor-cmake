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
           COMMAND ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/cmake/parse_results.py ${Filename} ${TestRegex} ${TestRefVal} ${TestRelLevel})
    
  set_tests_properties(${Name}_${AdditionalName} PROPERTIES DEPENDS "${TestName}_${TestSolverName}")
  set_tests_properties(${Name}_${AdditionalName} PROPERTIES ENVIRONMENT "${TEST_ENV_VAR}")
  set_tests_properties(${Name}_${AdditionalName} PROPERTIES PASS_REGULAR_EXPRESSION "PASSED")
endmacro()

#
# macros to manage files and version
#

# add_source_files(ListFiles FilesToInclude VersionRef VersionToCheck)
# ListFiles: a variable name which will contain the resulting list of files
# FilesToInclude: a variable name containing a list of files to be included
# VersionRef: a string containing the reference version (above or equal to this version, the files are included in the resulting list)
# VersionToCheck: a string containing the test version. If the version is above or equal to this version, the files are included in the resulting list
macro(add_source_files ListFiles FilesToInclude VersionRef VersionToCheck)
  if ("${VersionToCheck}" VERSION_GREATER_EQUAL "${VersionRef}")
    set(${ListFiles} ${${ListFiles}}
                     ${FilesToInclude})
  endif ()
endmacro()

# remove_source_files(ListFiles FilesToExclude VersionRef VersionToCheck)
# ListFiles: a variable name which will contain the resulting list of files
# FilesToInclude: a variable name containing a list of files to be excluded
# VersionRef: a string containing the reference version (above or equal to this version, the files are excluded from the resulting list)
# VersionToCheck: a string containing the test version. If the version is above or equal to this version, the files are excluded from the resulting list
macro(remove_source_files ListFiles FilesToExclude VersionRef VersionToCheck)
  if ("${VersionToCheck}" VERSION_GREATER_EQUAL "${VersionRef}")
    set(TMP_LIST ${FilesToExclude})
    #foreach(Item ${TMP_LIST})
    foreach(Item IN LISTS TMP_LIST)
      list(REMOVE_ITEM ${ListFiles} ${Item})
    endforeach()
  endif ()
endmacro()

#
# How to use these macros:
#
#
# set(LIST_SRCS file1.cpp
#               file2.cpp
#               file3.cpp)
# 
# set(LIST_TO_ADD_SRCS file4.cpp
#                      file5.cpp
#                      file6.cpp)
# 
# set(VERSION "1.1")
# 
# add_source_files(LIST_SRCS "${LIST_TO_ADD_SRCS}" "1.0" "${VERSION}")
# 
# set(LIST_TO_ADD_SRCS file7.cpp)
# 
# set(VERSION "0.9")
# 
# add_source_files(LIST_SRCS "${LIST_TO_ADD_SRCS}" "1.0" "${VERSION}")
# 
# message(STATUS "RESULT: ADD - LIST_SRCS = ${LIST_SRCS}")
# 
# set(LIST_TO_REMOVE_SRCS file4.cpp)
# 
# set(VERSION "1.1")
# 
# remove_source_files(LIST_SRCS LIST_TO_REMOVE_SRCS "1.0" "${VERSION}")
# 
# set(LIST_TO_REMOVE_SRCS file5.cpp)
# 
# set(VERSION "0.9")
# 
# remove_source_files(LIST_SRCS LIST_TO_REMOVE_SRCS "1.0" "${VERSION}")
# 
# message(STATUS "RESULT: REMOVE - LIST_SRCS = ${LIST_SRCS}")
