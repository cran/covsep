% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/covsep.R
\name{clt_test}
\alias{clt_test}
\title{Test for separability of covariance operators for Gaussian process.}
\usage{
clt_test(Data, L1, L2)
}
\arguments{
\item{Data}{a (non-empty) \code{N x d1 x d2} array of data values. The first
direction indices the \eqn{N} observations, each consisting of a \code{d1 x d2}
discretization of the surface, so that \code{Data[i,,]} corresponds to the
i-th observed surface.}

\item{L1}{an integer or vector of integers in \eqn{1:p} indicating the
eigenfunctions in the first direction to be used for the test.}

\item{L2}{an integer or vector of integers in \eqn{1:q} indicating the
eigenfunctions in the second direction to be used for the test.}
}
\value{
The p-value of the test for each pair \code{(l1,l2) = (L1[k], L2[k])}, for \code{k = 1:length(L1)}.
}
\description{
This function performs the asymptotic test  for the separability of the covariance operator for a random surface generated from a Gaussian process (described in the paper \url{http://arxiv.org/abs/1505.02023}).
}
\section{Details}{


If L1 and L2 are vectors, they need to be of the same length.

The function tests for separability using the projection of the covariance
operator in the separable eigenfunctions \code{u_i tensor v_j : i = 1, \ldots, l1;
j = 1, \ldots, l2}, for each pair \code{(l1,l2) = (L1[k], L2[k])}, for \code{k = 1:length(L1)}.

The test works by using asymptotics, and is
only valid if the data is assumed to be Gaussian.

The surface data needs to be measured or resampled on a common regular grid
or on common basis functions.
}

\examples{
data(SurfacesData)
clt_test(SurfacesData, L1=c(1,2), L2=c(1,4))

}
\references{
\cite{Aston, John A. D.; Pigoli, Davide; Tavakoli, Shahin. Tests for
separability in nonparametric covariance operators of random surfaces. Ann.
Statist. 45 (2017), no. 4, 1431--1461. doi:10.1214/16-AOS1495.
https://projecteuclid.org/euclid.aos/1498636862}
}
\seealso{
\code{\link{empirical_bootstrap_test}}, \code{\link{gaussian_bootstrap_test}}
}
