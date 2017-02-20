#日期与时间
x <-date()
x
class(x)
class(date())
x2 <- Sys.Date()
x2
class(x2)
x3<-as.Date("2017-01-01")
x3
class(x3)
weekdays(x3)
months(x3)
quarters(x3)
julian(x3)
x4<-as.Date("2017-02-20")
x3 <- as.Date("2013-03-18")
x4-x3
as.numeric(x4-x3)
#time
x <- Sys.time()
x
class(x)
p<-as.POSIXlt(x)
p
class(p)
names(unclass(p))
p$min
p$year
as.POSIXct(p)
#不同格式的相互转换
x1 <- "Jan 1,2015 01:01"
strptime(x1,"%B %d, %Y %H:%M")
