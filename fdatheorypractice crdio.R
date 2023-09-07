data<-read.csv("D:/p1.csv")
data
mean(data$Age)
median(data$Cholestrol)
range(data$MaxHR)
max(data$MaxHR)-min(data$MaxHR)
x<-data$RestingBP-mean(data$RestingBP)
x
y<-x^2
y
sqrt(sum(y)/(length(y)-1))
sd(data$RestingBP)
#mode
calcmode<-function(v){
  uniqv<-unique(v)
  #below tabular form tells about uniqueness and frequency of discrete data and get mode
  #frequency of certain set
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
calcmode(data$ST_Slope)
u<-unique(data$ST_Slope)
which.max(tabulate(match(data$ST_Slope,u))) 