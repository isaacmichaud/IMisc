% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parallel_inputs.R
\name{parallel_inputs}
\alias{parallel_inputs}
\title{Parallel Input Constructor}
\usage{
parallel_inputs(..., list = TRUE)
}
\arguments{
\item{...}{collection of input parameter vectors}

\item{list}{logical. return as list (otherwise a matrix)}
}
\value{
list or matrix of cartesian product of inputs
}
\description{
This function creates the cartesian product of the input vectors that are supplied to it. The list can then be used within the parallel package's parLapply function for doing batch simulations.
}
\details{
If you use variable names in the funtion call then the returning matrix or list will have the same variables names as column names. This can be useful for data management when doing postprocessing.
}
\examples{
parallel_inputs(alpha=1:10,beta=2:10)
}
