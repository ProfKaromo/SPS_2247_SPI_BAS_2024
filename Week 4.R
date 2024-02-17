#Functions
#built in functions
#sum, print etc

#The user defined functions

cfun <- function(r){
  area <- 3.142*r^2
  cirm <- 2*4.142*r
  
  #return(c(area,cirm))
  cat("The area of a circle with radius of",r,"is",area,"\n")
  cat("The circumfrence of a circle with radius of",r,"is",cirm,"\n")
}

cfun(23)

circles <- function(){
  n <- as.integer(readline(prompt = "How many circles: "))
  for (i in 1:n) {
    r[i] <- as.integer(readline(prompt = "Enter the radius: "))
    ans[i] <- cfun(r[i])
    return(ans[i])
  }
}

circles()


