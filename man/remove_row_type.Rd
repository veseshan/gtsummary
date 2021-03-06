% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/remove_row_type.R
\name{remove_row_type}
\alias{remove_row_type}
\title{Remove rows by type}
\usage{
remove_row_type(
  x,
  variables = everything(),
  type = c("header", "reference", "missing")
)
}
\arguments{
\item{x}{gtsummary object}

\item{variables}{variables to to remove rows from. Default is \code{everything()}}

\item{type}{type of row to remove. Must be one of
\code{c("header", "reference", "missing")}}
}
\description{
Removes either the header, reference, or missing rows from a gtsummary table.
}
\section{Example Output}{

\if{html}{Example 1}

\if{html}{\figure{remove_row_type_ex1.png}{options: width=60\%}}
}

\examples{
# Example 1 ----------------------------------
library(dplyr)
remove_row_type_ex1 <-
  trial \%>\%
  select(trt, age) \%>\%
  mutate(
    age60 = case_when(age < 60 ~ "<60", age >= 60 ~ "60+")
  ) \%>\%
  tbl_summary(by = trt, missing = "no") \%>\%
  remove_row_type(age60, type = "header")
}
