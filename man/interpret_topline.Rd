% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interpret.R
\name{interpret_topline}
\alias{interpret_topline}
\title{Interpret (Topline)}
\usage{
interpret_topline(var, section_var)
}
\arguments{
\item{var}{A length-one character vector for the topline variable.}

\item{section_var}{A length-one character vector for the section variable used to determine multiple-selection versus non-multiple-selection questions.}
}
\value{
A \code{shiny.tag.list} object.
}
\description{
Function for generating template interpretations for the toplines.
}
