#' ggplot2 converter function
#'
#' This function will take a ggplot object p and convert it into a plot that is suitable for a journal article.
#'
#' @param p A ggplot2 object
#' @param want.bw Change background to white
#' @param axis.text.size Axis text size
#' @param axis.title.size Axis title size
#' @param plot.facet Plot figures across a factor
#' @param strip.text.size
#' @param main.title logical. Main title
#' @param plot.title.size Main title size
#' @param have.legend logical. Legend present in the figure
#' @param legend.text.size Legend text size
#' @param legend.title.size Legend title size
#'
#' @details This function is based on some code I got from Brian Weaver.
#'
#' @author Brian Weaver, Isaac Michaud
#'
#' @return
#' @export
#'
#' @examples
#'
#'
ggplot_converter <- function(p,
                             want.bw = TRUE,
                             axis.text.size = 15,
                             axis.title.size = 15,
                             plot.facet = FALSE,
                             strip.text.size = 15,
                             main.title = FALSE,
                             plot.title.size = 15,
                             have.legend = FALSE,
                             legend.text.size = 10,
                             legend.title.size = 10) {

  ##Change background to white
  if(want.bw==TRUE){
    p <- p + theme_bw()
  }

  ##Increase the text size on the axis for both the axis labels
  ##and the axis titles
  p <- p + theme(axis.text = element_text(size = axis.text.size)) +
    theme(axis.title = element_text(size = axis.title.size))

  ##Check if plot has faceting, supplied by user for now
  ##Would like to determine if there is an automatic way to do this
  if(plot.facet==TRUE){
    p <- p + theme(strip.background = element_rect(fill = 'white',colour = NA)) +
         theme(strip.text = element_text(size = strip.text.size))

  }

  ##Check if plot should increase size of main title
  if(main.title==TRUE){
    p <- p + theme(plot.title = element_text(size=plot.title.size))
  }

  ##Increase sizes of legend attributes
  if(have.legend==TRUE){
    p <- p + theme(legend.text = element_text(size = legend.text.size)) +
             theme(legend.title = element_text(size = legend.title.size))
  }
  return(p)
}
