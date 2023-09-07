#21BCE9784 VADDI AKHIL
#data table
datacon<-read.csv("D:\\vit 2nd year\\Win sem\\labs\\maths\\dataenv.csv")
dataozone=datacon$ozone
dataozone
datasolar=datacon$solar
datasolar
datatemp=datacon$temp
datatemp
#mean for ozone set
mean(dataozone)
#median for data ozone set
median(dataozone)
#mean for solar set
mean(datasolar)
#median for data solar set
median(datasolar)
#mean for temperature set
mean(datatemp)
#median for data temperature set
median(datatemp)
#to calculate mode we have set frequency for assigned values then we get mode
calcmode<-function(v){
uniqv<-unique(v)
#below tabular form tells about uniqueness and frequency of discrete data and get mode
#frequency of certain set
uniqv[which.max(tabulate(match(v, uniqv)))]
}
#mode for ozone
uniqv<-unique(dataozone)
tabulate(match(dataozone, uniqv))
calcmode(dataozone)
#mode for solar
uniqvv<-unique(datasolar)
tabulate(match(datasolar, uniqvv))
calcmode(datasolar)
#mode for temperature set
uniqvvv<-unique(datatemp)
tabulate(match(datatemp, uniqvvv))
calcmode(datatemp)
par(mfrow=c(4,3))
#plotting techniques
#plot ozone
plot(datacon$ozone,type='l',main="Ozone",xlab="frequency",ylab="Ozone",col="blue")
#plot temp
plot(datacon$temp,type='l',main="Temperature",xlab="frequency",ylab="Temp",col="red")
#plot solar
plot(datacon$solar,type='l',main="Solar",xlab="frequency",ylab="Solar",col="green")
#plot ozone vs solar
plot(datacon$ozone,datacon$solar,type='o',main="Ozone vs Solar",xlab="Ozone",ylab="Solar",col="blue")
#plot ozone vs temp
plot(datacon$ozone,datacon$temp,type='o',main="Ozone vs Temperature",xlab="Ozone",ylab="Temp",col="red")
#plot temp vs solar
plot(datacon$temp,datacon$solar,type='o',main="Temperature vs Solar",xlab="temp",ylab="Solar",col="green")
#histogram of ozone
hist(dataozone,col="pink",xlab="ozone")
#histogram of solar
hist(datasolar,col="green",xlab="solar")
#histogram of Temperature
hist(datatemp,col="yellow",xlab="temp")
#boxplot of ozone
boxplot(dataozone,main="boxplot of ozone",col="pink",xlab="ozone")
#boxplot of solar
boxplot(datasolar,main="boxplot of solar",col="green",xlab="solar")
#boxplot of Temperature
boxplot(datatemp,col="yellow",xlab="temp",main="boxplot of temp")