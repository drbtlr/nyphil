
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nyphil <img src='man/figures/logo.png' align="right" height="138" />

<!-- badges: start -->
<!-- badges: end -->

An R data package with performance history data from the [New York
Philharmonic](https://archives.nyphil.org/index.php/open-data).

## Installation

You can install the development version of nyphil from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("drbtlr/nyphil")
```

## About the data

The `nyphil` package contains performance history data from all known
concerts of the [New York Philharmonic](https://nyphil.org/). Data were
collected and made available by the [New York Philharmonic
Archives](https://archives.nyphil.org/index.php/open-data).

There are two datasets included in the package. The dataset `nyphil` is
a lightly-cleaned, tidy version of the raw data; see `?nyphil` for more
info.

``` r
dplyr::glimpse(nyphil)
#> Rows: 154,988
#> Columns: 16
#> $ id                 <chr> "00646b9f-fec7-4ffb-9fb1-faae410bd9dc-0.1", "00646b~
#> $ program_id         <chr> "3853", "3853", "3853", "3853", "3853", "3853", "38~
#> $ orchestra          <chr> "New York Philharmonic", "New York Philharmonic", "~
#> $ season             <chr> "1842-43", "1842-43", "1842-43", "1842-43", "1842-4~
#> $ event_type         <chr> "Subscription Season", "Subscription Season", "Subs~
#> $ location           <chr> "Manhattan, NY", "Manhattan, NY", "Manhattan, NY", ~
#> $ venue              <chr> "Apollo Rooms", "Apollo Rooms", "Apollo Rooms", "Ap~
#> $ date               <chr> "1842-12-07T05:00:00Z", "1842-12-07T05:00:00Z", "18~
#> $ time               <chr> "8:00PM", "8:00PM", "8:00PM", "8:00PM", "8:00PM", "~
#> $ id_2               <chr> "52446*", "8834*4", "3642*", "3642*", "3642*", "364~
#> $ composer_name      <chr> "Beethoven,  Ludwig  van", "Weber,  Carl  Maria Von~
#> $ work_title         <chr> "SYMPHONY NO. 5 IN C MINOR, OP.67", "OBERON", "QUIN~
#> $ conductor_name     <chr> "Hill, Ureli Corelli", "Timm, Henry C.", NA, NA, NA~
#> $ soloist_name       <chr> NA, "Otto, Antoinette", "Scharfenberg, William", "H~
#> $ soloist_instrument <chr> NA, "Soprano", "Piano", "Violin", "Viola", "Cello",~
#> $ soloist_roles      <chr> NA, "S", "A", "A", "A", "A", "A", NA, "S", "S", "S"~
```

The dataset `nyphil_raw` contains all the variables and original names
as downloaded; see `?nyphil_raw` for more info.

``` r
dplyr::glimpse(nyphil_raw)
#> List of 1
#>  $ programs:'data.frame':    14407 obs. of  6 variables:
#>   ..$ id       : chr [1:14407] "00646b9f-fec7-4ffb-9fb1-faae410bd9dc-0.1" "1118e84e-eb59-46cc-9119-d903375e65e6-0.1" "08536612-27c3-437e-9b44-def21034b06c-0.1" "81a3b8de-1737-4c9e-9318-b839f7c7c4c0-0.1" ...
#>   ..$ programID: chr [1:14407] "3853" "5178" "10785" "5887" ...
#>   ..$ orchestra: chr [1:14407] "New York Philharmonic" "New York Philharmonic" "Musicians from the New York Philharmonic" "New York Philharmonic" ...
#>   ..$ season   : chr [1:14407] "1842-43" "1842-43" "1842-43" "1842-43" ...
#>   ..$ concerts :List of 14407
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. ..$ :'data.frame':  1 obs. of  5 variables:
#>   .. .. [list output truncated]
#>   ..$ works    :List of 14407
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  12 obs. of  6 variables:
#>   .. ..$ :'data.frame':  7 obs. of  7 variables:
#>   .. ..$ :'data.frame':  6 obs. of  7 variables:
#>   .. ..$ :'data.frame':  10 obs. of  7 variables:
#>   .. ..$ :'data.frame':  6 obs. of  7 variables:
#>   .. ..$ :'data.frame':  5 obs. of  6 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  7 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  7 obs. of  6 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  6 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  5 obs. of  6 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  7 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  7 obs. of  7 variables:
#>   .. ..$ :'data.frame':  5 obs. of  7 variables:
#>   .. ..$ :'data.frame':  10 obs. of  6 variables:
#>   .. ..$ :'data.frame':  7 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  6 obs. of  6 variables:
#>   .. ..$ :'data.frame':  6 obs. of  7 variables:
#>   .. ..$ :'data.frame':  6 obs. of  7 variables:
#>   .. ..$ :'data.frame':  7 obs. of  7 variables:
#>   .. ..$ :'data.frame':  6 obs. of  7 variables:
#>   .. ..$ :'data.frame':  6 obs. of  7 variables:
#>   .. ..$ :'data.frame':  11 obs. of  7 variables:
#>   .. ..$ :'data.frame':  6 obs. of  7 variables:
#>   .. ..$ :'data.frame':  6 obs. of  7 variables:
#>   .. ..$ :'data.frame':  6 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  7 obs. of  7 variables:
#>   .. ..$ :'data.frame':  7 obs. of  7 variables:
#>   .. ..$ :'data.frame':  10 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  10 obs. of  7 variables:
#>   .. ..$ :'data.frame':  7 obs. of  6 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  7 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  7 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  10 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  12 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  11 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  10 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  11 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  10 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  11 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  7 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  6 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  6 variables:
#>   .. ..$ :'data.frame':  6 obs. of  7 variables:
#>   .. ..$ :'data.frame':  21 obs. of  6 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  7 obs. of  6 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  7 obs. of  7 variables:
#>   .. ..$ :'data.frame':  7 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  10 obs. of  7 variables:
#>   .. ..$ :'data.frame':  11 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  7 obs. of  7 variables:
#>   .. ..$ :'data.frame':  5 obs. of  7 variables:
#>   .. ..$ :'data.frame':  9 obs. of  7 variables:
#>   .. ..$ :'data.frame':  8 obs. of  7 variables:
#>   .. .. [list output truncated]
```
