# coin_check_and_add_include_path: check if ${dir}/include is a path and exists
# dir must be a variable containing "None" or a path
macro(coin_check_and_add_include_path dir)
  if (NOT "${${dir}}" STREQUAL "None")
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
  if (NOT "${${dir}}" STREQUAL "None")
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
  coin_check_and_add_include_path(${dir})
  coin_check_and_add_library_path(${dir})
endmacro()
