x<-67
print(x)
x
msg<-"hello"
msg
print(msg)
y<-10:40
y
#creating vectors
a<-c(0.5,0.6) #numeric\
a
b<-c(TRUE,FALSE) #boolean
b
cl<-c(T,F)
cl
d<-c('a','b','v') #characters
d
f<-3:23
f
e<-c(1+0i,2+4i)
e
g<-vector("numeric", length=10)
g
h<-c(3.7,"akhil")## character
h
i<-c(TRUE,2)## numeric
i
j<-c("hello",TRUE)## character
j
x<-3:12
class(x)
as.numeric(x)
as.logical(x)
as.character(x)
d<-c('a','b','v')
as.numeric(d)
as.logical(d)
as.complex(d)
m<-matrix(nrow=3,ncol=5)
m
dim(m)
attributes(m)
n<-matrix(3:12, nrow=2, ncol=5)
n
#by taking an vector
a<-1:10
n<-matrix(a,ncol=5,nrow=2)
n
dim(a)<-c(2,5)
a
#binding
a<-2:5
b<-12:15
cbind(a,b)
rbind(a,b)
x<-list(2,"b",TRUE,5+4i)
x
#creating empty list using vector
x<-vector("list", length=3)
x
x<-factor(c("yes","yes","no","yes","no","truee"))
x
table(x)
unclass(x)  #this give position for qualitTIVE DATA
attr(x,"levels")
#levels give value based on alphabetic order
x<-factor(c("yes","yes","no","yes","no"),levels=c("yes","no"))
x
unclass(x)
## Create a vector with NA
x<-c(1,2,NA,10,3)
is.na(x)
is.nan(x)
#create with both na and nan
y<-c(1,'a',2+0i,NA,NaN)
is.na(y)
is.nan(y)
#Data Frames
x<-data.frame(id=1:5, name=c("P1","P2","P3","P4","P5"))
x
nrow(x)
ncol(x)
#Giving some names to it
x<-1:3
names(x)
names(x)<-c("P1","P2","P3")
x
names(x)
#Giving names to list
y<-list("P1"=5,"P2"=2,"P3"=3)
y
names(y)
#Matrices also have names to identify
n<-matrix(3:6, nrow=2, ncol=2)
dimnames(n)<-list(c("P1","P2"),c("P3","P4"))
n
#we can assign names separately to columns and rows
colnames(n)<-c("a","b")
n
rownames(n)<-c("d","e")
n
