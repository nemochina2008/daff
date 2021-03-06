% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/merge-data.R
\name{which_conflicts}
\alias{which_conflicts}
\title{return which rows of a merged \code{data.frame} contain conflicts}
\usage{
which_conflicts(merged)
}
\arguments{
\item{merged}{\code{data.frame} merged data.frame with possible conflicts.}
}
\value{
\code{integer} vector with row positions containing conflicts.
}
\description{
return which rows of a merged \code{data.frame} contain conflicts.
}
\examples{
parent <- a <- b <- iris[1:3,]
a[1,1] <- 10
b[2,1] <- 11
# succesful merge
merge_data(parent, a, b)

parent <- a <- b <- iris[1:3,]
a[1,1] <- 10
b[1,1] <- 11
# conflicting merge (both a and b change same cell)
merged <- merge_data(parent, a, b)
merged #note the conflict

#find out which rows contain a conflict
which_conflicts(merged)
}
\seealso{
\code{\link{merge_data}}
}
