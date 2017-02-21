#tapply:对向量的子集进行操作
x<-c(rnorm(5),runif(5),rnorm(5,1))
#因子
f <- gl(3,5)
f
tapply(x,f,mean)
tapply(x,f,mean,simplify = FALSE)
