#lie lian biao zhong de du li xing
library(vcd)
library(coin)
Arthritis <- transform(Arthritis,Improved=as.factor(as.numeric(Improved)))
set.seed(1234)
chisq_test(Treatment~Improved,data=Arthritis,distribution=approximate(B=9999))

#shu liang bian liang jian de du li xing
states <- as.data.frame(state.x77)
set.seed(1234)
spearman_test(Illiteracy~Murder,data = states,distribution=approximate(B=(9999)))

#liang yang ben he K yang ben xiang gaun xing jian yan
library(MASS)
UScrime <- transform(UScrime,So=factor(So))
wilcox_test(U1~U2,data=UScrime,distribution="exact")