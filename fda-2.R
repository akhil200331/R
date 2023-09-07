#Q-1
carName<-'Volvo'
carName
#Q-2
maxSpeed<-120
maxSpeed
#Q-3
txt<-'World!'
paste('Hello ',txt)
#Q-4
x<-5
y<-10
x+y
#Q-5
all<-ball<-cat<-"Orange"
all
ball
cat
#Q-6
myVar<-30
class(myVar)
#Q-7
x<-10.5
class(x)
#Q-8
ae<-c(10,20,30,40,60)
min(ae)
#Q-9
sqrt(256)
#Q-10
str<-"Hello World!"
str
#Q-11
nchar(str)
#Q-12
grepl('H',str)
#Q-13
paste("VIT-AP ","University")
#Q-14&Q-15
9>8
#Q-16
cd<-2500
dvd<-3500
if (cd>dvd){
  print("cd is greater than dvd")
} else{
  print("cd is not greater than dvd")
}
#Q-17
a<-12
b<-13
if (a>b){
  print("Hello World!")
} else if (a==b) {
  print("Yes")
} else{
  print("No")
}
#Q-18
i<-0
while(i<6){
  if (i==4){
    return()
  } else{
    if (i!=3){
      print(i)
    }
  }
  i<-i+1
}
#Q-19
for (i in 1:100){
  print(i)
}
#Q-20 m^n
powermn<-function(m,n){
  print(m^n)
}
powermn(2,3)
#Q-21
fact<-function(x){
  if (x==1 || x==0){
    return(1)
  } else {
    return(x*fact(x-1))
  }
}
fact(7)