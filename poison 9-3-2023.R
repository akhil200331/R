#poison
ce<-function(n,p){
n*p
}
ce(2,0.5)
p=0.02
n=200
lam=ce(n,p)
#p(x<2)
(ppois(2,lam,lower.tail=TRUE))-(dpois(2,lam))
#p(x<=3)
a=ppois(3,lam,lower.tail=TRUE)
#p(x>3)
1-a
#other method
p(x>3)
(ppois(3,lam,lower.tail=FALSE))



#other
lower<-qpois(0.001,2.5)
upper<-qpois(0.999,2.5)
N<-seq(lower,upper,1)
Q<-seq(0.001,0.999,0.001)
dpois25<-data.frame(N,dpois(N,2.5),ppois(N,2.5))
qpois25<-data.frame(Q,qpois(Q,2.5))
head(dpois25)
head(dpois25,10)


#q3
lambd=3 #mean 3balls per hour
ppois(10,lambd,lower.tail=TRUE)
