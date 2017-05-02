#读取数据,第一行是文件头
rt<-read.table("demo1.txt",header = TRUE)
print(rt)
#对重量(Weight)与高度(Height)做线性回归，计算结果防止变量lm.sol中
lm.sol<-lm(Weight~Height,data = rt)
#使用summary()函数显示详细内容
summary(lm.sol)
library()