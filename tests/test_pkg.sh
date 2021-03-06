#!/bin/bash
echo "1. Building function documentation ..."
R -e "library(devtools); devtools::load_all(); devtools::document()"
echo "2. Building package documentation ..."
R -e "library(pkgdown); pkgdown::build_site()"
echo "3. Checking package, including unit tests ..."
R -e "library(devtools); devtools::load_all(); devtools::check()"
