#!/bin/sh
# Run this to generate all initial makefiles, etc.
aclocal
automake --add-missing
autoconf
