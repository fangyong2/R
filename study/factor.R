#factor
x <- factor(c("female","female","male","male","female"))
x
y <- factor(c("female","female","male","male","female"),levels = c("male","female"))
y
table(x)
unclass(x)
class(unclass(x))
