
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mypkg

<!-- badges: start -->
<!-- badges: end -->

The goal of mypkg is to help you understand your libraries better.

## Installation

You can install the development version of mypkg from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Mutaz94/mypkg")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(mypkg)
lib_summary()
#>                                                                                        Library
#> 1                         /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library
#> 2 /private/var/folders/hh/0f4d8d714_jgz56dww2f_2x40000gp/T/Rtmphr0FJz/temp_libpatha3035fb12a33
#> 3                                                    /Users/mjaber/Library/R/arm64/4.3/library
#>   n_packages
#> 1        125
#> 2          1
#> 3          3

# Also another one to by using `sizes` 
lib_summary(sizes = TRUE)
#>                                                                                        Library
#> 1                         /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library
#> 2 /private/var/folders/hh/0f4d8d714_jgz56dww2f_2x40000gp/T/Rtmphr0FJz/temp_libpatha3035fb12a33
#> 3                                                    /Users/mjaber/Library/R/arm64/4.3/library
#>   n_packages  lib_size
#> 1        125 338284119
#> 2          1     14819
#> 3          3   2433454
```
