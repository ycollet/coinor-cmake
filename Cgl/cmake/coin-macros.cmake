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
    set_tests_properties(${Name} PROPERTIES ENVIRONMENT "PATH=${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/lib\\;${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR}/bin")
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

# From hydrogen CMakeLists.txt file
string( ASCII 27 _escape)

set(color_black    "${_escape}[0;30m") # Black - Regular
set(color_red      "${_escape}[0;31m") # Red
set(color_green    "${_escape}[0;32m") # Green
set(color_yellow   "${_escape}[0;33m") # Yellow
set(color_blue     "${_escape}[0;34m") # Blue
set(color_purple   "${_escape}[0;35m") # Purple
set(color_cyan     "${_escape}[0;36m") # Cyan
set(color_white    "${_escape}[0;37m") # White
set(color_bblack   "${_escape}[1;30m") # Black - Bold
set(color_bred     "${_escape}[1;31m") # Red
set(color_bgreen   "${_escape}[1;32m") # Green
set(color_byellow  "${_escape}[1;33m") # Yellow
set(color_bblue    "${_escape}[1;34m") # Blue
set(color_bpurple  "${_escape}[1;35m") # Purple
set(color_bcyan    "${_escape}[1;36m") # Cyan
set(color_bwhite   "${_escape}[1;37m") # White
set(color_ublack   "${_escape}[4;30m") # Black - Underline
set(color_ured     "${_escape}[4;31m") # Red
set(color_ugreen   "${_escape}[4;32m") # Green
set(color_uyellow  "${_escape}[4;33m") # Yellow
set(color_ublue    "${_escape}[4;34m") # Blue
set(color_upurple  "${_escape}[4;35m") # Purple
set(color_ucyan    "${_escape}[4;36m") # Cyan
set(color_uwhite   "${_escape}[4;37m") # White
set(color_bgblack  "${_escape}[40m")   # Black - Background
set(color_bgred    "${_escape}[41m")   # Red
set(color_bggreen  "${_escape}[42m")   # Green
set(color_bgyellow "${_escape}[43m")   # Yellow
set(color_bgblue   "${_escape}[44m")   # Blue
set(color_bgpurple "${_escape}[45m")   # Purple
set(color_bgcyan   "${_escape}[46m")   # Cyan
set(color_bgwhite  "${_escape}[47m")   # White
set(color_reset    "${_escape}[0m")    # Text Reset

# Example of use:
# COLOR_MESSAGE("${color_cyan}Installation Summary${color_reset}

function(COLOR_MESSAGE TEXT)
  if (CMAKE_COLOR_MAKEFILE AND NOT WIN32)
    message(${TEXT})
  else ()
    if (WIN32)
      string(REGEX REPLACE "${_escape}[\\[0123456789;]*m" "" __TEXT ${TEXT})
    else ()
      string(REGEX REPLACE "${_escape}[0123456789;]*m" "" __TEXT ${TEXT})
    endif ()
    message(${__TEXT})
  endif ()
endfunction ()

# add_regex: allow to concat several regex into one for using it with cmake
macro(add_regex VARIABLE REGEX)
  set(${VARIABLE} "${${VARIABLE}}${REGEX}.*")
endmacro ()

# Example of use:
#
# set(TEST_REGEX "")
# add_regex(TEST_REGEX "INFO  : Overall capacity cost : 7.54846e[+]09" )
# add_regex(TEST_REGEX "INFO  : Overall simulation cost : 3.40945e[+]09")
# add_regex(TEST_REGEX "INFO  : Overall reward : -1.09579e[+]10" )
# set_tests_properties(Test_Name PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}" )
