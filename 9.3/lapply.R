#lapply:loop
str(lapply)
x <- list(a=1:10,b=c(11,21,31,41,51))
x
lapply(x,mean)
x <-1:4
lapply(x,runif)
lapply(x,runif,min=0,max=10)
x <- list(a=matrix(1:6,2,3),b=matrix(4:7,2,2))
lapply(x,function(m) m[1,])
x
#sapply
x <- list(a=1:10,b=c(11,21,31,41,51))
lapply(x,mean)
sapply(x,mean)
class(sapply(x,mean))
