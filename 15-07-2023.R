#df student
#21BCE9784
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
operf<-c(98,45,67,89,76,76,65,67,34)
organisationdata<-data.frame(rno,oname,ofather,operf)
organisationdata
#1
sample_n(studentdata,2)
#2
sample_frac(studentdata,0.38)
#3
x1=distinct(organisationdata)
x1
#4
x2=distinct(organisationdata,operf,.keep_all = TRUE)
x2
#5
x3=distinct(organisationdata,operf,ofather,.keep_all = TRUE)
x3
#6
mydata=select(studentdata,rno,sname:scou)
mydata
#7
myd2=select(studentdata,-scou)
myd2
#8
select(studentdata,starts_with("r"))
#9
select(studentdata,-starts_with("s"))
#10
select(studentdata,ends_with("o"))
select(studentdata,contains("r"))
#11
myd4<-rename(studentdata,srno=rno)
myd4
#12 Filtering
myd5<-filter(studentdata,sname=='AKHIL')
myd5
#13
myd6<-filter(studentdata,sname%in%c('AKHIL','RAVI'))
myd6
#14
myd7<-filter(studentdata,sname%in%c('AKHIL','RAVI') & scgpa>=7)
myd7
#15
myd8<-filter(studentdata,sname%in%c('AKHIL','RAVI') | scgpa>=7)
myd8
#16
myd9<-filter(studentdata,!sname=='AKHIL')
myd9
#17
myda1<-filter(studentdata,grepl('AKHIL',sname))
myda1
#18
summarise(studentdata,mean_gpa=mean(scgpa),median_gpa=median(scgpa))
#19
summarise_at(studentdata,vars(scgpa,syear),lst(mean,median))
#20
summarise_at(studentdata,vars(scgpa,syear), function(x) var(x - mean(x)))
#21
arrange(studentdata,scgpa,syear)
arrange(studentdata,desc(scgpa),syear)
arrange(studentdata,scgpa,desc(syear))
arrange(studentdata,desc(scgpa),desc(syear))
#22
group_by(studentdata,syear)
dfg<-studentdata%>%group_by(syear)
dfg
#23
t = studentdata %>% select(rno, scgpa) %>%  filter(rno %in% c("s101","s102")) %>%  group_by(rno) %>%do(arrange(.,desc(scgpa))) %>%  slice(3)
t
#24
t = studentdata %>%  group_by(syear)%>%  summarise(Mean_cgpa = mean(scgpa, na.rm=TRUE), Mean_year = mean(syear, na.rm=TRUE)) %>%  arrange(desc(Mean_cgpa))
t
#25
m1<-mutate(studentdata,scgpa=scgpa*0.5)
m1
#26
out2 = studentdata %>% group_by(syear) %>% mutate(Total=cumsum(scgpa))%>%select(syear, scgpa, rno)
out2
#27
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
#28
union(syear,scgpa)
intersect(oname,sname)
setdiff(oname,sname)
#29
if_else(syear<3,"Juniors","Seniors")
#30
mydf<-organisationdata %>% mutate(flag = case_when(is.na(ofather) ~ "I am missing",TRUE ~ "Others"))
mydf
#31
df = studentdata %>%rowwise() %>% mutate(Max= max(scgpa,syear)) %>%  select(rno:scou,Max)
df
#32
rbind(studentdata[1],organisationdata[1])
cbind(studentdata[c(1,3),3],organisationdata[c(1,3),2])
#33
mydata<-studentdata %>% group_by(syear) %>%  summarise(Pecentile_25=quantile(scgpa, probs=0.25),Pecentile_50=quantile(scgpa, probs=0.5))
mydata
#34
p<- mutate(studentdata, pos = ntile(studentdata$scgpa,5))
p
#35
select_if(studentdata,is.numeric)
select_if(studentdata,is.factor)
#36
na_if(ofather,"")