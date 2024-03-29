\name{mstBird}
\alias{mstBird}
\title{Bird rule for minimum cost spanning tree problems}
\usage{
mstBird(nodes, arcs)
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
\code{mstBird} returns a matrix with the agents and their
costs.
}
\description{
Given a graph with at least one minimum cost spanning tree,
the \code{mstBird} function divides the cost of the tree
obtained with Prim's algorithm among the agents. For that
purpose it uses the Bird rule, where each agent pays the
cost of the arc that connects him to the tree source.
}
\examples{
# Graphs
nodes <- 1:4
arcs <- matrix(c(1,2,6, 1,3,10, 1,4,6, 2,3,4, 2,4,6, 3,4,4),
               byrow = TRUE, ncol = 3)
# Bird
mstBird(nodes, arcs)
}
\seealso{
The more general function \link{mstRules}.
}

