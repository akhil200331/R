#VADDI AKHIL 21BCE9784
v<-c(seq(1,10))
v
sum(v)
x<-mean(v)  #x is for mean
median(v)
s<-0 #s for sum of squares
for(i in v) {
s=s+(i*i)
}
print("Sum of squares = ")
s
smd<-0 #smd for sum of xi-mean for mean deviation calculation.
for (i in v) {
smd=smd+abs((i-x))
}
md<-smd/length(v)   #md is for mean deviation about mean
md
#standard deviation by function
stddev<-sd(v)
stddev
if (md<=stddev) {
print("yes Mean Deviation is less than or equal to standard Deviation")
}
if (md>stddev) {
print("No Mean Deviation is not less than or equal to standard Deviation")
}
#standard deviation with formula
sumstd<-0
for (i in v) {
sumstd<-sumstd+((i-x)^2)
}
stdde<-sqrt(sumstd/(length(v)-1))
stdde
