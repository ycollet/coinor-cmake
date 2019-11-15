/* config.h.cmake (GLPK configuration template file) */

#cmakedefine HAVE_SYS_TIME_H @HAVE_SYS_TIME_H@
/* defined if the <sys/time.h> header can be used */

#cmakedefine HAVE_GETTIMEOFDAY @HAVE_GETTIMEOFDAY@
/* defined if the gettimeofday function can be used */

#cmakedefine HAVE_GMP @HAVE_GMP@
/* defined if the GNU MP bignum library is available */
/* requires <gmp.h> and -lgmp */

#cmakedefine HAVE_MEMCPY @HAVE_MEMCPY@
/* defined if memcpy is available */

#cmakedefine HAVE_LTDL @HAVE_LTDL@
/* defined if the GNU Libtool shared library support is enabled */
/* requires <ltdl.h> and -lltdl */

#cmakedefine HAVE_DLFCN @HAVE_DLFCN@
/* defined if the POSIX shared library support is enabled */
/* requires <dlfcn.h> */

#cmakedefine ODBC_DLNAME @ODBC_DLNAME@
/* ODBC shared library name if this feature is enabled */

#cmakedefine MYSQL_DLNAME @MYSQL_DLNAME@
/* MySQL shared library name if this feature is enabled */

#cmakedefine HAVE_MYSQL @HAVE_MYSQL@
/* defined if MySQL is present */

#cmakedefine HAVE_OBDC @HAVE_OBDC@
/* defined if OBDC is present */

/* eof */
