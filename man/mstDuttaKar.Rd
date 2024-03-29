\name{mstDuttaKar}
\alias{mstDuttaKar}
\title{Dutta-Kar rule for minimum cost spanning tree problems}
\usage{
mstDuttaKar(nodes, arcs)
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
\code{mstDuttaKar} returns a matrix with the agents and
their costs.
}
\description{
Given a graph with at least one minimum cost spanning tree,
the \code{mstDuttaKar} function divides the cost of the
tree obtained with Prim's algorithm among the agents
according to the Dutta-Kar rule. This rule specifies that
each agent chooses to pay the minimum cost between the last
arc that connects him to the source and the cost that
rejects his successor. The order is set by Prim's
algorithm.
}
\examples{
# Graph
nodes <- 1:4
arcs <- matrix(c(1,2,6, 1,3,10, 1,4,6, 2,3,4, 2,4,6, 3,4,4),
               byrow = TRUE, ncol = 3)
# Dutta-Kar
mstDuttaKar(nodes, arcs)
}
\seealso{
The more general function \link{mstRules}.
}

