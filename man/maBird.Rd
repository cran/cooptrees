\name{maBird}
\alias{maBird}
\title{Bird rule for minimum cost arborescence problems}
\usage{
maBird(nodes, arcs)
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
\code{maBird} returns a matrix with the agents and their
costs.
}
\description{
Given a graph with a minimum cost arborescence, the
\code{maBird} function divides the cost of this
arborescence among the agents. For that purpose it, uses
the Bird rule, where each agent pays the cost of the last
arc that connects him to the source.
}
\examples{
# Graph
nodes <- 1:4
arcs <- matrix(c(1,2,7, 1,3,6, 1,4,4, 2,3,8, 2,4,6, 3,2,6,
                 3,4,5, 4,2,5, 4,3,7), ncol = 3, byrow = TRUE)
# Bird
maBird(nodes, arcs)
}
\seealso{
The more general function \link{maRules}.
}

