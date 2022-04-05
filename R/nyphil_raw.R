#' New York Philharmonic Performance History (Raw Data) 
#'
#' The original performance history data from the New York Philharmonic.
#'
#' @format A large list containing a 'data.frame' of 14,407 rows and 6 variables:
#' \describe{
#'   \item{id}{a character string denoting the GUID: to view program: archives.nyphil.org/index.php/artifact/GUID/fullview}
#'   \item{programID}{a character string denoting the local NYP ID} 
#'   \item{orchestra}{a character string denoting the full orchestra name}
#'   \item{season}{a character string denoting the season; defined as Sep 1 - Aug 31, displayed "1842-43"}
#'   \item{concerts}{a list of each individual performance within a program}
#'   \item{worls}{a list of each work performed on a program}
#' }
#' @source \url{https://archives.nyphil.org/performancehistory}
"nyphil_raw"