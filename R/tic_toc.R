tic <- function() {
  start_tic_toc_run_time <<- proc.time()
}

toc <- function() {
  if (exists("start_tic_toc_run_time")) {
    print(proc.time() - start_tic_toc_run_time)
    rm("start_tic_toc_run_time", envir = .GlobalEnv)
  } else {
    warning("tic must be executed before toc")
  }
}
