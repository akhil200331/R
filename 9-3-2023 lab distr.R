#Q-1
n<-8 #total 8 coins tossed
m<-1/2 #probability of sucess getting head
#p(x<=5)
q<-pbinom(5,n,m,lower.tail=TRUE)
1-q
#other method p(x>5)
r<-pbinom(5,n,m,lower.tail=FALSE)
r

#Q-2
lower<-qbinom(0.001,100,0.5)
upper<-qbinom(0.999,100,0.5)
N<-seq(lower,upper,1)
Q<-seq(0.001,0.999,0.001)
dbinom100<-data.frame(N,dbinom(N,100,0.5),pbinom(N,100,0.5))
qbinom100<-data.frame(Q,qbinom(Q,100,0.5))
head(dbinom100)
head(qbinom100,20)
