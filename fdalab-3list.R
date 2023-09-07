#LISTS
#Q-1
lst<-list("Umesh",18,TRUE,FALSE,67.8,89i,c(1:6))
lst
#Q-2
Newlist <- list(a=1:10, b="Good morning", c="Hi")
Newlist
Newlist[[1]]+c(1)
#Q-3
y <- list("a", "b", "c")
names(y)<-c("one","two","three")
y
#Q-4
string <- "Grand Opening"
strsplit(string," ")
#Q-5
lst1<-list("Umesh",18,TRUE,FALSE,67.8,89i,c(1:6))
lst2<-list("Siraj",19,FALSE,678,9i)
lst3<-list(lst1,lst2)
lst3[[2]]
class(lst3[[2]])
lst3[[2]][[1]]
class(lst3[[2]][[1]])
#Q-6
lst1<-list("Umesh",18,TRUE,c(1:3))
lst2<-list("Siraj",19,FALSE,9i)
lstf<-c(lst1,lst2)
lstf
#Q-7
lst1<-list("Umesh",18,TRUE,c(1:3))
unlist(lst1)
#Q-8
lst1<-list("Umesh",18,TRUE,c(1:3))
a <- "R Programming"
append(lst1,a)
#Q-9
lst1<-list(c(1:3),c(4:9),"Umesh",18,TRUE)
length(lst1[[1]])
length(lst1[[2]])
#Q-10
lst1<-list(12,13,45,67,89,99)
lst2<-list(45,67,89,34,33,90)
setdiff(lst1,lst2)