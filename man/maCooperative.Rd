\name{maCooperative}
\alias{maCooperative}
\title{Cooperation in minimum cost arborescence problems}
\usage{
maCooperative(nodes, arcs, show.data = TRUE)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{show.data}{logical value indicating if the function
  displays the console output (\code{TRUE}) or not
  (\code{FALSE}). By default its value is \code{TRUE}.}
}
\value{
\code{maCooperative} returns and prints a list with the
cooperative games and allocation rules of a minimum cost
arborescence problem.
}
\description{
Given a graph with at least one minimum cost arborescence,
the \code{maCooperative} function computes the cooperative
and "Bird" and "ERO" rules.
}
\examples{
# Graph
nodes <- 1:4
arcs <- matrix(c(1,2,2, 1,3,3, 1,4,4, 2,3,3, 2,4,4, 3,2,3,
                 3,4,1, 4,2,1, 4,3,2), ncol = 3, byrow = TRUE)
# Cooperation in minimum cost arborescence problems
maCooperative(nodes, arcs)
}

