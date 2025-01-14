% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glottostat.R
\name{glottostat_permanova}
\alias{glottostat_permanova}
\title{Permanova across all groups (overall or pairwise)}
\usage{
glottostat_permanova(
  glottodata,
  comparison = NULL,
  sample = NULL,
  permutations = NULL
)
}
\arguments{
\item{glottodata}{glottodata or glottosubdata}

\item{comparison}{Either "overall" or "pairwise"}

\item{sample}{sample table (optional). By default, searches for sample table in glottodata/glottosubdata.}

\item{permutations}{Number of permutations (default is 999)}
}
\description{
Permanova across all groups (overall or pairwise)
}
\examples{
glottodata <- glottoget("demodata", meta = TRUE)
glottostat_permanova(glottodata, comparison = "pairwise")

# Use subgroup as group
glottodata[["sample"]][,"group"] <- glottodata[["sample"]][,"group"]
glottostat_permanova(glottodata, comparison = "pairwise")

glottosubdata <- glottoget("demosubdata", meta = TRUE)
glottostat_permanova(glottodata = glottosubdata, comparison = "pairwise")
}
\keyword{invisible}
