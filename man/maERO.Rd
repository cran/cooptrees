\name{maERO}
\alias{maERO}
\title{ERO rule for minimum cost arborescence problems}
\usage{
maERO(nodes, arcs)
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
\code{maERO} returns a matrix with the agents and their
costs.
}
\description{
Given a graph with a minimum cost arborescence, the
\code{maERO} function divides the cost of the arborescence
among the agents according to the ERO rule. For that
purpose, the irreducible form of the problem is obtained.
The ERO rule is just the Shapley value of the cooperative
game associated with the irreducible form.
}
\examples{
# Graphs
nodes <- 1:4
arcs <- matrix(c(1,2,7, 1,3,6, 1,4,4, 2,3,8, 2,4,6, 3,2,6,
                 3,4,5, 4,2,5, 4,3,7), ncol = 3, byrow = TRUE)
# ERO
maERO(nodes, arcs)
}
\seealso{
The more general function \link{maRules}.
}

