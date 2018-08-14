#test out microbenchmark
library(microbenchmark)
x <- 199
microbenchmark(sqrt(x),x**0.5,times=1000)