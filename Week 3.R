#While loop
x <- 20
while (x<8) {
  print(x)
  x = x + 1
  
}

sumval <- 0
for (i in 10:100) {
  sumval = sumval + sum(i^3,4*i^2)
}
cat("The value of the the sumations is",sumval)

#break and next
#break
x <- c(1:20)
for (i in x) {
  if(i>10)
    break
  cat("The value of x[",i,"] is",x[i],"\n")

}

#next
y <- c(1:20)
for (j in y) {
  if(j==12)
    next
  cat("The value of y[",j,"] is",y[j],"\n")
}

#Using the two in the same programe
z <- c(1:30)
for (i in z) {
  if(i%%3==0)
    next
  else if(i%%2==0){
    if(i>15)
      break
    cat(i," ")
  }
}


