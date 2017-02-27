#高密度散点图
set.seed(1234)
n <- 10000
c1 <- matrix(rnorm(n,mean=0,sd=.5),ncol = 2)
c2 <- matrix(rnorm(n,mean=3,sd=2),ncol=2)
mydata <- rbind(c1,c2)
mydata <- as.data.frame(mydata)
names(mydata) <- c("x","y")
with(mydata,plot(x,y,pch=19,main="Scatter Plot with 10,000 Observations"))
with(mydata,smoothScatter(x,y,main="Scatterplot Colored by Smoothed Densities"))
library(hexbin)
with(mydata,{
  bin<-hexbin(x,y,xbins=50)
  plot(bin,main="Hexagonal Binning with 10,000 Observations")
  })
library(IDmisc)
