price<-c(20,25,30,28,29,31,34,39,40,43)   #in lakhs
floorarea<-c(1200,1500,1000,900,1600,1650,1760,1870,1980,2000)
rooms<-c(4,5,3,3,4,4,5,3,6,6)
Age<-c(30,27,29,27,28,32,31,34,35,33)
sampledata=data.frame(price,floorarea,rooms,Age)
sampledata
#mean of price
mean(sampledata$price)
#mean of floorarea
mean(sampledata$floorarea)
#mean of rooms
mean(sampledata$rooms)
#mean of Age
mean(sampledata$Age)
#median of price
median(sampledata$price)
#median of floorarea
median(sampledata$floorarea)
#median of rooms
median(sampledata$rooms)
#median of Age
median(sampledata$Age)
#standard deviation of price
sd(sampledata$price)
#standard deviation of floorarea
sd(sampledata$floorarea)
#standard deviation of rooms
sd(sampledata$rooms)
#standard deviation of Age
sd(sampledata$Age)
par(mfrow=c(4,4))
plot(sampledata$price,sampledata$floorarea,'l',main="Price vs Floor",xlab="price (in lakhs)",ylab="Floor Area",col="blue")
plot(sampledata$price,sampledata$Age,'l',main="Price vs Age",xlab="price (in lakhs)",ylab="Age in Years",col="red")
plot(sampledata$price,sampledata$rooms,'l',main="Price vs rooms",xlab="price (in lakhs)",ylab="rooms",col="pink")
hist(sampledata$price,main="price histogram",xlab="price",col="blue",border="white",xlim=c(0,50),ylim=c(0,10),breaks=8)
hist(sampledata$floorarea,main="floorarea histogram",xlab="floorarea",col="green",border="white",xlim=c(0,2000),ylim=c(0,10),breaks=8)
hist(sampledata$Age,main="Age histogram",xlab="Age",col="pink",border="white",xlim=c(0,40),ylim=c(0,8),breaks=7)
boxplot(sampledata$price,col="red",ylim=c(0,50),main="price")
boxplot(sampledata$Age,col="blue",ylim=c(0,40),main="Age")
boxplot(sampledata$floorarea,col="pink",ylim=c(0,2000),main="FloorArea")