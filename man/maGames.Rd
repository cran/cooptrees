\name{maGames}
\alias{maGames}
\title{Cooperative game associated with minimum cost arborescences}
\usage{
maGames(nodes, arcs, game = "pessimistic", show.data = TRUE)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{game}{denotes the game to be obtained, known as the
  "pessimistic" game.}

  \item{show.data}{logical value indicating if the function
  displays the console output (\code{TRUE}) or not
  (\code{FALSE}). By default its value is \code{TRUE}.}
}
\value{
\code{maGames} returns a vector with the characteristic
fuction of the cooperative game associated with the graph.
}
\description{
Given a graph with at least one minimum cost arborescence
the \code{maGames} function builds the cooperative game
associated with it.
}
\examples{
# Graph
nodes <- 1:4
arcs <- matrix(c(1,2,7, 1,3,6, 1,4,4, 2,3,8, 2,4,6, 3,2,6,
                 3,4,5, 4,2,5, 4,3,7), ncol = 3, byrow = TRUE)
# Cooperative games
maGames(nodes, arcs, game = "pessimistic")
}
