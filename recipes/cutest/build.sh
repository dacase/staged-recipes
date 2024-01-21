#!/bin/bash

set -eux

mkdir --parents "$PREFIX"/{lib,include}
$CC -shared -fPIC -o libcutest.so CuTest.c
cp libcutest.so "${PREFIX}/lib/"
cp CuTest.h "${PREFIX}/include/"
