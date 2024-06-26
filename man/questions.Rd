% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/questions.R
\name{questions}
\alias{questions}
\title{Question List}
\usage{
questions()
}
\value{
A \code{ElectProtect_questions} object.
}
\description{
An S3 vector class (subclass of list) containing the survey questions list. The
elements of the list are named such that each column name in the database points
to a specific question, allowing for dynamically (updating) displaying questions on
the server side based on user selection.
}
