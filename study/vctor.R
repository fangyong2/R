#vector
x <- 1:4
x1 <- c(1,2,3,4)
x2 <- c(TRUE,10,"a")
#type of variable
class(x)
#variable transform
as.numeric(x1)
as.character(x1)
as.logical(x2)
#set variable name
names(x1) <- c("a","b","c","d")
x1
