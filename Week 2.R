#For Loops
#Syntax is for(var in vec)
print("Hello World")
#Print a phrase for a number of times.
n <- as.integer(readline(prompt = "How many number of times to print:"))
for (i in 1:n) {
  print("Hello World")
}

#calculations within a loop
for (j in 1:3) {
  cat(j, "squred is",j*j,"\n")
}


for (i in 1:5) {
  cat(i,"* 5 =",i*5,"\n")
}

for (i in 1:5) {
  for (j in 5:1) {
    cat(i,"*",j,"=",i*j,"\n")
  }
  cat("\n")
}

x <- 1:5;y<-5:1

for (i in 1:length(x)) {
  cat(x[i],"*",y[i],"=",x[i]*y[i],"\n")
}


#If statement
#if(condition){Commands}
#if(condition){comands} else{commands}
#if(condition){cpommands}else(conditoion){commnads}......else{commands}

#if(condition){Commands}
x <- 6
if(x>0){
  print("The number is greater than zero.")
}
  
#if(condition){comands} else{commands}
x <- 0
if(x>0){
  print("The number is greater than zero.")
}else{
  print("The number is less than or equal to zero")
}

#Suppose you have a vector given as 2,3,5,4,7,9,11. Write an 
#R code to count the  number of even numbers and odd numbers.
#Give an appropriate output eg
#The vector have _ number of elements,
#there are _ number of even numbers and _ number of odd numbers.

#Solution
x <- c(2,3,5,4,7,9,11)
even_no <- odd_no <- 0
for (i in 1:length(x)) {
  if(x[i]%%2==0){
    even_no = even_no + 1
  }else{
    odd_no = odd_no +1
  }
}
total <- even_no + odd_no

cat("The venctor have",total," Elements with",even_no,
    "\n even numbers and ",odd_no," odd numbers.\n")

for (i in 1:length(x)) {
  if(x[i]%%2!=0){
    cat(x[i]," is an odd number.\n")
  }else{
    cat(x[i]," is an even number.\n")
  }
}

#if(condition){cpommands}else(conditoion){commnads}......else{commands}
#AKA Nested ifelse statement

#Write an R code that takes in an integer, evaluates if the numnber
#is negative, positive or zero

check <- function(n){
  n = as.integer(readline(prompt = "Enter a number:"))
  if(n>0){
    cat(n," is a positive.\n")
  }else if(n<0){
    cat(n," is a negative number.\n")
  }else{
    cat(n," is a zero.\n")
  }
  
}
check()

#Write an R code that reads in the marks scored by a 
#student in SPS 2247 and evaluates the grade of the student.
#Do a proper output

grade <- function(n){
  score <- as.integer(readline(prompt = "Enter the marks scored in SPS 2247: "))
  if(score>=70 && score<= 100){
    grade = "A"
  }else if(score>=60 && score< 70){
    grade = "B"
  }else if(score>=50 && score< 60){
    grade = "c"
  }else if(score>=40 && score< 50){
    grade = "D"
  }else if(score>=0 && score< 40){
    grade = "E"
  }else{
    grade = "NA"
    print("You enters wrong marks")
  }
  
  cat("The student scored",score," Which is a grade ",grade,".\n")
}

grade()

#Ifelse statement
#Example in excel
#=IF(F16>=70,"A",IF(F16>=60,"B",IF(F16>=50,"C",IF(F16>=40,"D","E"))))

#Write an R code that takes in an integer, evaluates if the numnber
#is negative, positive or zero
x <- 9
ifelse(x>0,"X is positive","X is negative")


ifelse(x>0,"X is positive",ifelse(x<0,"X is negative","X is a zero"))


#Nested for loop
for (i in 1:5) {
  for (j in 1:5) {
    if(j>i){
      cat(i," ")
    }
  }
  cat("\n")
}
