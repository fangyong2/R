#point
#plot(x,y,main,xlab,ylab,xlim,ylim,axes)
input <- mtcars[,c('wt','mpg')]
png(file="scatterplot.png")
plot(x=input$wt,y=input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),
     main = "Weight vs Milage"
     )
dev.off()

#pairs(formula,data)
png(file="scatterplot1.png")
pairs(~wt+mpg+disp+cyl,data=mtcars,main="Scatterplot Matrix")
dev.off()