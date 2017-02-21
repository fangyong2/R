#mapply
#list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
mapply(rep,1:4,4:1)
s <- function(n,mean,std){
      rnorm(n,mean,std)
}

s(4,0,1)
mapply(s,1:5,5:1,2)
