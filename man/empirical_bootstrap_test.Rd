% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/covsep.R
\name{empirical_bootstrap_test}
\alias{empirical_bootstrap_test}
\title{Projection-based empirical bootstrap test for separability of covariance structure}
\usage{
empirical_bootstrap_test(Data, L1 = 1, L2 = 1, studentize = "full",
  B = 1000, verbose = TRUE)
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

\item{studentize}{parameter to specify which type of studentization is performed. Possible options are 'no', 'diag' or 'full' (see details section).}

\item{B}{number of bootstrap replicates to be used.}

\item{verbose}{logical parameter for printing progress}
}
\value{
The p-value of the test for each pair \code{(l1,l2) = (L1[k], L2[k])}, for \code{k = 1:length(L1)}.
}
\description{
This function performs the test for the separability of covariance structure
of a random surface based on the empirical bootstrap procedure described in
the paper \url{http://arxiv.org/abs/1505.02023}.
}
\section{Details}{


This function performs the test of separability 
of the covariance structure for a random surface (introduced in the paper
\url{http://arxiv.org/abs/1505.02023}), when generated from a Gaussian
process. The sample surfaces need to be measured on a common regular grid. The test
consider a subspace formed by the tensor product of eigenfunctions of the separable
covariances. It is possible to specify the number of eigenfunctions to be considered
in each direction. 

If L1 and L2 are vectors, they need to be of the same length.

The function tests for separability using the projection of the covariance
operator in the separable eigenfunctions \code{u_i x v_j : i = 1, \ldots, l1;
j = 1, \ldots, l2}, for each pair (l1,l2) = (L1[k], L2[k]), for k = 1:length(L1).

\code{studentize} can take the values \describe{
    \item{'full'}{default & recommended method. Yhe projection coordinates are renormalized by an estimate of
    their joint covariance}
    \item{'no'}{NOT RECOMMENDED. No studentization is performed}
    \item{'diag'}{NOT RECOMMENDED. Each projection coordinate is renormalized by an estimate of its standard deviation}
}

\code{B} the number of bootstrap replicates (1000 by default).

\code{verbose} to print the progress of the computations (TRUE by default)
}

\examples{
data(SurfacesData)
\donttest{empirical_bootstrap_test(SurfacesData)}
empirical_bootstrap_test(SurfacesData, B=100)
\donttest{empirical_bootstrap_test(SurfacesData,L1=2,L2=2, B=1000, studentize='full')}
}
\references{
\cite{Aston, John A. D.; Pigoli, Davide; Tavakoli, Shahin. Tests for
separability in nonparametric covariance operators of random surfaces. Ann.
Statist. 45 (2017), no. 4, 1431--1461. doi:10.1214/16-AOS1495.
https://projecteuclid.org/euclid.aos/1498636862}
}
\seealso{
\code{\link{gaussian_bootstrap_test}}, \code{\link{clt_test}}
}
