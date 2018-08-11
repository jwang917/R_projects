rm(list=ls())
cat("\014")
a1 <- 10352+987653
a2 <-  10352/987653
a3 <- 2^6 * 99
a4 <- 914545%%33

#Display the current loaded package.
search()

install.packages("dplyr")
library("dplyr")

#access in the package without loading it.
dplyr::summarise()

#function masking: different packages has same name in function.To avoid this from happening, use :: for light-used 
# package, so you won't overwrite the package for more often used.

#show the downloaded packages.
library()
#load the package. When the package fails to be loaded,it will give an error.
#require() will load the package, but only report a warning.
library("packageName")

# in math notation, the N(10,5), 5 will be the variance.
# in


t1 <- system.time(rvN <- rnorm(1000000,10,5^0.5))
t2 <- system.time(rvN3 <- rnorm(1000000,10,5^0.5))
t3 <- system.time(rvN1 <- rnorm(100000000,10,5^0.5))
t4 <- system.time(rvN2 <- rnorm(1000000000,10,5^0.5))

t<- c(t1[1],t2[1],t3[1],t4[1])
size <- c(10^6,10^7,10^8,10^9)
qqplot(t,size,main="Size vs time")

#overleaf.com, template for cv.


