#用pwr包做功效分析
#t检验
#pwr.t.test(n=,d=,sig.level=,power=,alternative=)
library(pwr)
pwr.t.test(d=.8,sig.level = .05,power = .9,type = "two.sample",alternative = "two.sided")
pwr.t.test(n=20,d=.5,sig.level = .01,type="two.sample",alternative = "two.sided")