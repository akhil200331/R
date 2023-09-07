#Dataframes
#Q-1,Q2
names<-c("Adam","Antony","Brian","Carl","Doug")
ages<-c(23,22,24,25,26)
Playerdata<-data.frame(names,ages)
Playerdata
#Q-3
summary(Playerdata)
class(Playerdata)
class(Playerdata[,1])
class(Playerdata[,2])
#Q-4
Playerdata["names"]   #gives smaller dataframe
Playerdata["ages"]    #gives smaller dataframe
Playerdata[,"names"]  #gives vector
Playerdata[,"ages"]   #gives vector
#Q-5
Playerdata[c(1,2),]

#Q-7
Playerdata$PLAYER_ID<-c(101,202,303,404,505)
Playerdata
#Q-6
Playerdata[c(3,5),c(1,3)]
#Q-8
row6<-c("John",32,345)
row7<-c("Smith",34,678)
Playerdata<-rbind(Playerdata,row6,row7)
Playerdata
#Q-9
p<-subset(Playerdata,select = -c(names,ages))
p
#Q-10
q<-Playerdata[-c(1,2),]
q

#FACTORS
#Q-1
Playerdata[order(Playerdata$names),]  #increasing order of names
Playerdata[order(Playerdata$ages),]   #increasing order of ages
Playerdata[order(Playerdata$PLAYER_ID),]  #increasing order of ID
Playerdata[order(Playerdata$names,decreasing = TRUE),] #decreasing order of names
Playerdata[order(Playerdata$ages,decreasing = TRUE),]  #decreasing order of ages
Playerdata[order(Playerdata$PLAYER_ID,decreasing = TRUE),] #decreasing order of ID

#Q-2
f<-factor(Playerdata)
f
levels(f)[1]<-levels(f)[2]
f