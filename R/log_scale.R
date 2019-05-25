#' Logarithmic sequence
#'
#' @param from lower endpoint
#' @param to upper endpoint
#' @param length number of points
#' @param want.base.e logical. If FALSE then used base-10 logarithm
#'
#' @return
#' @export
#'
#' @examples
logseq <- function(from=1, to=1, length,want.base.e = TRUE){

  if(want.base.e == TRUE){
    exp(seq(log(from), log(to), length=length))
  }
  else{
    10^(seq(log10(from), log10(to), length=length))
  }
}


pretty.log <- function(x, ntarget=10){
  ## pretty labels with log scaling to cover range(x)
  if (!any(x>0)) stop('no positive elements in x')
  x <- x[x>0]
  if (length(unique(x))<=1) x <- x[1] * c(.1, 1, 10) # ad hoc
  rng <- range(x)
  decades <- diff(log10(rng))
  labsPerDec <- ntarget/decades
  if (labsPerDec < 1){
    base <- 1 # use powers of 10
    by <- ceiling(1/labsPerDec)
    if (by>4) 3*round(by/3) # prefer multiples of 3
    if (by%%3==0){ # powers of 3
      pow <- seq(3*floor(log10(rng[1])/3),
                 to=3*ceiling(log10(rng[2])/3) + by-1,
                 by=by)
    }
    else
      pow <- seq(floor(log10(rng[1])),
                 to=floor(log10(rng[2]))+by-1,
                 by=by)
  } else {# multiple labels per decade
    pow <- seq(floor(log10(rng[1])), ceiling(log10(rng[2])))
    if (labsPerDec > 8) base <- 1:10
    else if (labsPerDec >=3) base <- c(1,2,5)
    else if (labsPerDec > 1.5) base <- c(1,3)
    else base <- 1
  }
  cuts <- c(outer(base, 10^pow))
  ok <- cuts >= max(cuts[cuts<=rng[1]]) & cuts <= min(cuts[cuts>=rng[2]])
  cuts <- unique(cuts[ok])
  cuts
}
