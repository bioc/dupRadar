% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/markDuplicates.R
\name{markDuplicates}
\alias{markDuplicates}
\title{Program dispatchers to mark duplicated reads from a BAM file}
\usage{
markDuplicates(
  dupremover = c("bamutil", "picard"),
  bam = NULL,
  out = gsub("\\\\.bam$", "_duprm.bam", bam),
  rminput = TRUE,
  path = ".",
  verbose = TRUE,
  ...
)
}
\arguments{
\item{dupremover}{The tool to be called. Currently, "picard" and "bamutils"
are supported}

\item{bam}{The bam file to mark duplicates from}

\item{out}{Regular expression describing the transformation on the original
filename to get the output filename. By default, a "_duprm" suffix is 
added before the bam extension}

\item{rminput}{Whether to keep the original, non duplicate-marked, bam file}

\item{path}{Path to the duplicate marker binaries}

\item{verbose}{Redirect all the program output to the R console}

\item{...}{Other parameters sent to the caller function}
}
\value{
The output filename
}
\description{
\code{markDuplicates} Mark duplicated reads from a BAM file by calling
  widely used tools.
}
\details{
This function works as a wrapper for several tools widely adopted tr mark
duplicated reads in a BAM file. Currently, it supports PICARD and BamUtils.
}
\examples{
\dontrun{
bam <- system.file("extdata","sample1Aligned.out.bam",package="dupRadar")
gtf <- "genes.gtf"
stranded <- 2    # '0' (unstranded), '1' (stranded) and '2' (reverse)
paired   <- FALSE
threads  <- 4

# call the duplicate marker and analyze the reads
bamDuprm <- markDuplicates(dupremover="bamutil",bam,
                           path="/opt/bamUtil-master/bin",rminput=FALSE)
dm <- analyzeDuprates(bamDuprm,gtf,stranded,paired,threads)
}
}
