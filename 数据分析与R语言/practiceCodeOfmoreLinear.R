#duo yuan xian xing hui gui
x1 <- c(76.0,91.5,85.5,82.5,79.0,80.5,74.5,79.0,85.0,76.5,82.0,95.0,92.5)
x2 <- c(50,20,20,30,30,50,60,50,40,55,40,40,20)
y <- c(120,141,124,126,117,125,123,125,132,123,132,155,147)
blood <- data.frame(x1,x2,y)
print(blood)
#jian li duo yuan xian xing hui gui mo xing
lm.sol <- lm(y ~ x1+x2, data=blood)
#shu chu jie guo
summary(lm.sol)
#duo yuan xing xian hui gui mo xing gong shi
# Y = -62.96 + 2.136*x1 + 0.4002*x2

#area predict of argument
source("betaInt.R")
beta.int(lm.sol)

#hui gui yu ce
new <- data.frame(x1=80, x2=40)
lm.pred <- predict(lm.sol,new,interval = "prediction",level = 0.95)
lm.pred

#xiu zheng ni he mo xing
#gong shi : new.model <- update(old.model, new.formula)
