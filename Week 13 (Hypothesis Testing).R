#Hypothesis Testing
x <- c(465, 454, 442, 468, 456, 447, 449, 438, 449, 446)
x_bar <- mean(x)
mu <- 454
n <- length(x)
sigma <- 7.8
SE <- sigma/sqrt(n)
z_cal <- (mean(x)-mu)/SE
z_cal
alpha <- 1-0.95
alpha
z_tab <- qnorm(1-alpha/2)
z_tab

if(abs(z_cal)<z_tab){
  cat("|Z_cal| =",abs(z_cal),"< Z_tab =",z_tab,"Hence we fail to reject H0.\n")
  cat("We conclude that mu = mu0 = 454g.")
}else{
  cat("|Z_cal|=",z_cal,"> Z_tab=",z_tab,"Hence we reject H0.\n")
  cat("We cponclude that mu is to equal to mu0.")
  
}

