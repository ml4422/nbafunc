#' Correlation function
#'
#' This function allows you to select the correlation matrix for all numeric variables in the data for that year.
#' @param year
#' @keywords
#' @export
#' @examples
#' year_corr()

year_corr<-function(year){
    a<-dplyr::filter(Seasons_Stats_NBA, Year == year)
    b<-dplyr::select_if(a, is.numeric)
    stats::cor(b)
}
