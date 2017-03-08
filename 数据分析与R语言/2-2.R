#数据可视化的重要性
num=seq(10278001,10378100)
print(num)
x1 = round(runif(100,min=80,max=100))
print(x1)
x2 = round(rnorm(100,mean=80,sd=7))
print(x2)
x3 = round(rnorm(100,mean=83,sd=18))
x3[which(x3>100)]=100
print(x3)
x = data.frame(num,x1,x2,x3)
plot(x$x1,x$x2,main="数学分析与线性代数成绩的关系",xlab="数学分析",ylab="线性代数",xlim=c(0,100),ylim=c(0,100),xaxs="i",yaxs="i",col="red",pch=19)
#连线图
a = c(2,3,4,5,6)
b = c(4,7,8,9,12)
plot(a,b,type="l")
#多条曲线的效果
plot(mtcars$mpg,type="l",col="red")
lines(mtcars$cyl,type="l",col="blue",lwd=2)
#密度图 函数density()
plot(density(rnorm(1000)))
#内置数据集
data()
#热力图
heatmap(as.matrix(mtcars),Rowv=NA,Colv=NA,col=heat.colors(256),scale="column",margins=c(2,8),main="Car character")
#Iris鸢尾花数据集：Sepal-花萼、petal-花瓣、Species-种属
print(iris)
#向日葵散点图
sunflowerplot(iris[,3:4],col="gold",seg.col="gold")
#散点图集
pairs(iris[,1:4])
plot(iris[,1:4],main="relation",pch=19,col="blue",cex=0.9)
par(mfrow=c(3,1))
plot(x1,x2)
plot(x2,x3)
plot(x3,x1)
#颜色
colors()
#绘图设备
x1 = c(1,2,3)
x2 = c(4,2,6)
plot(x1,x2)
x3 = c(3,4,2,5)
x4=c(5,4,9,7)
plot(x3,x4)
dev.new()
plot(x1,x2)
dev.list()
dev.cur()
dev.next()
dev.cur()
#三维图
library("scatterplot3d")
scatterplot3d(x1,x2)
#三维作图
x <- seq(-2*pi,2*pi,pi/15)
y <- seq(-2*pi,2*pi,pi/15)
f <- function(x,y){sin(x)*sin(y)}
z <- outer(x,y,f)
contour(x,y,z,col="blue")
persp(x,y,z,theta=30,phi=30,expand=0.7,col="lightblue")
#调和曲线图
unison(x[2:4])
#地图 maps包
library("maps")
map("state",interior=FALSE)
map("state",boundary=FALSE,col="red",add=TRUE)
map("world",fill=TRUE,col=heat.colors(10))
map("italy")
map("lakes")
#社交数据可视化
library("geosphere")
