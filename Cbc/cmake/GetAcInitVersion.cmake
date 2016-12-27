# Read the package version number specified as the second argument
# to the AC_INIT macro in a GNU Autoconf configure.in file.
#
# Input parameter:
# FileName: path to configure.ac file
#
# Define the following variables:
# VERSION_STRING:  The second argument to AC_INIT
# MAJOR_VERSION:   For a version string of the form m.n.p..., m
# MINOR_VERSION:   For a version string of the form m.n.p..., n
# PATCH_VERSION:   For a version string of the form m.n.p..., p

macro(get_ac_init_version FileName)
  file(READ ${FileName} configure_IN)
  # AC_INIT([Cbc],[2.9.8],[cbc@lists.coin-or.org])
  #string(REGEX REPLACE "(AC_INIT\\(\\[Cbc\\],\\[)(.*)(\\],\\[cbc@lists.coin-or.org\\]\\).*)" "\\2" configure_REGEX ${configure_IN})
  string(REGEX REPLACE "(AC_INIT.*)" "\\1" configure_REGEX ${configure_IN})
  
  string(REGEX REPLACE "^.*AC_INIT *\\([^,]+, *\\[([^, )]+)\\].*$" "\\1" VERSION_STRING "${configure_REGEX}")
  if (VERSION_STRING STREQUAL "trunk")
    set(MAJOR_VERSION "9")
    set(MINOR_VERSION "9")
    set(PATCH_VERSION "9999")
  else ()
    string(REGEX REPLACE "^([0-9]+)(\\..*)?$" "\\1" MAJOR_VERSION "${VERSION_STRING}")
    string(REGEX REPLACE "^[0-9]+\\.([0-9]+)(\\..*)?$" "\\1" MINOR_VERSION "${VERSION_STRING}")
    if (VERSION_STRING MATCHES "^[0-9]+\\.[0-9]+\\.[0-9]+")
      string(REGEX REPLACE "^[0-9]+\\.[0-9]+\\.([0-9]+).*$" "\\1" PATCH_VERSION "${VERSION_STRING}")
    endif ()
  endif ()
endmacro(get_ac_init_version)
