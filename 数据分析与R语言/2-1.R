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
apply(x,2,max)
apply(x,2,min)
x$num[which.max(apply(x[c("x1","x2","x3")],1,sum))]
#直方图
hist(x$x1)
#散点图
plot(x1,x2)
#列联函数table,柱状图绘制函数barplot()
table(x1)
barplot(table(x1))
#饼图
pie(table(x1))
#箱线图
boxplot(x1,x2,x3)
boxplot(x[2:4],col=c("red","green","blue"),notch=TRUE)
boxplot(x[2:4],col=c("red","green","blue"),horizontal=T)
#星象图
stars(x[c("x1","x2","x3")])
stars(x[c("x1","x2","x3")],full=T,draw.segment=T)
#脸谱图
install.packages("aplpack")
library(aplpack)
faces(x[c("x1","x2","x3")])
#茎叶图
stem(x$x1)
#QQ图
#作用
#1、可用于判断是否正态分布
qqnorm(x1)
#2、直线的斜率是标准差，截距是均值
qqline(x1)
#3、点的散步越接近直线，则越接近正态分布
qqnorm(x3)
qqline(x3)