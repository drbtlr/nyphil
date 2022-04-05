#' New York Philharmonic Performance History
#'
#' A tidy data version of the New York Philharmonic performance history data.
#'
#' @format A tibble with 154,988 rows and 16 variables:
#' \describe{
#'   \item{id}{chr GUID (To view program: archives.nyphil.org/index.php/artifact/GUID/fullview)}
#'   \item{program_id}{chr Local NYP ID} 
#'   \item{orchestra}{chr Full orchestra name}
#'   \item{season}{chr Defined as Sep 1 - Aug 31, displayed "1842-43"}
#'   \item{event_type}{chr Name of event time (See: http://archives.nyphil.org/index.php/help-performancehistory)}
#'   \item{location}{chr Geographic location of concert (Countries are identified by their current name. For example, even though the orchestra played in Czechoslovakia, it is now identified in the data as the Czech Republic)}
#'   \item{venue}{chr Name of hall, theater, or building where the concert took place}
#'   \item{date}{chr Full ISO date used, but ignore TIME part (1842-12-07T05:00:00Z = Dec. 7, 1842)}
#'   \item{time}{chr 	Actual time of concert, e.g. "8:00PM"}
#'   \item{id_2}{chr Index number used to link soloist(s) and conductor(s) to a specific work on each of the concerts}
#'   \item{composer_name}{chr Composer Last name, First name}
#'   \item{work_title}{chr Title of work (NYP short titles used)}
#'   \item{conductor_name}{chr Last name, first name}
#'   \item{soloist_name}{chr Last name, first name (if multiple soloists on a single work, delimited by semicolon)}
#'   \item{soloist_instrument}{chr Instrument name}
#'   \item{soloist_roles}{chr "S" means "Soloist"; "A" means "Assisting Artist" (if multiple soloists on a single work, delimited by semicolon)}
#' }
#' @source \url{https://archives.nyphil.org/performancehistory}
"nyphil"
