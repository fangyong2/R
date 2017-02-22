#practice of Lattice
library(lattice)
xyplot(Temp~Ozone,data=airquality)
airquality$Month <- factor(airquality$Month)
xyplot(Temp~Ozone | Month,data=airquality,layout=c(5,1))
q <- xyplot(Temp~Ozone,data=airquality)
print(q)

set.seed(1)
x <- rnorm(100)
f <- rep(0:1,each=50)
y <- x + f - f*x + rnorm(100,sd=0.5)
f <- factor(f,labels=c("Group1","Group2"))
xyplot(y~x | f,layout=c(2,1))

xyplot(y~x | f,panel = function(x,y){
  panel.xyplot(x,y)
  panel.abline(v=mean(x),h=mean(y),lty=2)
  panel.lmline(x,y,col="red")
})
