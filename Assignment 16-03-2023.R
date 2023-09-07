#----------Q-1-----------
#Probability winning
p=0.6
#a  probability winning 7 games out of 10 p(x=7)
dbinom(7,10,p)
#b  probability winning atleast 8 games out of 10 p(x>=8)
1-(pbinom(7,10,p,lower.tail=TRUE))




#Q-2
#probabilty that answered question is correct is 1/4=0.25
q=0.25
n=10
#Probability that he answers exactly 2 questions p(x=2)
dbinom(2,n,q)


#Q-3
#probability for true or falseis 1/2=0.5
p1=0.5
#probability for mcq is 0.25
p2=0.25
#total 10 questions n=10 out of which 4tf and 6 mcq
#probabilty for exactly 2 answers correct =p(2 in tf)*p( 0 in mcq)+p(2 in mcq)*p(0 in tf)+p(1 in mcq).(1 in mcq)
a=dbinom(2,4,p1)
b=dbinom(2,6,p2)
c=dbinom(1,4,p1)
d=dbinom(1,6,p2)
g=dbinom(0,6,p2)
f=dbinom(0,4,p1)
#total probabilty
z=(a*g)+(b*f)+(c*d)
z

#Q-4
#given average rate doing mistake  means mean=1.2
l=1.2
#a)p(x>=3) doing mistakes
1-ppois(2,l,lower.tail=TRUE)
#b)p(x=10) per 6classes means l*6
dpois(10,l*6)
#c)probability of exactly 2 mistake free class out of 6classes
v=dpois(0,l)  #probabilty for mistake free classes p(0)
dbinom(2,6,v)

#Q-5 car demanding question
me=1.5
#a proption of a days when there is no demand
dpois(0,me)
#b demand is refused means >2cars p(x>2)
1-ppois(2,me,lower.tail=TRUE)


#Q-6 A manfacture  knows 5% are defective nd sells clips in 100 pack he guarntess not more than 10 clips defective find pr. of failing gurantee
pr=0.05
nu=100
1-pbinom(10,nu,pr,lower.tail=TRUE)

#Q-7
lam=4 #4 calls per 10 min interval
#a) p(x<=2)
ppois(2,lam,lower.tail=TRUE)
#b) p(x=3)
dpois(3,lam)

#Q-8
mean_preg=266 #days
std_dev_preg=16 #days
# propotion of all  pregancies last between 240 to 270 days
pnorm(270,mean_preg,std_dev_preg)-pnorm(240,mean_preg,std_dev_preg)

#Q-9
#p(x>500)=0.05 original
#p(x>=500)=1-0.05=0.95
#pnorm(500,me,std)=0.95
#p(z<500-me/std)=0.95
#from z table we get equation as a*std dev+me=co  i.e., 1.65,1,500
#mean incresby 50 pn=0.2
#p(x<=500)=0.8
#we get 0.85,1,450
#solve to get me and std
A<-rbind(c(1.65,1),c(0.85,1))
B<-c(500,450)
solve(A,B)



#Q-10
#Edward sending distribution
mean_spend=4.11
stddev_spend=1.37
#percentage of customers will spend less than $3.00 on concessions
ans=pnorm(3,mean_spend,stddev_spend)
print(paste(round((ans*100),2),"%"))




