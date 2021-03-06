% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/covsep.R
\name{renormalize_mtnorm}
\alias{renormalize_mtnorm}
\title{renormalize a matrix normal random matrix to have iid entries}
\usage{
renormalize_mtnorm(X, C1, C2, type = "full")
}
\arguments{
\item{X}{a matrix normal random matrix with mean zero}

\item{C1}{row covariance}

\item{C2}{column covariance}

\item{type}{the type of renormalization to do.  Possible options are 'no',
'diag' or 'full' (see details section).}
}
\value{
A matrix with renormalized entries
}
\description{
renormalize a matrix normal random matrix to have iid entries
}
\section{Details}{

\code{ type } can take the values \describe{
    \item{'diag'}{each entry of \code{X} is renormalized by its marginal standard deviation}
    \item{'full'}{\code{X} is renormalized by its root inverse covariance}
}
}

\examples{
Data  <-  rmtnorm(30, C1, C2)
ans  <-  renormalize_mtnorm(Data[1,,], C1, C2)
}
