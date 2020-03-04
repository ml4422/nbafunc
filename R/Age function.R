#' Age function
#'
#' This function allows you to select the oldest player in the NBA data for that year.
#' @param year
#' @keywords age
#' @export
#' @examples
#' year_oldest()

year_oldest<-function(year){
    a<-dplyr::filter(Seasons_Stats_NBA, Year == year)
    b<-dplyr::filter(a,Age == max(Age))
    c<-dplyr::filter(b,FTr == max(FTr))    # if multiple player have same age it return the player with the highest free throw rate.
    dplyr::select(c,Player, Age)
}


