# Binomial And Poisson Distribution Exercise
#Q-1
p<-0.001 #probability that person suffer bd from injection
n<-2000 # total persons
#p(X=3)
dbinom(3,n,p)
#p(X>2)
pbinom(2,n,p,lower.tail=FALSE)

#Q-2
q<-0.02 #Probability that bulb is defective
m<-100 #total no of bulbs
#p(X>1)
a=pbinom(1,m,q,lower.tail=FALSE)
#p(1)
b=dbinom(1,m,q)
#p(x>=1)
a+b
#p(x=7)
dbinom(7,m,q)
c=pbinom(8,m,q,lower.tail=TRUE)
d=pbinom(1,m,q,lower.tail=TRUE)
#p(1<x<8)
c-d

#Q-3
r=0.1 #probabilty that tool be defective
z=10 #Number of tools produced
lambda=r*z
lambda
#p(X=2)
#bINOMIAL DISTRIBUTION
dbinom(2,z,r)
#poison distribution
dpois(2,lambda)
