#q1
p<-0.6 #head comes for 60% of time
n<-50  #No of flips
#p(x>24) or p(x>=25)
pbinom(24,n,p,lower.tail=FALSE)
#1-p(x<=24)
1-(pbinom(24,n,p,lower.tail=TRUE))



#2q
m<-10
q=1/6
p(x<5) or p(x<=4)
pbinom(4,m,q,lower.tail=TRUE)


#How many times head appears 90% of the time for 100 flips
qbinom(0.9,100,0.5)



lamb<-function(n,p){
return n*p
}

#q4 for exactly one defective widget out of 25
dbinom(1,25,0.005)



#q5 B(10,1/3) 10th and 20th quantile
qbinom(0.1,10,1/3)
qbinom(0.2,10,1/3)


