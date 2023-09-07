#df student
library("dplyr")
sname<-c("AKHIL","BHARATH","AJITH","RAVI","SOMESH")
rno<-c('s101','s102','s405','s304','s708')
scgpa<-c(7,9,8,6.5,8.9)
scou<-c('CSE','CSE','CSE AI','CSE FDA','CSE IOT')
sfather<-c('SYAM','ARUN','RAKESH','SIMHADRI','JAI')
syear<-c(1,3,4,2,1)
studentdata<-data.frame(rno,sname,syear,scou,sfather,scgpa)
studentdata
#Organisation data
rno<-c('s102','s405','f450','f345','s708','f456','s102','s123','s101')
oname<-c('BHARATH','AJITH','HARI','GOKUL','SOMESH','BHAVAN','BHARATH','ANIL','AKHIL')
ofather<-c('ARUN','RAKESH',NA,'MANIL','JAI','ROHIT','ARUN',NA,'SYAM')
operf<-c(98,45,67,89,76,78,65,54,34)
organisationdata<-data.frame(rno,oname,ofather,operf)
organisationdata
#Q-1 ORDERING DATA of studentdata
#Increasing order of cgpa
studentdata[order(studentdata$scgpa),]
#Decreasing order of cgpa
studentdata[order(-studentdata$scgpa),]
#Increasing order of year
studentdata[order(studentdata$syear),]
#Decreasing order of year
studentdata[order(-studentdata$syear),]
#Increasing order of cgpa and decreasing order of year
studentdata[order(studentdata$scgpa,-studentdata$syear),]
#Decreasing order of cgpa and increasing order of year
studentdata[order(-studentdata$scgpa,studentdata$syear),]


#Q-2
#FINDING DUPLICATES AND REMOVING
d<-duplicated(organisationdata)
d
#duplicated values
organisationdata[d,]
#after removing duplicated values
onew<-organisationdata[!d,]
onew
#or
unique(organisationdata)

#Q-3
#Handling missing values and summarize
onew2<-onew[-which(is.na(onew$ofather)),]
onew2
summary(onew2)



#Q-4
#MERGING THE VALUES
#INNER JOIN
merge(x=studentdata,y=organisationdata,by = "rno")
#LEFT OUTER JOIN
merge(x=studentdata,y=organisationdata,all.x=TRUE)

#RIGHT OUTER JOIN
merge(x=studentdata,y=organisationdata,all.y=TRUE)
#FULL OUTER JOIN
merge(x=studentdata,y=organisationdata,all=TRUE)
#CROSS JOIN
merge(x=studentdata,y=organisationdata,by=NULL)
#anti join
anti_join(x=studentdata,y=organisationdata,by = "rno")


#Q-5
#COPYING CONTENT TO CSV
write.csv(onew2,"E://odata.csv",row.names=FALSE)
write.csv(studentdata,"E://sdata.csv",row.names=FALSE)


#Q-6
#basic plots
hist(studentdata$scgpa,col='green',border='black',xlab='CGPA')
barplot(studentdata$scgpa,names.arg=studentdata$sname,xlab='STUDENT NAME',ylab='CGPA',col = 'blue',border = 'white',main='Student & CGPA')
#pie chart
cols<-c('red','blue','green','pink','yellow')
pie(studentdata$scgpa,labels = scgpa,col = cols,main = 'Student Cgpa')
legend("bottomright", sname, cex=0.5, fill=cols)