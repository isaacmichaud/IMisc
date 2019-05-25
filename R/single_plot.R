#' Single R plot
#'
#' Resets the plot window to only have a single frame. Many people's plotting code forgets to clean up after themselves.
#'
#' @return NULL
#' @export
#'
#' @examples
single_plot <- function(){
  par(mfrow=c(1,1))
}
