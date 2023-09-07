#data table
datacon<-read.csv("D:\\vit 2nd year\\Win sem\\labs\\maths\\Book1.csv")
datahapiness=datacon$data
#for calculating mode we have to define a function
calcmode<-function(v){
uniqv<-unique(v)
#Below syntax tells that about 
uniqv[which.max(tabulate(match(v, uniqv)))]
}
#mode for happiness set
calcmode(datahapiness)
uni<-unique(datahapiness)
tabulate(match(datahapiness,uni))