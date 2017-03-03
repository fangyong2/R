#1- du li liang yang ben he K yang ben jian yan
#xu ni shu ju zhong de t jian yan yu dan yin su zhi huan jian yan
library(coin)
score <- c(40,57,45,55,58,57,64,55,62,65)
treatment <- factor(c(rep("A",5),rep("B",5)))
mydata <- data.frame(treatment,score)
t.test(score~treatment,data=mydata,var.equal=TRUE)
oneway_test(score~treatment,data=mydata,distribution="exact")
library(MASS)
UScrime <- transform(UScrime,So=factor(So))
wilcox_test(Prob~So,data=UScrime,distribution="exact")
library(multcomp)
set.seed(1234)
oneway_test(response~trt,data=cholesterol,distribution=approximate(B=9999))
