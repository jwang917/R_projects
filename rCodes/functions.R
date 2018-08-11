
for (i in 1:10) {
  if ( i%%2 ==0 ){
    print(paste(i," is even "))
  }
  else {
    print( paste(i,'is odd'))
  }
}
n <- 10
while(n>0) {
  print(n)
  n <- n-2
  }
x <- sample(1:100,10,replace = F)
for ( i in 1:length(x)){
  if ( x[i]<50 ){
    print ("Less than 50")
  } else {
    print ("not less")
  }
}
  
ifelse(x>50,"greater","lessthan")

system.time(
for(i in 1:10) {
  print(paste("This is number",i))
})

install.packages("microbenchmark")
library(microbenchmark)

microbenchmark(sqrt(99),99^0.5,times=1000)

#write function 
data <- mtcars
myFunc <- function(a,b) {
    mtcars <- as.data.frame(mtcars)
    mtcars[a:b,]
}

a <- c(1,2,4)
myFunc2 <- function(vec) {
  vec2 <- vec*vec
  new.vec <- append(vec,vec2)
  df <- data.frame(new.vec)
  vec <- as.vector(df)
  vec
}

typeof(myFunc2(a))

myFunc_02 <- function() { 
  y <- 1
  c(x,y)
}
myFunc_02()



