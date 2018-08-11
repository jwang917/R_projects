#try out the pnorm for a normal distribution of N(50,20)
#They look up P(X < 27.4) when X is normal with mean 50 and standard deviation 20
pnorm(27.4, mean=50, sd=20)
#0.1292381
pnorm(19,17.46,375.67)

#So given a number p between zero and one, qnorm looks up the p-th quantile of the normal distribution.
qnorm(0.1292381,50,20)
# 27.4 is the result.
iq <- qnorm(0.95,100,15)
# iq=124.6728

#use dnorm to generate a normal distribution
n <-  dnorm(x,mean=10,sd=2)

# use rnorm to generate random variable ~ normal distribution.
x <- rnorm(1000,mean=100,sd=50)
#Gen 1000 normal r.v. ~N(100,50)
#plot the histogram of x
hist(x,probability = TRUE)
xx <- seq(x(min),x(max),length=100)
lines(xx,dnorm(xx,100,50))

# For poisson distribution. We could use dpois,ppois,qpois,rpois.
# rpois is the one to generate random values.

