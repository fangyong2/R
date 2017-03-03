#jian dan xian xing hui gui de zhi huan jian yan
library(lmPerm)
set.seed(1234)
fit <- lmp(weight~height,data=women,perm = "Prob")
summary(fit)

#duo xiang shi hui gui de zhi huan jian yan
fit <- lmp(weight~height + I(height^2), data=women,perm = "Prob")
summary(fit)

#duo yuan hui gui
states <- as.data.frame(state.x77)
fit <- lmp(Murder~Population + Illiteracy + Income + Frost,data=states,perm="Prob")

#dan yin su fang cha fen xi de zhi huan jian yan
library(multcomp)
set.seed(1234)
fit <- aovp(response~trt, data=cholesterol,perm = "Prob")
summary(fit)
fit <- aovp(weight~gesttime + dose, data=litter,perm = "Prob")
summary(fit)

#shuang yin su fang cha fen xi de zhi huan jian yan
set.seed(1234)
fit <- aovp(len~supp*dose,data=ToothGrowth,perm = "Prob")
summary(fit)

# boot bao zhong de zi zhu fa 
#dui dan ge tong ji liang shi yong zi zhu fa
rsq <- function(formula, data, indices) {
  d <- data[indices,]
  fit <- lm(formula, data = d)
  return(summary(fit)$r.square)
}
library(boot)
set.seed(1234)
results <- boot(data=mtcars,statistic = rsq,R=1000,formula=mpg~wt+disp)
print(results)
plot(results)
boot.ci(results,type=c("perc","bca"))

# duo ge tong ji liang de zi zhu fa
bs <- function(formula, data, indices) {
  d <- data[indices,]
  fit <- lm(formula, data=d)
  return(coef(fit))
}
set.seed(1234)
results <- boot(data=mtcars, statistic = bs,
                R=1000,formula=mpg~wt+disp)
print(results)
plot(results,index = 2)
boot.ci(results,type="bca",index=2)
boot.ci(results,type="bca",index=3)
boot.ci(boot.out = results,type="bca",index=2)