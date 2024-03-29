\name{mstOptimistic}
\alias{mstOptimistic}
\title{Optimistic game of a minimum cost spanning tree problem}
\usage{
mstOptimistic(nodes, arcs)
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
\code{mstOptimistic} returns a vector with the
characteristic function of the optimistic game.
}
\description{
Given a graph with at least one minimum cost spanning tree,
the \code{mstOptimistic} function builds the optimistic
game associated with it.
}
\examples{
# Graph
nodes <- 1:4
arcs <- matrix(c(1,2,6, 1,3,10, 1,4,6, 2,3,4, 2,4,6, 3,4,4),
               byrow = TRUE, ncol = 3)
# Optimistic game
mstOptimistic(nodes, arcs)
}
\seealso{
The more general function \link{mstGames}.
}

