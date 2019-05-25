#' Demonstrate ... Argument
#'
#' This function just demonstrates how you can use the ... construct to pass any collection of arrays to a function for processing. Used as a prototype for the parallel_inputs function.
#'
#' @param ... any collection of arguments
#'
#' @return nothing
#' @export
#'
#' @examples
#' print_inputs(1:3,1:5,1:9)
print_inputs <- function(...) {
  args = list(...)
  for (i in seq_along(args)) {
    print(args[[i]])
  }
}
