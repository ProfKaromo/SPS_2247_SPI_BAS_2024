#Central Limit Theorem
mu <- 100
sigma <- 16
n <- 100

r <- c()
for (i in 1:200) {
  x <- rnorm(n,mean = 100,sd = 16)
  r[i] <- ((mean(x)-mu)/(sigma/sqrt(n)))
}
hist(r,probability = T)
lines(density(r))

#Confience Interval
x <- c(1.54,1.78,1.43,1.30,1.56,1.89,2.00,1.99,1.95,1.56)
n <- length(x)
xbar <- mean(x)
sigma <- 9.48
alpha <- 1-0.95
SE <- sigma/sqrt(n)
z_value <- qnorm(alpha/2)
CI <- xbar+c(-z_value*SE,z_value*SE)
CI

#When Std dev is not given
y <- c(175, 176, 173, 175, 174, 173, 173, 176, 173, 179)
y_bar <- mean(y)
n <- length(y)
sy <- sd(y)
SE <- sy/sqrt(n)
alpha <- 1-0.999
t_value <- qt(1-alpha/2,df=n-1)
CI <- y_bar+c(-t_value*SE,t_value*SE)
CI

