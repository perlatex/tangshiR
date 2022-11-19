
# tangshiR

The goal of `tangshiR` is to analyse poetry of the Tang Dynasty

## Installation

You can install the development version of tangshiR like so:

``` r
devtools::install_github("perlatex/tangshiR")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(tangshiR)
tangshi
```

### 词句中含有"须臾"
``` r
tangshi %>% 
  extract2excel(.word = "须臾")
```

### 白居易的诗
``` r
tangshi %>% 
  extract2excel(.author = "白居易")
```

### 白居易的诗句中含有"须臾"的
``` r
tangshi %>% 
  extract2excel(.author = "白居易", .word = "须臾")
```
