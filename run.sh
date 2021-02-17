#!/bin/sh
#set -e -x

#export ASAN_OPTIONS='detect_leaks=0'
export AR=gcc-ar
export RANLIB=gcc-ranlib

suffix="lto"
dirname="RD${suffix}"


# echo 'CXX="g++ -fsanitize=address,undefined,bounds-strict -fno-omit-frame-pointer"
# CFLAGS="-g -O0 -Wall -pedantic -mtune=native -fsanitize=address"
# DEFS=-DSWITCH_TO_REFCNT
# FFLAGS="-g -O0 -mtune=native"
# CXXFLAGS="-g -O0 -Wall -pedantic -mtune=native"
# MAIN_LDFLAGS="-fsanitize=address,undefined -pthread"
# ' >> /tmp/r-source/config.site

# rm -rf ~/.R
# mkdir ~/.R
# echo 'CC = gcc -std=gnu99 -fsanitize=address,undefined -fno-omit-frame-pointer
# F77 = gfortran -fsanitize=address
# FC = gfortran -fsanitize=address
# ' > ~/.R/Makevars

export CC="gcc"
export F77="gfortran"
export FC="gfortran"

export CXX="g++"
export CFLAGS="-g -O2 -Wall -pedantic -mtune=native"
export FFLAGS="-g -O2 -mtune=native -Wall -pedantic"
export CXXFLAGS="-g -O2 -Wall -pedantic -mtune=native -Wno-ignored-attributes -Wno-deprecated-declarations -Wno-parentheses"

export configure_flags="--without-recommended-packages --enable-lto"

/usr/local/${dirname}/bin/R

