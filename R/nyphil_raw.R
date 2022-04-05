#' New York Philharmonic Performance History (Raw Data) 
#'
#' The original performance history data from the New York Philharmonic.
#'
#' @format A large list containing a 'data.frame' of 14,407 rows and 6 variables:
#' \describe{
#'   \item{id}{chr 	GUID (To view program: archives.nyphil.org/index.php/artifact/GUID/fullview)}
#'   \item{programID}{chr Local NYP ID} 
#'   \item{orchestra}{chr Full orchestra name}
#'   \item{season}{chr Defined as Sep 1 - Aug 31, displayed "1842-43"}
#'   \item{concerts}{list List of each individual performance within a program}
#'   \item{worls}{list List of each work performed on a program}
#' }
#' @source \url{https://archives.nyphil.org/performancehistory}
"nyphil_raw"