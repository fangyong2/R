#boxplot
#boxplot(x,data,notch,varwidth,names,main)
input <- mtcars[,c('mpg','cyl')]
print(head(input))
png(file = "boxplot.png")
boxplot(mpg~cyl,data=mtcars,xlab="Number of Cylinders",ylab="Miles Per Gallon",main="Mileage Data")
dev.off()
#
png(file="boxplot1.png")
boxplot(mpg~cyl,data=mtcars,xlab="Number of Cylinders",ylab="Miles Per Gallon",main="Mileage Data",notch=TRUE,varwidth=TRUE,col=c("green","yellow","purple"),names=c("High","Medium","Low"))
dev.off()