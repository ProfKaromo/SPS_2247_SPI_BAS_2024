#Calculus
#Differentiation
#y = x 2e 2 + 7x + 10
#Syntax: D(expresion,"x")

#eg1
y  <- expression(x^2*exp(2)+7*x+10)
D(y,"x")

#eg2
y2 <- expression(log(x)+10)

D(y2,"x")

#eg3

y3 <- expression((x^2+5*x-1)/sqrt(x^2+2))
D(y3,"x")

D(expression((x^2+5*x-1)/sqrt(x^2+2)),"x")

#Second and higher order derivatives
#eg1
y  <- expression(x^2*exp(2)+7*x+10)
D(y,"x")
D(D(y,"x"),"x")
D(D(D(y,"x"),"x"),"x")

y2 <- expression(log(x)+10)

D(y2,"x")
D(D(y2,"x"),"x")
D(D(D(y2,"x"),"x"),"x")

y3 <- expression((x^2+5*x-1)/sqrt(x^2+2))
D(y3,"x")
D(D(y3,"x"),"x")
D(D(D(y3,"x"),"x"),"x")

library(Deriv)
Deriv(y3,"x")

#Integration
#eg1
y <- function(x){
  1/((x+1)*sqrt(x))
}
int <- integrate(y,lower = 0,upper = Inf)
int
int$subdivisions

#eg2
y2 <- function(x){
  (1/(sqrt(2*pi)))*exp(-(x^2/2))
}
int2 <- integrate(y2,lower = -1.96, upper = 1.96)
int2

#Integration over multidimention
#We use the adapIntegrate function in the cubature package.
library(cubature)
y3 <- function(x){
  (3/4)*(2*x[1]+x[2]+4*x[3])
}

int3 <- adaptIntegrate(y3,lowerLimit = c(0,0,0),upperLimit = c(1,1/2,1/4))
int3
