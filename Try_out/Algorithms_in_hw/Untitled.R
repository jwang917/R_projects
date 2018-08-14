
#load necessary libraries
library(dplyr)
library(data.table)
library(microbenchmark)

#add test data source
set.seed(101)
myDF <- as.data.frame(matrix(rnorm(10000), ncol = 5))
myDF[2] <- myDF[2] + 5 
myDF[3] <- myDF[3] - 0.1
myDF[4] <- myDF[4] + 1 
myDF[5] <- myDF[5] - 3 

#generate initial cluster assignment
numObs <- nrow(myDF) #dynamically get the number of rows.
groups <- sample.int(numObs,numObs,replace=T) #get the random assignment

