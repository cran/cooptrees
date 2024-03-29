\name{maRules}
\alias{maRules}
\title{Allocation rules for minimum cost arborescence problems}
\usage{
maRules(nodes, arcs, rule, show.data = TRUE)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{rule}{denotes the chosen allocation rule: "Bird" or
  "ERO".}

  \item{show.data}{logical value indicating if the function
  displays the console output (\code{TRUE}) or not
  (\code{FALSE}). By default its value is \code{TRUE}.}
}
\value{
\code{maRules} returns a matrix with the agents and their
costs. It also prints the result in console.
}
\description{
Given a graph with at least one minimum cost arborescence,
the \code{maRules} function divides the cost of the
arborescence among the agents according to "Bird" and "ERO"
rules.
}
\examples{
# Graph
nodes <- 1:4
arcs <- matrix(c(1,2,7, 1,3,6, 1,4,4, 2,3,8, 2,4,6, 3,2,6,
                 3,4,5, 4,2,5, 4,3,7), ncol = 3, byrow = TRUE)
# Allocation rules
maRules(nodes, arcs, rule = "Bird")
maRules(nodes, arcs, rule = "ERO")
}

