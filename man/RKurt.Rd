\name{rKurt}
\alias{rKurt}
\title{
Realized kurtosis of highfrequency return series. 
}
\description{
 
Function returns Realized kurtosis, defined in Amaya et al. (2011).

Assume there is \eqn{N} equispaced returns in period \eqn{t}. Let \eqn{r_{t,i}} be a return (with \eqn{i=1, \ldots,N}) in period \eqn{t}.

Then, the rKurt is given by
\deqn{
\mbox{rKurt}_{t}= \frac{N \sum_{i=1}^{N}(r_{t,i})^4}{RV_{t}^2} 
}
in which
\eqn{RV_t:} realized variance
}

\usage{
rKurt (rdata,align.by=NULL,align.period=NULL,makeReturns=FALSE,...)
}

\arguments{
  \item{rdata}{a zoo/xts object containing all returns in period t for one asset.}
  \item{align.by}{a string, align the tick data to "seconds"|"minutes"|"hours"}
  \item{align.period}{an integer, align the tick data to this many [seconds|minutes|hours].}  
  \item{makeReturns}{boolean, should be TRUE when rdata contains prices instead of returns. FALSE by   default.} 
  \item{...}{additional arguments.}
}

\value{
numeric
}
\references{
Amaya, D., Christoffersen, P., Jacobs, K. and Vasquez, A. (2011). Do realized skewness and kurtosis predict the cross-section of equity returns?. CREATES research paper. p. 3-7.
}
\author{
Giang Nguyen, Jonathan Cornelissen and Kris Boudt
}

\examples{
data(sample_tdata)
rKurt(sample_tdata$PRICE,align.by ="minutes", align.period =5, makeReturns = TRUE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ highfrequency }
\keyword{ rKurt }
