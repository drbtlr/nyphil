library(tidyverse)
library(janitor)
library(jsonlite)


# Download raw data -------------------------------------------------------

# New York Philharmonic performance history data from: https://archives.nyphil.org/performancehistory
# Data downloaded on: 05-Apr-2022
nyphil_raw <- fromJSON('https://raw.githubusercontent.com/nyphilarchive/PerformanceHistory/master/Programs/json/complete.json')


# Expand program data -----------------------------------------------------

# Create dataset of programs
nyphil_programs <- nyphil_raw %>% 
  as_tibble() %>% 
  unnest(programs)


# Expand concert data -----------------------------------------------------

# Function extrapolates `concerts` and `works` program information
unnest_programs <- function(.programID) {
  
  a <- nyphil_programs %>% 
    filter(programID == .programID) %>% 
    unnest(concerts) %>% 
    unnest(works)
  
  my_names <- c("id", "programID", "orchestra", "season", "eventType", 
                "Location", "Venue", "Date", "Time", "ID", "composerName", 
                "workTitle", "conductorName", "soloists")
  
  is_missing <- setdiff(my_names, names(a))
  a[is_missing] <- NA
  a <- a[my_names]
  a <- a %>% mutate(across(id:conductorName, as.character))
  a <- a %>% mutate(soloists = as.list(soloists))
  a <- a %>% filter(ID != "0*")
  a
}

# List programs
programsID_list <- pull(nyphil_programs, programID) %>% unique

# Create dataset of concerts
nyphil_concerts <- map_df(programsID_list, unnest_programs)


# Expand soloist data -----------------------------------------------------

# Function extrapolates `soloists` information
unnest_soloists <- function(.programID) {
  a <- nyphil_concerts %>% 
    filter(programID == .programID) %>% 
    unnest(soloists, keep_empty = TRUE)
  a <- a %>% mutate(across(everything(), as.character))
  a <- a %>% clean_names()
  a
}

# Create dataset of soloists
nyphil <- map_df(programsID_list, unnest_soloists)

nyphil <- nyphil %>% select(-soloists)

usethis::use_data(nyphil, overwrite = TRUE)
