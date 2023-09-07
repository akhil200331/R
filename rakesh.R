names<-c("Adam","Antony","Brian","carl","Doug")
Ages<-c(23,22,24,25,26)
df<-data.frame(names,Ages)
df$PLAYER_ID<-c(1,2,3,4,5)
#Q-8
row6<-c("Raj",32,6)
row7<-c("Kumar",34,7)
df<-rbind(df,row6,row7)
df
#Q-9
p<-subset(df,select = -c(names,ages))
p
#Q-10
q<-df[-c(1,2),]
q

#FACTORS
#Q-1
df[order(df$names),]  #increasing order of names
df[order(df$Ages),]   #increasing order of ages
df[order(df$PLAYER_ID),]  #increasing order of ID
df[order(df$names,decreasing = TRUE),] #decreasing order of names
df[order(df$Ages,decreasing = TRUE),]  #decreasing order of ages
df[order(df$PLAYER_ID,decreasing = TRUE),] #decreasing order of ID

#Q-2
f<-factor(df)
f
levels(f)[1]<-levels(f)[2]
f