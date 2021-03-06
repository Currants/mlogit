\name{distribution}
\alias{distribution}
\alias{med}
\alias{rg}
\alias{stdev}
\alias{mean.rpar}
\alias{med.rpar}
\alias{stdev.rpar}
\alias{rg.mlogit}
\alias{mean.mlogit}
\alias{med.mlogit}
\alias{stdev.mlogit}
\alias{rg.rpar}
\alias{qrpar}
\alias{prpar}
\alias{drpar}
\alias{qrpar.rpar}
\alias{prpar.rpar}
\alias{drpar.rpar}
\alias{qrpar.mlogit}
\alias{prpar.mlogit}
\alias{drpar.mlogit}


\title{Functions used to describe the characteristics of estimated
  random parameters}
\description{
  \code{rpar} objects contain all the relevant information about
  the distribution of random parameters. These functions enables to
  obtain easily descriptive statistics, density, probability and
  quantiles of the distribution.
}
\usage{
med(x, ...)
stdev(x, ...)
rg(x, ...)
qrpar(x, ...)
prpar(x, ...)
drpar(x, ...)
\method{mean}{rpar}(x, norm = NULL, ...)
\method{med}{rpar}(x, norm = NULL, ...)
\method{stdev}{rpar}(x, norm = NULL, ...)
\method{rg}{rpar}(x, norm = NULL, ...)
\method{mean}{mlogit}(x, par = NULL, norm = NULL, ...)
\method{med}{mlogit}(x, par = NULL, norm = NULL, ...)
\method{stdev}{mlogit}(x, par = NULL, norm = NULL, ...)
\method{rg}{mlogit}(x, par = NULL, norm = NULL, ...)
\method{stdev}{rpar}(x, norm = NULL, ...)
\method{qrpar}{rpar}(x, norm = NULL, ...)
\method{prpar}{rpar}(x, norm = NULL, ...)
\method{drpar}{rpar}(x, norm = NULL, ...)
\method{qrpar}{mlogit}(x, par = 1, y = NULL, norm = NULL, ...)
\method{prpar}{mlogit}(x, par = 1, y = NULL, norm = NULL, ...)
\method{drpar}{mlogit}(x, par = 1, y = NULL, norm = NULL, ...)

}
\arguments{
  \item{x}{ a \code{mlogit} or a \code{rpar} object,}
  \item{norm}{the variable used for normalization if any :  for the
    \code{mlogit} method, this should be the name of the parameter, for
    the \code{rpar} method the absolute value of the parameter,}
  \item{par}{the required parameter(s) for the \code{mlogit} methods (either
    the name or the position of the parameter(s). If \code{NULL}, all
    the random parameters are used.}
  \item{y}{values for which the function has to be evaluated,}
  \item{...}{further arguments.}
}
\value{
  a numeric vector for \code{qrpar}, \code{drpar} and \code{prpar}, a
  numeric vector for \code{mean}, \code{stdev} and \code{med} and a
  numeric matrix for \code{rg}.
}
\details{
  \code{mean}, \code{med}, \code{stdev} and \code{rg} compute
  respectively the mean, the median, the standard deviation and the
  range of the random parameter. \code{qrpar}, \code{prpar},
  \code{drpar} return functions that compute the quantiles, the
  probability and the density of the random parameters (note that
  \code{sd} and \code{range} are not generic function in \code{R} and
  that \code{median} is, but without \code{...}).
}
\seealso{
  \code{\link{mlogit}} for the estimation of random parameters logit models
  and \code{\link{rpar}} for the description of \code{rpar} objects.
}
%\examples{
%}
\author{Yves Croissant}
\keyword{regression}