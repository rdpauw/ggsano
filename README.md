
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggsano

<!-- badges: start -->

<!-- badges: end -->

The goal of ggsano is to uniform the use of colours within the institue
Sciensano. The ggsano package is open-source and can be downloaded by
everyone. Currently the package only includes a discrete and continuous
color palette, but regular updates are planned.

## Installation

Since ggsano is not available on [CRAN](https://CRAN.R-project.org), you
can download the development version from [GitHub](https://github.com/)
by executing the following code:

``` r
# install.packages("devtools")
devtools::install_github("rdpauw/ggsano")
```

## Colours

Below are the standard discrete colours included in the ggsano package:

``` r
library(ggsano)
library(scales)
show_col(pal_sciensano()(12))
```

<img src="man/figures/README-example-1.png" width="100%" />

You can specify the colours in each row by specifying the `name`
argument in the functions

``` r
show_col(pal_sciensano(name = "yellow")(4))
```

<img src="man/figures/README-cars-1.png" width="100%" />
