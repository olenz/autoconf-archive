# =============================================================================
#  http://www.nongnu.org/autoconf-archive/ac_cxx_header_tr1_unordered_set.html
# =============================================================================
#
# OBSOLETE MACRO
#
#   Renamed to AX_CXX_HEADER_TR1_UNORDERED_SET
#
# SYNOPSIS
#
#   AC_CXX_HEADER_TR1_UNORDERED_SET
#
# DESCRIPTION
#
#   Check whether the TR1 include <unordered_set> exists and define
#   HAVE_TR1_UNORDERED_SET if it does.
#
# LICENSE
#
#   Copyright (c) 2008 Benjamin Kosnik <bkoz@redhat.com>
#
#   Copying and distribution of this file, with or without modification, are
#   permitted in any medium without royalty provided the copyright notice
#   and this notice are preserved.

AC_DEFUN([AC_CXX_HEADER_TR1_UNORDERED_SET], [
  AC_CACHE_CHECK(for tr1/unordered_set,
  ac_cv_cxx_tr1_unordered_set,
  [AC_LANG_SAVE
  AC_LANG_CPLUSPLUS
  AC_TRY_COMPILE([#include <tr1/unordered_set>], [using std::tr1::unordered_set;],
  ac_cv_cxx_tr1_unordered_set=yes, ac_cv_cxx_tr1_unordered_set=no)
  AC_LANG_RESTORE
  ])
  if test "$ac_cv_cxx_tr1_unordered_set" = yes; then
    AC_DEFINE(HAVE_TR1_UNORDERED_SET,,[Define if tr1/unordered_set is present. ])
  fi
])
