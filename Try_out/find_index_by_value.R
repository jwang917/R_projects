#search for the method that can base on value to return the index 
#of a vector

library(stringr)
#use a dictionary vector as a lookup table. call it clusterGroup
# should I use character as name or just integer?
# Integer has smaller size per entry and can do arithemetic operations
# like compare or subtraction.

#k is the number of clusters.
k <- 200
clusterIndex.int <- 1:k
print(clusterIndex.int)
# notice that 1:n is in type of integer. It is good. 

#set up the vector with length n, generate with random values.
#n is the number of rows/obs.
vec <- rnorm(k,0,1)

#first get the boolean vector that has 1 in max entry and 0 elsewhere.
bl.vec <- vec==max(vec)
#print(bl.vec), the result is as intended.


#use the clusterIndex.int to get the # of cluster for each rows.
print(paste("your cluster assignment is:",clusterIndex.int[bl.vec]))

#find the type of vec and class of vec.
print(typeof(vec)) #double
print(class(vec))  #numeric
# question: can you use float 32 instead of float 64 as type in vec.
# Answer: No you can't. R has no single precision floating point. 


#test when two vector are the same

v1 <- 1:10
v2 <- 2:11
print(v1-v2+1)
print(isTRUE(v1-v2+1)==0)


