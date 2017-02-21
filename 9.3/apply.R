#apply:沿着数组的某一维度处理数据
x<-matrix(1:16,4,4)
apply(x,2,mean)
x
apply(x,2,sum)
rowSums(x)
rowMeans(x)
colMeans(x)
colSums(x)
x<-matrix(rnorm(100),10,10)
apply(x,1,quantile,probs=c(0.25,0.75))
x <- array(rnorm(2*3*4),c(2,3,4))
x
apply(x,c(1,2),mean)
apply(x,c(1,3),mean)
