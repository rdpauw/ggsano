% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pal_sciensano_d.R
\name{pal_sciensano}
\alias{pal_sciensano}
\title{Sciensano Color Palettes}
\usage{
pal_sciensano(alpha = 1, name = "all")
}
\arguments{
\item{alpha}{Transparency level, a real number in (0, 1].
See \code{alpha} in \code{\link[grDevices]{rgb}} for details.}

\item{name}{Name of the Sciensano palette to use. Please choose between
"all", "primary", "secondary", or "yellowaccent". Default is set to "all".}
}
\description{
Sciensano Color Palettes
}
\examples{
library("scales")
show_col(pal_sciensano()(12))
show_col(pal_sciensano(alpha = 0.6)(12))
}
\author{
Robby De Pauw <\email{Robby.DePauw@sciensano.be}>
}
