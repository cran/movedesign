
<!-- README.md is generated from README.Rmd. Please edit that file -->

# movedesign <img src="https://raw.githubusercontent.com/ecoisilva/movedesign/main/inst/app/www/logo.png" style="padding: 15px 0px 0px 0px;" align="right" height="140"/>

<!-- badges: start -->

![Static Badge](https://img.shields.io/badge/version-0.3.0-blue)
[![DOI](https://zenodo.org/badge/474098792.svg)](https://zenodo.org/badge/latestdoi/474098792)<br>
[![R-CMD-check](https://github.com/ecoisilva/movedesign/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ecoisilva/movedesign/actions/workflows/R-CMD-check.yaml)
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Hits](https://hits.sh/github.com/ecoisilva/hits.svg)](https://hits.sh/github.com/ecoisilva/movedesign/)
<br>
<!-- [![Github last commit date](https://img.shields.io/github/last-commit/ecoisilva/movedesign.svg?label=Updated&logo=github&cacheSeconds=600)](https://github.com/ecoisilva/movedesign/commits) -->
<!-- [![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/movedesign)](https://cran.r-project.org/package=movedesign) -->
<!-- badges: end -->

<br>

## Overview

<div style="text-align: justify">

The `movedesign` `R` package and `Shiny` application are designed to
support researchers in the planning and evaluation of movement ecology
studies, focusing on two key targets: estimating home range areas, and
estimating movement speed and distance traveled.

Movement ecology studies frequently make use of data collected from
animal tracking projects. Planning a successful animal tracking project
requires careful consideration and clear objectives. It is crucial to
plan ahead and understand how much data is required to accurately answer
your chosen research questions, and choose the optimal tracking
regime/schedule.

To assist with study design, `movedesign` integrates the continuous-time
methods available with the
[`ctmm`](https://ctmm-initiative.github.io/ctmm/) `R` package. Animal
movement is inherently autocorrelated (locations are similar as a
function of space and time) and the `ctmm` package allows us to model
these data as continuous-time stochastic processes, while dealing with
other known biases (such as small sample sizes, irregular or missing
data, and location error).

This app was built using the `golem` framework.

## Installation:

To install the stable version of `movedesign`, run the following:

``` r
install.packages("movedesign", repos = c("https://ecoisilva.r-universe.dev", "https://cloud.r-project.org"))
```

If you encounter any issues, consult the installation troubleshooting
[vignette](https://ecoisilva.github.io/movedesign/articles/installation.html)
for potential solutions.

## Running the application:

To launch `movedesign`, load the library and run the following command
in your `R` console:

``` r
library(movedesign)
movedesign::run_app()
```

## Using the application:

Start with the guided tutorial in the `'Home'` tab. For a more detailed
introduction, refer to the
[vignettes](https://ecoisilva.github.io/movedesign/articles/movedesign.html)
or the manuscripts (references below).

<img src="https://raw.githubusercontent.com/ecoisilva/movedesign/main/inst/app/www/app_overview.png"
     alt="This figure presents a conceptual workflow of the key elements of the ‘movedesign’ application, which provides an R Shiny-powered user interface to test different sampling designs for specified tracking projects." 
     style="padding: 15px 0px 5px 0px; max-width: 550px; width: 80%; display: block; margin: 0 auto;"/>

## Getting help:

If you encounter a bug, please [submit an
issue](https://github.com/ecoisilva/movedesign/issues). For more general
questions and suggestions, contact [Inês
Silva](mailto:i.simoes-silva@hzdr.de?subject=%5Bmovedesign%5D).

## Citation

To cite `movedesign`, use the following:

``` r
citation("movedesign")
```

> Silva, I., Fleming, C. H., Noonan, M. J., Fagan, W. F., & Calabrese,
> J. M. (2023). movedesign: Shiny R app to evaluate sampling design for
> animal movement studies. Methods in Ecology and Evolution, 14(9),
> 2216–2225. DOI: 10.1111/2041-210X.14153

</div>
