#plot
#barplot(H,xlab,ylab,main,names.arg,col)
#1
H <- c(7,12,28,3,41)
png(file="barchart.png")
barplot(H)
dev.off()
#
M <- c('Mar','Apr','May','Jun','Jul')
png(file="barchart1.png")
barplot(H,names.arg = M,xlab="Month",ylab="Revenue",col="blue",main="Revenue chart",border = "red")
dev.off()
#
colors <- c('green','orange','brown')
months <- c('Mar','Apr','May','Jun','Jul')
regions <- c('East','West','North')
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11),nrow = 3,ncol=5,byrow = TRUE)
png(file="barchat2.png")
barplot(Values,main="total revenue",names.arg = months,xlab="month",ylab = "revenue",col=colors)
legend("topleft",regions,cex=1.3,fill=colors)
dev.off()