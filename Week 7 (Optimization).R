#Optimizatio
#Roots of a polynomial
#We use the function polyroots

x <- c(10,3,1)
polyroot(x)

x2 <- c(100,1,-7,4,0,3)
polyroot(x2)

#Linear Programing
library(lpSolve)
obj.in <- c(5,8)
const.mat <- matrix(c(1,1,1,2),nrow = 2,byrow = T)
const.dir <- c(">=",">=")
const.rhd <- c(2,3)
direction <- "min"

mysol <- lp(direction = direction,const.mat = const.mat,const.dir = const.dir,
            const.rhs = const.rhd,objective.in = obj.in)
mysol
mysol$solution
