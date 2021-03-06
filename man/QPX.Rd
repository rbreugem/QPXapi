% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/QPX.R
\name{QPX}
\alias{QPX}
\title{Call QPX API}
\usage{
QPX(apikey, origin, destination, date, oneway = TRUE, formatted = TRUE)
}
\arguments{
\item{apikey}{The authentication key. See https://developers.google.com/qpx-express/v1/prereqs for details on how to obtain your API key.}

\item{origin}{Airport or city IATA designator of the origin.}

\item{destination}{Airport or city IATA designator of the destination.}

\item{date}{Departure date in YYYY-MM-DD format. If oneway is set to FALSE, the date argument must be a vector of length 2 with depart and return date.}

\item{oneway}{Boolean identifying if one way or return flight is requested.}

\item{formatted}{Boolean identifying if the results should be formatted in a R data.frame or returned as a list. The dataframe only contains some of the fields}
}
\description{
Function that calls the QPX API and returns the resulting flights
}
\examples{
resp <- QPX(apikey = 'yourapikey', origin = 'PSA', destination = 'LON', date = Sys.Date() + 1)
resp <- QPX(apikey = 'yourapikey', origin = 'PSA', destination = 'LON', date = c(Sys.Date() + 1, Sys.Date() + 7), oneway = FALSE)
}

