#Simmulation Application
#Monte Carlo Inte gration

u <- runif(100000000,min = 0,max = pi/2)
I <- (pi/2)*mean(4*sin(2*u)*exp(-u^2))
I

fnx<-function(x){4*sin(2*x)*exp(-x^2)}
res=integrate(fnx,lower=0,upper=pi/2)
res$value

I;res$value
