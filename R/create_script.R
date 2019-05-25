#' Create a Script with Header
#'
#' Creates a scripts with documentation header without the need to copy and paste things into the editor.
#'
#' @param filename string (without .R)
#' @param title  string
#'
#' @return NULL
#' @export
#'
#' @examples
#' create_script("my_new_script", "My New Script")
create_script <- function(filename,title=NULL) {
  filename <- paste(filename,".R",sep = "")
  if (is.null(title)) {
    cat("# ***title***\n",file = filename,append = TRUE)
  } else {
    cat(sprintf("# %s\n",title),file = filename,append = TRUE)
  }
  date <- format(Sys.time(), "%b %d, %Y")
  cat(sprintf("# Filename: %s\n",filename),file = filename,append = TRUE)
  cat("# Written by: Isaac Michaud\n",file = filename,append = TRUE)
  cat(sprintf("# Created: %s\n",date),file = filename,append = TRUE)
  cat(sprintf("# Edited: %s\n",date),file = filename,append = TRUE)
  cat("# Description:\n",file = filename,append = TRUE)
}

