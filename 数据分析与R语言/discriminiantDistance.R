#ju li pan bie fa
discriminiant.distance <- function(Trnx1,Trnx2,Tstx=NULL,var.equal=FALSE){
  if(is.null(Tstx)==TRUE) Tstx<-rbind(Trnx1,Trnx2)
  if(is.vector(Tstx)==TRUE) Tstx<-t(as.matrix(Tstx))
  else if (is.matrix(Tstx)!=TRUE)
    Tstx <- as.matrix(Tstx)
  if(is.matrix(Trnx1)!=TRUE) Trnx1 <- as.matrix(Trnx1)
  if(is.matrix(Trnx2)!=TRUE) Trnx1 <- as.matrix(Trnx2)
  
  nx <- nrow(Tstx)
  blong <- matrix(rep(0,nx),nrow=1,byrow = TRUE,dimnames = list("blong",1:nx))
  mu1 <- colMeans(Trnx1)
  mu2 <- colMeans(Trnx2)
  if(var.equal==TRUE || var.equal==T){
    s <- var(rbind(Trnx1,Trnx2))
    w <- mahalanobis(Tstx,mu2,s) - mahalanobis(Tstx,mu1,s)
  } else {
    s2 <- var(Trnx1)
    s2 <- var(Trnx2)
    w <- mahalanobis(Tstx,mu2,s2) - mahalanobis(Tstx,mu1,s1)
  }
  for(i in 1:nx){
    if(w[i]>0)
      blong[i] <- 1
    else
      blong[i] <- 2
  }
  blong
}