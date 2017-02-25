#hist
#hist(v,main,xlab,xlim,ylim,breaks,border)
v <- c(9,13,21,8,36,22,12,41,31,33,19)
png(file="hist.png")
hist(v,xlab="Weight",col="yellow",border="blue")
dev.off()
#
v <- c(9,13,21,8,36,22,12,41,31,33,19)
png(file = "hist1.png")
hist(v,xlab = "Weight",col="green",border = "red",xlim=c(0,40), ylim=c(0,5),breaks=5)
dev.off()