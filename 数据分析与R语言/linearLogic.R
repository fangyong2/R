#linear logic
x<-c(0.10,0.11,0.12,0.13,0.14,0.15,0.16,0.17,0.18,0.20,0.21,0.23)
y<-c(42.0,43.5,45.0,45.5,45.0,47.5,49.0,53.0,50.0,55.0,55.0,60.0)
plot(x,y)
#1、create line model
lm.sol <- lm(y~1+x)
#2、result of model
summary(lm.sol)

#demo
beta.int <- function(fm,alpha=0.05){
  A<-summary(fm)$coefficients
  df<-fm$df.residual
  left<-A[,1]-A[,2]*qt(1-alpha/2, df)
  right<-A[,1]+A[,2]*qt(1-alpha/2, df)
  rowname<-dimnames(A)[[1]]
  colname<-c("Estimate","Left","Right")
  matrix(c(A[,1],left,right),ncol=3,dimnames=list(rowname,colname))
}
beta.int(lm.sol)

#predict()
#1-input a new point: x is equal 0.16
new <- data.frame(x=0.16)
#according to function of predict,output result
lm.pred <- predict(lm.sol,new,interval = "prediction",level=0.95)
lm.pred