
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rmd2docxsup

The goal of rmd2docxsup is to support for create Word document from R
Markdown. To reduce difficulty of inserting ooxml to docx output.

## Installation

You can install the developping version of rmd2docxsup from GitHub
repository with:

``` r
remotes::install_github("niszet/rmd2docxsup")
```

## Example

This is a basic example which you add new page in document where you
want. You need to use *inline R code chunk* instead of R code block. For
example,

`` `r rmd2docxsup::newpage ` ``

makes adding to newpage any location which you add the
code.

## Lifecycle

[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)