#matrix & array
x<-matrix(1:6,nrow=3,ncol = 2)
x
#dim
dim(x)
#attr
attributes(x)
y<-1:6
dim(y) <- c(2,3)
y
# concat
y2<-matrix(1:6,nrow = 2,ncol = 3)
rbind(y,y2)
cbind(y,y2)
#array:dic >= 2
x <-array(1:24,dim=c(4,6))
x
x1 <-array(1:24,dim=c(2,3,4))
x1
