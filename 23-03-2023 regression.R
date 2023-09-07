#23-03-2023
x=c(1:20)
y=c(21:40)
plot(x,y,col='red',pch=20)


#to find b1,b0

#x1=c(1:6)
#x2=c(6,7,9,8,4,5)
x1=c(132,129,120,113.2,105,92,84,83.2,88.4,59,80,81.5,71,69.2)
x2=c(46,48,51,52.1,54,52,59,58.7,61.6,64,61.4,54.6,58.8,58)
xb=mean(x1)
yb=mean(x2)
sxx=sum((x1-xb)**2)
syy=sum((x2-yb)**2)
sxy=sum((x1-xb)*(x2-yb))
b1=sxy/sxx
b0=yb-(b1*xb)
r=sxy/(sqrt(sxx)*sqrt(syy))
r
b1
b0
plot(x1,x2)
abline(b0,b1,col='blue')
#po=lm(x1~x2) po summary(po) abline(po,col='red')


#cor-relation
y1=c(2.4,3.4,4.6,3.7,2.2,3.3,4,2.1)
y2=c(1.33,2.12,1.80,1.65,2,1.76,2.11,1.63)
x1b=mean(y1)
y1b=mean(y2)
sx1x1=sum((y1-x1b)**2)
sy1y1=sum((y2-y1b)**2)
sx1y1=sum((y1-x1b)*(y2-y1b))
r=sx1y1/(sqrt(sx1x1)*sqrt(sy1y1))
r

