#plot
#plot(v,type,col,xlab,ylab)
v <- c(7,12,28,3,41)
png(file="line_chart.png")
plot(v,type="o")
dev.off()
#
png(file="line_chart1.png")
plot(v,type="o",col="red",xlab = "Month",ylab="Rain fall",main="Rain fall chart")
dev.off()
#
t <- c(14,7,6,19,3)
png(file="line_chart2.png")
plot(v,type="o",col="red",xlab = "Month",ylab="Rain fall",main="Rain fall chart")
lines(t,type="o",col="blue")
dev.off()