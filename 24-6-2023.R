#dataframes -5
#Q-1
x<-c(45.5,67.8,34.2,23.5,78,90,98,76)
length(x)
sum(x)
prod(x)
sqrt(x)
max(x)
min(x)
mean(x)
median(x)
ceiling(x)
floor(x)
log(x)
log2(x)
exp(x)

#Q-2
y<-c('akhil','BharaTh is a good boy','Anil','Dany','S','s','p')
is.character(y)
nchar(y)
tolower(y)
toupper(y)
strrep(y,c(5,2,3,2,5))
strsplit(y[1],'h')  #split akhil into two as refernce of h character
substr(y[2],1,10)
paste(y[1],"and",y[2],",")
grep("aaaaaa",a)
b<-c("Hello World","Make World")
gsub("World","Computer",b,ignore.case=TRUE)


#Q-3
x<-c(45.5,67.8,34.2,23.5,78,90,98,76)
max(x)
min(x)
mean(x)
median(x)
sd(x)
range(x)
sum(x)

#Q-4
Empid<-c(12,13,45,67)
empname<-c("Suresh","Ramesh","Ganesh","Sukesh")
age<-c(24,36,27,34)
sal<-c(123450L,23456L,56789L,78654L)
emp<-data.frame(Empid,empname,age,sal)
emp
oa<-order(-emp$age)
emp[oa,]
#Q-5
ons<-order(-emp$sal,emp$empname)
emp[ons,]
#Q-6
emp$Deptno<-c(1,4,5,6)
emp

#Q-7
Deptno<-c(2,4,5,6,7)
DeptName<-c("Marketing","Accounting","Social Media","Documentation","Public Relations")
dept<-data.frame(Deptno,DeptName)
dept
#Project
Deptno<-c(3,4,5,6)
PNo<-c(101,203,459,345)
Pname<-c("Emotion Classification","Temperature Detector","Gas Detector","Gender Detextion")
Project<-data.frame(Deptno,PNo,Pname)
Project

#Q-8
#Inner Join
merge(x=emp,y=dept,by="Deptno")
#Cross Join
merge(x=emp,y=dept,by=NULL)

#Q-9
#right join
merge(emp,Project,all.Project=TRUE)
#Left join
merge(emp,Project,all.emp=TRUE)
#Outer Join
merge(emp,Project,all=TRUE)


#Q-10
colnames(emp)[5]<-c("DNo")
emp

#Q-11
eadd<-c(101,"Viswa",NA,100000L,7)
Emp<-rbind(emp,eadd)
Emp
#Q-12
medianage<-median(as.numeric(Emp$age),na.rm=TRUE)
medianage
Emp[is.na(Emp$age),3]<-medianage
Emp

#Q-13
library("dplyr")
as.tbl(Emp)
detach("package:dplyr",unload=FALSE)
as.tbl(Emp)