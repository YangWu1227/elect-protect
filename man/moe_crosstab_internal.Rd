% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/custom-table-functions.R
\name{moe_crosstab_internal}
\alias{moe_crosstab_internal}
\title{Crosstab}
\usage{
moe_crosstab_internal(df, x, y, weight)
}
\arguments{
\item{df}{A data frame.}

\item{x}{A length-one character vector for the independent variables.}

\item{y}{A length-one character vector for the dependent variable.}

\item{weight}{A length-one character vector for the weight variable.}
}
\value{
A \code{data.table} object.
}
\description{
Internal crosstab function.
}
\keyword{internal}
