#Generation of Random Variates
#Binomial
ybinom <- rbinom(5,10,0.5)
ybinom

#Poisson
ypoison <- rpois(10,4)
ypoison

ynorm <- rnorm(10,5,1)
ynorm
ynorm1 <- rnorm(sd =1, n=10,mean = 5)
ynorm1

rnorm(100)
rnorm(100, mean = 10, sd = 6)
rchisq(10, df = 4)
rt(100, df = 20)
rexp(100, rate = 0.5)
runif(100)
runif(100, min = 10, max = 20)
rbeta(10, 5, 2)
rgamma(10, 3, 2)
