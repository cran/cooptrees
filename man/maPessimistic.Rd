\name{maPessimistic}
\alias{maPessimistic}
\title{Pessimistic game associated with minimum cost arborescences}
\usage{
maPessimistic(nodes, arcs)
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
\code{maPessimistic} returns a vector with the
characteristic function of the pessimitic game.
}
\description{
Given a graph with at least one minimum cost arborescence,
the \code{maPessimistic} function builds the pessimistic
game.
}
\examples{
# Graph
nodes <- 1:4
arcs <- matrix(c(1,2,7, 1,3,6, 1,4,4, 2,3,8, 2,4,6, 3,2,6,
                 3,4,5, 4,2,5, 4,3,7), ncol = 3, byrow = TRUE)
# Pessimistic game
maPessimistic(nodes, arcs)
}

