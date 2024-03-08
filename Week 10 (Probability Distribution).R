#Probability Distribution
#Accidents in a factory occur with a poisson distribution at an average
#of 4 per week calculate the probability of more than 5 accident in any
#one week

y <- 1-ppois(5,lambda = 4)
y

sum(dbinom(2,6,0.3),dbinom(3,6,0.3),dbinom(4,6,0.3))
#Or
pbinom(4,6,0.3)-pbinom(1,6,0.3)
