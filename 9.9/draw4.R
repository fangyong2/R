#line plot chart
#1
opar <- par(no.readonly = TRUE)
par(mfrow=c(1,2))
t1 <- subset(Orange,Tree==1)
plot(t1$age,t1$circumference,xlab="Age(days)",ylab="Circumference(mm)",main="Orange Tree 1 Growth")
plot(t1$age,t1$circumference,xlab="Age(days)",ylab="Circumference(mm)",main="Orange Tree 1 Growth",type="b")
#2
Orange$Tree <- as.numeric(Orange$Tree)
ntrees <- max(Orange$Tree)
xrange <- range(Orange$age)

yrange <- range(Orange$circumference)
plot(xrange,yrange,type="n",xlab="Age(days)",ylab="Circumference(mm)")
colors <-rainbow(ntrees)
linetype <- c(1:ntrees)
plotchar <- seq(18,18+ntrees,1)

for(i in 1:ntrees){
  tree <- subset(Orange,Tree==i)
  lines(tree$age,tree$circumference,
        type="b",
        lwd=2,
        lty=linetype[i],
        col=colors[i],
        pch=plotchar[i]
        )
}

title("Tree Growth","example of line plot")

legend(xrange[1],yrange[2],
       1:ntrees,
       cex=0.8,
       col=colors,
       pch=plotchar,
       lty=linetype,
       title="Tree")
options(digits=2)
cor(mtcars)
library(corrgram)
corrgram(mtcars,order=TRUE,lower.panel = panel.shade,
         upper.panel = panel.pie,text.panel = panel.txt,
         main="Correlogram of mtcars intercorrelations")

corrgram(mtcars,order=TRUE,lower.panel = panel.ellipse,
         upper.panel = panel.pts,text.panel = panel.txt,
         diag.panel = panel.minmax,
         main="Correlogram of mtcars intercorrelations")
corrgram(mtcars,lower.panel = panel.shade,upper.panel=NULL,text.panel = panel.txt,main="Xar Mileage Data (unsorted)")

col.corrgram <- function(ncol){
  colorRampPalette(c("darkgoldenrod4","burlywood1","darkhaki","darkgreen"))(ncol)
}
corrgram(mtcars,order=TRUE,lower.panel = panel.shade,
         upper.panel = panel.pie,text.panel = panel.txt,
         main="Correlogram of mtcars intercorrelations")

# mosaic
ftable(Titanic)
mosaicplot(~gear + carb, data=mtcars,color=2:3,las=1)
