library(ggplot2)
ggplot(airquality,aes(Wind,Temp)) +
  geom_point(aes(color=factor(Month)),alpha=0.4,size=5)

ggplot(airquality,aes(Wind,Temp)) +
  geom_point() + 
  geom_smooth()

ggplot(airquality,aes(Wind,Temp)) +
  stat_smooth(method="lm",se=FALSE)

ggplot(airquality,aes(Wind,Temp)) +
  stat_smooth(method="lm",se=FALSE,aes(color=factor(Month)))

ggplot(airquality,aes(Wind,Temp,col=factor(Month),grop=1)) +
  geom_point() +
  stat_smooth(method="lm",se=FALSE)

library(RColorBrewer)
mycolors <- c(brewer.pal(5,"Dark2"),"black")
display.brewer.pal(5,"Dark2")

ggplot(airquality,aes(Wind,Temp,col=factor(Month),grop=1)) +
  geom_point() +
  stat_smooth(method="lm",se=FALSE) +
  scale_color_manual("Month",values=mycolors)

ggplot(airquality,aes(Wind,Temp,col=factor(Month))) +
  geom_point() +
  stat_smooth(method="lm",se=FALSE) +
  scale_color_manual("Month",values=mycolors) +
  facet_grid(.~MOnth)

ggplot(airquality,aes(Wind,Temp,col=factor(Month),grop=1)) +
  geom_point() +
  stat_smooth(method="lm",se=FALSE) +
  scale_color_manual("Month",values=mycolors) + 
  theme_classic()

?theme
