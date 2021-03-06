% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/covsep.R
\name{generate_surface_data}
\alias{generate_surface_data}
\title{Generate surface data}
\usage{
generate_surface_data(N, C1, C2, gamma, distribution = "gaussian")
}
\arguments{
\item{N}{sample size}

\item{C1}{row covariance}

\item{C2}{column covariance}

\item{gamma}{parameter to specify how much the covariance is separable.}

\item{distribution}{distribution of the data}
}
\value{
A \code{N x dim(C1)[1] x dim(C2)[1]} array containing the
generated data
}
\description{
Generate samples of surface data
}
\section{Details}{

\code{gamma} can take values between 0 and 1; \code{gamma=0} corresponds to
a separable covariance, \code{gamma=1} corresponds to a non-separable
covariance (described in the paper \url{http://arxiv.org/abs/1505.02023}).
Values of \code{gamma} between 0 and 1 corresponds to an interpolation between
these two covariances

\code{ distribution } can take the values 'gaussian' or 'student'
}

\examples{
Data = generate_surface_data(30, C1, C2, gamma=0)

}
\references{
\cite{Aston, John A. D.; Pigoli, Davide; Tavakoli, Shahin. Tests for
separability in nonparametric covariance operators of random surfaces. Ann.
Statist. 45 (2017), no. 4, 1431--1461. doi:10.1214/16-AOS1495.
https://projecteuclid.org/euclid.aos/1498636862}
}
