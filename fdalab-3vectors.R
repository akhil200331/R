#Vectors
#Q-1
a<-c(1.2,4.5,6.7,9,8)
a
class(a)
b<-c(1+2i,3,5i,6,7.8i)
b
class(b)
d<-c(TRUE,FALSE,FALSE,TRUE,TRUE)
d
class(d)
e<-c('A','k','H','i','L')
e
class(e)
#Q-2
i<-c(1L,4L,6L,9L)
class(i)
j<-c(3L,5L,7L,8L)
class(i)
#SUM
i+j
#MULTIPLY
i*j
#Integer DIVISION means quotient
i%/%j
#DIVISION
i/j
#Q-3
x<-c()
x<-append(x,2:9)
x
#Q-4
sum(x)
prod(x)
mean(x)
#Q-5
y<-c(1,2,4,5,NA,6,NaN,8)
sum(y,na.rm = TRUE)
mean(y,na.rm = TRUE)
prod(y,na.rm = TRUE)
#Q-6
z<-c(3,6,1,78,45,89,123)
max(z)
min(z)
#Q-7
z<-c(3,6,1,78,45,89,123)
#ASCENDING ORDER
sort(z)
#DESCENDING ORDER
sort(z,TRUE)
#Q-8
p<-c('apple','ball','cat','dog','egg')
'ball' %in% p
#Q-9
q<-c(3,6,1,78,45,89,123)
n<-4 #nth highest
l<-sort(z,TRUE)
l[n]
#Q-10
#SEQUENCE
x<-seq(4,19,by=2)
x
#OPERATOR
y<-4:19
y
