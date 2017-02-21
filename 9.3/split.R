#split:根据因子或因子列表将向量或其他对象分组
x<-c(rnorm(5),runif(5),rnorm(5,1))
f <- gl(3,5)
split(x,f)
lapply(split(x,f),mean)
head(airquality)
s <- split(airquality,airquality$Month)
s
table(airquality$Month)
lapply(s,function(x) colMeans(x[,c("Ozone","Wind","Temp")]))
sapply(s,function(x) colMeans(x[,c("Ozone","Wind","Temp")],na.rm = TRUE))
sapply(s,function(x) colMeans(x[,c("Ozone","Wind","Temp")]))
