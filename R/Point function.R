#' Point function
#'
#' This function allows you to select the player with highest point in the NBA data for that year.
#' @param year
#' @keywords points
#' @export
#' @examples
#' year_point()

year_point<-function(year){
    a<-dplyr::filter(Seasons_Stats_NBA, Year == year)
    b<-dplyr::filter(a,PTS==max(PTS))
    dplyr::select(b,Player, PTS)
}
