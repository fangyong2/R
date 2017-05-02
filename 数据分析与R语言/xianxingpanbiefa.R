#xian xing pan bie fa
#demo: tian qi yu bao shu ju
G = c(1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2)
x1 = c(-1.9,-6.9,5.2,5.0,7.3,6.8,0.9,-12.5,1.5,3.8,0.2,-0.1,0.4,2.7,2.1,-4.6,-1.7,-2.6,2.6,-2.8)
x2 = c(3.2,0.4,2.0,2.5,0.0,12.7,-5.4,-2.5,1.3,6.8,6.2,7.5,14.6,8.3,0.8,4.3,10.9,13.1,12.8,10.0)
a = data.frame(G,x1,x2)
plot(x1,x2)
text(x1,x2,G,adj = -0.5)

#Mass bao he xian xing pan bie han shu lda()
library(MASS)
ld = lda(G~x1+x2)
print(ld)

#fen lei pan duan
z=predict(ld)
newG = z$class
print(newG)

y=cbind(G,z$x,newG)
print(y)
print(z)