\name{mstIrreducible}
\alias{mstIrreducible}
\title{Irreducible form for a minimum cost spanning tree problem}
\usage{
mstIrreducible(nodes, arcs)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}
}
\value{
\code{mstIrreducible} returns a matrix with the list of
arcs of the irreducible form.
}
\description{
Given a graph with at least one minimum cost spanning tree,
the \code{mstIrreducible} function obtains the irreducible
form.
}
\examples{
# Graph
nodes <- 1:4
arcs <- matrix(c(1,2,6, 1,3,10, 1,4,6, 2,3,4, 2,4,6, 3,4,4),
               byrow = TRUE, ncol = 3)
# Irreducible form
mstIrreducible(nodes, arcs)
}

