/* config.h.cmake (GLPK configuration template file) */

#cmakedefine HAVE_SYS_TIME_H
/* defined if the <sys/time.h> header can be used */

#cmakedefine HAVE_GETTIMEOFDAY
/* defined if the gettimeofday function can be used */

#cmakedefine HAVE_GMP
/* defined if the GNU MP bignum library is available */
/* requires <gmp.h> and -lgmp */

#cmakedefine HAVE_LTDL
/* defined if the GNU Libtool shared library support is enabled */
/* requires <ltdl.h> and -lltdl */

#cmakedefine HAVE_DLFCN
/* defined if the POSIX shared library support is enabled */
/* requires <dlfcn.h> */

#cmakedefine ODBC_DLNAME
/* ODBC shared library name if this feature is enabled */

#cmakedefine MYSQL_DLNAME
/* MySQL shared library name if this feature is enabled */

/* eof */
