#Pseudo Random Numb ers Generator
#eg

grades <- c("A","B","C","D","E")
prob <- c(1/10,4/10,3/10,1/10,1/10)
mygrades <- sample(grades,20,replace = T, prob = prob)
table(mygrades)

simgrades <- function(x){
  grades <- c("A","B","C","D","E")
  prob <- c(1/10,4/10,3/10,1/10,1/10)
  mygrades <- sample(grades,x,replace = T, prob = prob)
  table(mygrades)
}
simgrades(83)
