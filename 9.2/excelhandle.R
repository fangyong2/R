library("xlsx")
data <- read.xlsx("input.xlsx",sheetIndex = 1)
data
#二进制
write.table(mtcars, file = "mtcars.csv",row.names=FALSE, na="",col.names=TRUE, sep=",")
new.mtcars <- read.table("mtcars.csv",sep=",",header=TRUE,nrows = 5)
write.filename = file("/web/com/binmtcars.dat", "wb")
