#Binomial Distribution
#dbinom At a point
#pbinom  cumulative function
#qbinom  reverse of p
#rbinom  sample space given mean
n<-100 #number of trials
p<-0.6 #probability of success getting head
x=0:100
patpoint<-dbinom(50,n,p) #probability of 50 succeses
patpoint
cumf<-pbinom(50,n,p,lower.tail=TRUE)  #probability upto
cumf
sum(dbinom(0:50,n,p)) #to get pbinom from dbinom
#reverse of qbinom  upto % how probability sucess varies
qbinom(.20,n,p)
#rbinom show a numbe rof sucess upto x
rbinom(10,n,p)
#plotting ij bargraph
y<-dbinom(0:100,n,p)
y
barplot(y,space=0)
#sequence plotting
X=seq(0.1,1,by=0.1)
X
par(mfrow=c(5,3))
for (i in X) {
barplot(dbinom(x,n,i),space=0,ylab=i)
}
#mean of B(n,p)
meann<-function(ni,pi){
ni*pi
}
meann(n,p)
# variance of B(n,p)
variance<-function(ni,pi){
ni*pi*(1-pi)
}
variance(n,p)
