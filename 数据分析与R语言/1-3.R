getwd()
x=c(1:6)
x
is.vector(x)
is.array(x)
#把一个向量变为一个矩阵
dim(x) <- c(2,3)
x
is.array(x)
is.matrix(x)
#数据框
x1=c(10,13,45,26,23,12,24,78,23,43,31,56)
x2=c(20,65,32,32,27,87,60,13,42,51,77,35)
x=data.frame(x1,x2)
x
plot(x)
#读取文本文件数据
(x=read.table("abc.txt"))
#读剪贴板
y <- read.table("clipboard",header=F)
#读取excel文件数据
y <- read.table("catering_sale.csv",header=T)
y <- read.table("catering_sale.xls",header=T)
#通过RODBC读取Excel文件数据
install.packages("RODBC")
library(RODBC)
z <- odbcConnectExcel("catering_sale.xls")
w <- sqlFetch(z,"Sheet1")
#for 语句
for (i in 1:59) {a[i]=i*2+3}
a
#while语句
#source()函数
#source("D:\\h.r")
#print()函数
#综合性例子
num = seq(10378001,10378100)
print(num)
#产生均匀分布随机数runif()
x1 = round(runif(100,min=80,max=100))
print(x1)
#产生正态分布随机数rnorm()
x2 = round(rnorm(100,mean=80,sd=7))
print(x2)
x3 = round(rnorm(100,mean=83,sd=18))
print(x3)
x3[which(x3>100)]=100
print(x3)
x = data.frame(num,x1,x2,x3)
print(x)
#写入到硬盘
write.table(x,file="mark.txt",col.names=F,row.names=F,sep=" ")
#计算各科平均分
#mean(),colMeans(),apply()
print(x)
#求各科最高分、最低分max()、mean()
apply(x[c("x1","x2","x3")],1,sum)
apply(x,1,mean)