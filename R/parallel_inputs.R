#' Parallel Input Constructor
#'
#' This function creates the cartesian product of the input vectors that are supplied to it. The list can then be used within the parallel package's parLapply function for doing batch simulations.
#'
#' @param ... collection of input parameter vectors
#' @param list logical. return as list (otherwise a matrix)
#'
#' @return list or matrix of cartesian product of inputs
#' @export
#'
#' @details If you use variable names in the funtion call then the returning matrix or list will have the same variables names as column names. This can be useful for data management when doing postprocessing.
#' @examples
#' parallel_inputs(alpha=1:10,beta=2:10)
parallel_inputs <- function(...,list = TRUE) {
  c_prod <- expand.grid(list(...))
  message(sprintf("Design has %d parameters and %d runs",ncol(c_prod),nrow(c_prod)))
  if (list == TRUE) {
    return(lapply(1:nrow(c_prod), function(j) c_prod[j,]))
  } else {
    return(c_prod)
  }
}
