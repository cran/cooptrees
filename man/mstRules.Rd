\name{mstRules}
\alias{mstRules}
\title{Allocation rules for minimum cost spanning tree problem}
\usage{
mstRules(nodes, arcs, rule, algorithm = "Kruskal", show.data = TRUE)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{rule}{denotes the chosen allocation rule: "Bird",
  "Dutta-Kar", "Kar" or "ERO".}

  \item{algorithm}{denotes the algorithm used with the ERO
  rule: "Kruskal".}

  \item{show.data}{logical value indicating if the function
  displays the console output\code{TRUE} or no
  \code{FALSE}. The deafult is \code{TRUE}.}
}
\value{
\code{mstRules} returns a matrix with the agents and the
cost that each one of them has to pay. It also prints the
result in console.
}
\description{
Given a graph with at least one minimum cost spanning tree,
the \code{mstRules} function divides the cost of the tree
among the agents according to the most known rules: "Bird",
"Dutta-Kar", "Kar", "ERO".
}
\examples{
# Graph
nodes <- 1:4
arcs <- matrix(c(1,2,6, 1,3,10, 1,4,6, 2,3,4, 2,4,6, 3,4,4),
               byrow = TRUE, ncol = 3)
# Allocation Rules
mstRules(nodes, arcs, rule = "Bird")
mstRules(nodes, arcs, rule = "Dutta-Kar")
mstRules(nodes, arcs, rule = "Kar")
mstRules(nodes, arcs, rule = "ERO", algorithm = "Kruskal")
}

