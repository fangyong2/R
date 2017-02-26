#卡方检验
#pwr.chisq.test(w=,N=,df=,sig.level=,power=)
prob <- matrix(c(.42,.28,.03,.07,.10,.10),byrow = TRUE,nrow = 3)
ES.w2(prob)
pwr.chisq.test(w=.1853,df=2,sig.level = .05,power=.9)