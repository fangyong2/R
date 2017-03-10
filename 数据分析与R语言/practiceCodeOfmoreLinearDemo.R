#1-jia she ji ben mo xing
# Y = B0 + B1*q + B2*w + e

#2-shu ru shu ju
q <- c(-0.05,0.25,0.60,0.00,0.25,0.20,0.15,0.05,-0.15,0.15,0.20,0.10,0.40,0.45,0.35,0.30,0.50,0.50,0.40,-0.05,-0.05,-0.10,0.20,0.10,0.50,0.60,-0.05,0.00,0.05,0.55)
w <- c(5.50,6.75,7.25,5.50,7.00,6.50,6.75,5.25,5.25,6.00,6.50,6.25,7.00,6.90,6.80,6.80,7.10,7.00,6.80,6.50,6.25,6.00,6.50,7.00,6.80,6.80,6.50,5.75,5.80,6.80)
y <- c(7.38,8.51,9.52,7.50,9.33,8.28,8.75,7.87,7.10,8.00,7.89,8.15,9.10,8.86,8.90,8.87,9.26,9.00,8.75,7.95,7.65,7.27,8.00,8.50,8.75,9.21,8.27,7.67,7.93,9.26)
toothpaste <- data.frame(q,w,y)
print(toothpaste)

#3-diao yong lm() ,shu chu jie guo
lm.sol <- lm(y~q+w, data = toothpaste)
summary(lm.sol)

#4-de chu mo xing
#y = 4.4075 + 1.5883*x1 + 0.5635*x2

#5-mo xing de jin yi bu fen xi
#5-1 x1 he y de san dian tu he hui gui zhi xian
attach(toothpaste)
plot(y~q)
abline(lm(y~q))
#5-2 x2 he y de san dian tu he hui gui qu xian
lm2.sol <- lm(y~w+I(w^2))
a <- seq(min(w),max(w),len=200)
b <- predict(lm2.sol, data.frame(w=a))
plot(y~w)
lines(a,b)

#5-3 geng gai hui gui mo xing
# Y = B0 + B1*q + B2*w +B3*w*w + e

#5-4 hui gui fen xi
lm.new <- update(lm.sol, .~.+I(w^2))
summary(lm.new)

# qu jian yu gu
source("betaInt.R")
beta.int(lm.new)

# xiu zheng mo xing
lm2.new <- update(lm.new, .~.-w)
summary(lm2.new)

#xiu zheng mo xing
# Y = B0 + B1*q + B2*w +B3*w*w +B4*q*w + e

#geng xin mo xing
lm3.new <- update(lm.new, .~.+q*w)
summary(lm3.new)

beta.int(lm3.new)

#zui zhong mo xing
#y = 29.1133 + 11.1342*q -7.6080*w + 0.6712*w^2 - 1.4777*q*w