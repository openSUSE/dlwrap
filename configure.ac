#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.63])
AC_INIT([dlwrap], [0.4.1], [Stanislav Brabec <sbrabec@suse.cz>])
AC_CONFIG_SRCDIR([dlwrap.h])
AM_INIT_AUTOMAKE([-Wall dist-bzip2 no-dist-gzip])
AM_MAINTAINER_MODE

dnl For future versions:
dnl check for flavours of varargs macros (test from GLib)
AC_MSG_CHECKING(for ISO C99 varargs macros in C)
AC_TRY_COMPILE([],[
int a(int p1, int p2, int p3);
#define call_a(...) a(1,__VA_ARGS__)
call_a(2,3);
],savanc_have_iso_c_varargs=yes,savanc_have_iso_c_varargs=no)
AC_MSG_RESULT($savanc_have_iso_c_varargs)

AC_MSG_CHECKING(for GNUC varargs macros)
AC_TRY_COMPILE([],[
int a(int p1, int p2, int p3);
#define call_a(params...) a(1,params)
call_a(2,3);
],savanc_have_gnuc_varargs=yes,savanc_have_gnuc_varargs=no)
AC_MSG_RESULT($savanc_have_gnuc_varargs)

dnl Output varargs tests
if test x$savanc_have_iso_c_varargs = xyes; then
	AC_DEFINE(HAVE_ISO_VARARGS,1,[Have ISO C99 varargs macros])
fi
if test x$savanc_have_gnuc_varargs = xyes; then
	AC_DEFINE(HAVE_GNUC_VARARGS,1,[Have GNU-style varargs macros])
fi

# Checks for libraries.
AC_CHECK_LIB([dl], [dlsym])

# Checks for header files.
AC_CHECK_HEADERS([stdlib.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_SIZE_T

# Checks for library functions.
AC_CONFIG_FILES([Makefile])
AC_OUTPUT
