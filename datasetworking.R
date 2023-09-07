library(dplyr)
library(caTools)
library(ggplot2)
df<-read.csv("D:/re.csv")
df
library(corrplot)
col<-sapply(df, is.numeric)
col
co<-cor(df[,col])
corrplot(co,method="color")