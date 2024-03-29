\name{mstEROKruskal}
\alias{mstEROKruskal}
\title{ERO rule for minimum cost spanning tree problems with Kruskal's algorithm}
\usage{
mstEROKruskal(nodes, arcs)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number from \eqn{1} until the order of
  the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}
}
\value{
\code{mstEROKruskal} returns a matrix with the agents and
their costs.
}
\description{
Given a graph with at least one minimum cost spanning tree,
the \code{mstEROKruskal} function divides the cost of the
tree among the agents according to the ERO rule.
}
\examples{
# Graph
nodes <- 1:4
arcs <- matrix(c(1,2,6, 1,3,10, 1,4,6, 2,3,4, 2,4,6, 3,4,4),
               byrow = TRUE, ncol = 3)
# ERO with Kruskal
mstEROKruskal(nodes, arcs)
}
\seealso{
The more general function \link{mstRules}.
}

