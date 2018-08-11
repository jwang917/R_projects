#scratches of drawing beta pdf by line graph
inp <-  c(0.5,0.5)
#about beta https://en.wikipedia.org/wiki/Beta_distribution
#use rbeta
otp <- rbeta(100,inp[1],inp[2])
otp <- sort(otp)
library(tidyr)
library(magrittr)
library(ggplot2)
ggplot() +geom_histogram(aes(x=otp),alpha=0.5,color='#990000',fill="#FFCC33")
xaxis <- seq(0.01,1,by=0.01)
ggplot() + geom_line(aes(x=xaxis,y=otp),color="#FFCC33")
#try dbeta
dbet <- dbeta(c(0.04,0.05),inp[1],inp[2])
#generate xas
colors <- c('#990000',"#33FF00","#FFCC33","#3399FF","#FF9933")
xaxis<- runif(1000,min=0,max=1)
beta1 <- dbeta(xaxis,inp[1],inp[2])
ggplot()+geom_line(aes(x=xaxis,y=beta1),color=colors[1],linetype=1)

#create vec to hold beta value and vec to hold colors
yvalue <- dbeta(xaxis,betas[[1]][1],betas[[1]][2])
type <- paste('alpha',as.character(betas[[1]][1]),'beta',as.character(betas[[1]][2]),sep=" ")
df.betas <- data.frame(yvalue,type)
yvalue <- data.frame()
for(i in 1:length(betas)){
  yvalue1 <- dbeta(xaxis,betas[[i]][1],betas[[i]][2])
  yvalue <- cbind.data.frame(yvalue,yvalue1)
  Alpha <- paste('alpha',as.character(betas[[i]][1]),sep=" ")
  Beta <- paste('beta',as.character(betas[[i]][2]),sep=" ")
  type <- paste(Alpha,Beta,sep = " ")
  toApp <- cbind.data.frame(yvalue,type)
  df.betas <- rbind.data.frame(df.betas,toApp)
  
}
betas <- list(c(0.5,0.5),c(5,1),c(1,3),c(2,2),c(2,5))
cbind.data.frame(df.betas,xaxis)
ggplot(data=df.betas,aes(x=xaxis,y=yvalue))+geom_line(color=type,alpha=0.5)
#https://stackoverflow.com/questions/31862933/storing-loop-output-in-a-dataframe-in-r
#https://stackoverflow.com/questions/7201341/how-can-two-strings-be-concatenated
library(reshape2)
yvalue <- data.frame(xaxis)
for (i in 1:length(betas)){
  yvalue1 <- dbeta(xaxis,betas[[i]][1],betas[[i]][2])
  yvalue <- cbind.data.frame(yvalue,yvalue1)
}
names(yvalue) <- c('x','{0.5,0.5}','{5,1}','{1,3}','{2,2}','{2,5}')
new.data <- melt(yvalue,id='x')
names(new.data) <- c('x','pair','value')
ggplot()+geom_line(data=new.data,aes(x=x,y=value,color=pair),size=1)+
  labs(color=expression('{'~alpha~','~beta~'}'),x="quertiles",y=expression("P.D.F of beta"),title=expression("Beta distribution P.D.F with pair value {"~alpha~','~beta~'}'))
#http://danialk.github.io/blog/2015/12/13/multiline-plots-in-r-using-ggplot2/

xaxis<- runif(1000,min=0,max=1)
rep.xaxis <- rep(xaxis,10)

betas <- list(c(0.5,0.5),c(5,1),c(1,3),c(2,2),c(2,5))
yvalue <- data.frame()
for(j in 1:2){
  for(i in 1:length(betas)){
    it <- rep(i,1000)
    if (j==1){
      Y <- dbeta(xaxis,betas[[i]][1],betas[[i]][2])
      cate <- rep('P.D.F of beta distribution',1000)
      holder <- cbind.data.frame(Y,it,cate)
    }else {
      Y <- pbeta(xaxis,betas[[i]][1],betas[[i]][2])
      cate <- rep('C.D.F of beta distribution',1000)
      holder <- cbind.data.frame(Y,it,cate)
    }
    yvalue <- rbind.data.frame(yvalue,holder)
}
}
yvalue <- cbind.data.frame(yvalue,rep.xaxis)
sc1 <- scale_y_continuous(Y,limits=c(0,1))
ggplot(data=yvalue)+geom_line(aes(x=rep.xaxis,y=Y),color="#FF0033")+
  facet_grid(it~cate)

yvalueYlab <- yvalue
yvalueYlab$it <- factor(yvalueYlab$it,labels=c("alpha,beta = {0.5,0.5}"))

ggplot(data=yvalueYlab)+geom_line(aes(x=rep.xaxis,y=Y),color=it)+
  facet_grid(it~cate)










