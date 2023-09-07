#data table
datacon<-read.csv("D:\\vit 2nd year\\Win sem\\labs\\maths\\income.data.csv")
dataincome=datacon$income
datahapiness=datacon$happiness
#mean for income set
mean(dataincome)
#mean for happiness set
mean(datahapiness)
#median for income set
median(dataincome)
#median for happiness set
median(datahapiness)
#for calculating mode we have to define a function
calcmode<-function(v){
uniqv<-unique(v)
#Below syntax tells that about 
uniqv[which.max(tabulate(match(v, uniqv)))]
}
#mode for income set
calcmode(dataincome)
#mode for happiness set
calcmode(datahapiness)