\name{mstGames}
\alias{mstGames}
\title{Cooperative games from minimum cost spanning tree problems}
\usage{
mstGames(nodes, arcs, game, show.data = TRUE)
}
\arguments{
  \item{nodes}{vector containing the nodes of the graph,
  identified by a number that goes from \eqn{1} to the
  order of the graph.}

  \item{arcs}{matrix with the list of arcs of the graph.
  Each row represents one arc. The first two columns
  contain the two endpoints of each arc and the third
  column contains their weights.}

  \item{game}{denotes the game that we want to obtain:
  "pessimistic" or "optimistic".}

  \item{show.data}{logical value indicating if the function
  displays the console output (\code{TRUE}) or not
  (\code{FALSE}). By default its value is \code{TRUE}.}
}
\value{
\code{mstGames} returns a vector with the characteristic
fuction of the selected game associated with the graph and
prints the result in console.
}
\description{
Given a graph with at least one minimum cost spanning tree,
\code{mstGames} builds both cooperative games: the
pessimistic and the optimistic game.

The pessimistic game associated with a minimum cost
spanning tree problem is a cooperative game in which every
coalition of agents obtains the minimum cost assuming that
the agents outside the coalition are not connected.

The optimistic game associated with with a minimum cost
spanning tree problem is a cooperative game in which every
coalition of agents obtains the minimum cost assuming that
that the agents outside the coalition are connected. Thus,
the agents in the coalition can benefit from their
connections to the source
}
\examples{
# Graph
nodes <- 1:4
arcs <- matrix(c(1,2,6, 1,3,10, 1,4,6, 2,3,4, 2,4,6, 3,4,4),
               byrow = TRUE, ncol = 3)
# Cooperative games
mstGames(nodes, arcs, game = "pessimistic")
mstGames(nodes, arcs, game = "optimistic")
}

