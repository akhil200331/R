#Binomial distribution Example:
p<-0.2 #probability that item is defective
n<-4 #Number of Bolts
#p(X=1)
dbinom(1,n,p)
#p(X=0)
dbinom(0,n,p)
#p(X<=2)
pbinom(2,n,p,lower.tail=TRUE)

#Q-1
q<-0.2 #probability that worker may suffer from disease
m<-6 #Number of workers
Q<-pbinom(3,m,q,lower.tail=TRUE)
1-Q

#poison Distribution
#Ex-1
m1<-1.5 #lambda value
dpois(0,m1)
#Demand is refused means more than delivery days i.e., p(X>2)
ppois(2,m1,lower.tail=FALSE)

#EX-2
r<-0.05 #probability that cot be defective
s<-100 #number of boxes
# Given Not more than 10 boxes are defective out of 100
z<-r*s #lambda for poisson
ppois(10,z,lower.tail=FALSE)