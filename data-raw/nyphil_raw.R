library(jsonlite)


# Download raw data -------------------------------------------------------

# New York Philharmonic performance history data from: https://archives.nyphil.org/performancehistory
# Data downloaded on: 05-Apr-2022
nyphil_raw <- fromJSON('https://raw.githubusercontent.com/nyphilarchive/PerformanceHistory/master/Programs/json/complete.json')


usethis::use_data(nyphil_raw, overwrite = TRUE)
