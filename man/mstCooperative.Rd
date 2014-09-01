\name{mstCooperative}
\alias{mstCooperative}
\title{Cooperation in minimum cost spanning tree problems}
\usage{
mstCooperative(nodes, arcs, show.data = TRUE)
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
\code{mstCooperative} returns and print a list with the
cooperative games and the allocation rules of a minimum
cost spanning tree problem.
}
\description{
Given a graph with at least one minimum cost spanning tree,
the \code{mstCooperative} function computes the pessimistic
and optimistic games; and the most known allocation rules:
"Bird", "Dutta-Kar","Kar" and "ERO".
}
\examples{
# Graph
nodes <- 1:4
arcs <- matrix(c(1,2,6, 1,3,10, 1,4,6, 2,3,4, 2,4,6, 3,4,4),
               byrow = TRUE, ncol = 3)
# Cooperation in minimum cost spanning tree problems
mstCooperative(nodes, arcs)
}

