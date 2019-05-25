#' Source all Scripts
#'
#' This function will source every file within the target directory. It is not very useful but it is an interesting idea.
#'
#' @param directory string naming the folder to source
#' @param recursively logical, continue into subfolders too?
#'
#' @return NULL
#' @export
#'
#' @examples
source_all = function(directory,recursively=FALSE) {
  files = dir(path=directory,recursive=recursively);
  for (i in 1:length(files)) {
    source(files[i])
  }
}
