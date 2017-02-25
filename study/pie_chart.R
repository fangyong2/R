#pie
#pie(x,labels,radius,main,col,clockwise)
x <- c(21,62,10,53)
labels <- c('London','New York','Singapore','Mumbai')
png(file='city.png')
pie(x,labels,main="City pie chart",col=rainbow(length(x)))
dev.off()
#
piepercent <- round(100*x/sum(x),1)
pie(x,labels = piepercent,main="City pie chart",col=rainbow(length(x)))
legend("topright",labels,cex=0.8,fill=rainbow(length(x)))
