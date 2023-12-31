% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getRpkCumulativeReadCountFraction.R
\name{getRpkCumulativeReadCountFraction}
\alias{getRpkCumulativeReadCountFraction}
\title{Helper function used in \code{readcountExpressionBoxplot}}
\usage{
getRpkCumulativeReadCountFraction(p, DupMat = DupMat)
}
\arguments{
\item{p}{The vector of bins}

\item{DupMat}{The duplication matrix calculated by \code{analyzeDuprates}}
}
\value{
The cumulative read count fraction
}
\description{
\code{getRpkCumulativeReadCountFraction} get the cumulative read count
  fraction
}
