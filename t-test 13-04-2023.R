#Q-1
data1<-c(45,47,50,52,48,47,49,53,51)
t.test(data1,mu=47.5,alternative="two.sided")

#Q-2
data2<-c(578,572,570,568,572,570,570,572,596,584)
t.test(data2,mu=577,alternative="two.sided")

library("TeachingDemos")
#Q-3
data3=c(65,78,88,55,48,95,66,57,79,81,75,58,18,35,58,96,61,52,39,44,61,38,68,65,88,75,46,97,72,82,62,78,87,50,55,99,65,53,70,84)
z.test(data3,mu=95,sd=sqrt(20)) #Confidence level 0.95 default