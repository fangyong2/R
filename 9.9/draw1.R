#散点矩阵图
pairs(~mpg+disp+drat+wt,data=mtcars,main="Basic Scatter Plot Matrix")
scatterplotMatrix(~mpg+disp+drat+wt,data=mtcars,spread=FALSE,lty.smooth=2,main="Scatter Plot Matrix via car Package")
scatterplotMatrix(~mpg+disp+drat+wt|cyl,data=mtcars,spread=FALSE,diagonal="histogram", main="Scatter Plot Matrix via car Package")
cor(mtcars[c("mpg","wt","disp","drat")])
#gclus包生成的散点图矩阵
library(gclus)
mydata <- mtcars[c(1,3,5,6)]
mydata.corr <- abs(cor(mydata))
mycolors <- dmat.color(mydata.corr)
myorder <- order.single(mydata.corr)
cpairs(mydata,myorder,panel.colors = mycolors,gap=.5,main="Variables Ordered and Colored by Correlation")