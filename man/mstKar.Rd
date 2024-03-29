\name{mstKar}
\alias{mstKar}
\title{Kar rule for minimum cost spanning tree problems}
\usage{
mstKar(nodes, arcs)
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
\code{mstKar} returns a matrix with the agents and their
costs.
}
\description{
Given a graph with at least one minimum cost spanning tree,
the \code{mstKar} function divides the cost of the tree
among the agents according to the Kar rule. That rule is
obtained with the Shapley value of the pessimistic game.
}
\examples{
# Graph
nodes <- 1:4
arcs <- matrix(c(1,2,6, 1,3,10, 1,4,6, 2,3,4, 2,4,6, 3,4,4),
               byrow = TRUE, ncol = 3)
# Kar
mstKar(nodes, arcs)
}
\seealso{
The more general function \link{mstRules}.
}

