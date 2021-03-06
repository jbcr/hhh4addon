% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_geom_lags.R
\name{distr_lag}
\alias{distr_lag}
\title{Display the function and parameters used for distributed lags}
\usage{
distr_lag(hhh4Obj)
}
\arguments{
\item{hhh4Obj}{an object of class \code{hhh4}}
}
\value{
A list containing the function and parameters characterizing the lag weights
(for both the \code{ar} and \code{ne} components)
}
\description{
Display the function and parameters used for distributed lags
}
\examples{
data("salmonella.agona")
## convert old "disProg" to new "sts" data class
salmonella <- disProg2sts(salmonella.agona)
# specify and fit model: fixed geometric lag structure
# with weight 0.8 for first lag
control_salmonella <- list(end = list(f = addSeason2formula(~ 1)),
                           ar = list(f = addSeason2formula(~ 1),
                           par_lag = 0.8),
                           family = "NegBinM", subset = 6:312)
fit_salmonella <- hhh4_lag(salmonella, control_salmonella)
distr_lag(fit_salmonella)
}
