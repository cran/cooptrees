\name{shapleyValue}
\alias{shapleyValue}
\title{Shapley value of a cooperative game}
\usage{
shapleyValue(n, S = NULL, v)
}
\arguments{
  \item{n}{number of players in the cooperative game.}

  \item{S}{vector with all the possible coalitions. If none
  has been specified the function generates it
  automatically.}

  \item{v}{vector with the characteristic function of the
  cooperative game.}
}
\value{
The \code{shapleyValue} functions returns a matrix with all
the marginal contributions of the players
(\code{contributions}) and a vector with the Shapley value
(\code{value}).
}
\description{
Given a cooperative game, the \code{shapleyValue} function
computes its Shapley value.
}
\details{
The Shapley value is a solution concept in cooperative game
theory proposed by Lloyd Shapley in 1953. It is obtained as
the average of the marginal contributions of the players
associated with all the posible orders of the players.
}
\examples{
# Cooperative game
n <- 3  # players
v <- c(4, 4, 4, 8, 8, 8, 14)  # characteristic function
# Shapley value
shapleyValue(n, v = v)
}
\references{
Lloyd S. Shapley. "A Value for n-person Games". In
Contributions to the Theory of Games, volume II, by H.W.
Kuhn and A.W. Tucker, editors. Annals of Mathematical
Studies v. 28, pp. 307-317. Princeton University Press,
1953.
}

