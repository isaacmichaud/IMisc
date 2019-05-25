get_random_seed <- function(n) {
  random::randomNumbers(n = n, min = -1e9, max = 1e9, col=1, check = TRUE)
}
