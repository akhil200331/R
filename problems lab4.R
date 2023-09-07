#1st problem
p<-0.2 #probability defective is success
n<-4
dbinom(1,n,p) #for one bolt defective
dbinom(0,n,p)  #for zero bolt
sum(dbinom(0:2,n,p)) #atmost 2 bolts defective


#2nd problem
q<-0.2 # sufferinr from it
m<-6 # no of workers
1-pbinom(4,m,q,lower.tail=TRUE)  
sum(dbinom(4:6,m,q))

#3rd
r<-0.02
t<-100
pbinom(1,t,r,lower.tail=TRUE)
sum(dbinom(c(0,1),t,r)) #atleast 1
dbinom(7,t,r) #7 defective