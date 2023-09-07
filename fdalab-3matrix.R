#MATRICES
#Q-1
v<-1:5
mat<-matrix(v,4,4)
rownames(mat)<-c("rone","rtwo","rthree","rfour")
colnames(mat)<-c("cone","ctwo","cthree","cfour")
mat
#Q-2
mat[2,3]
mat[3,]
mat[,4]
#Q-3
v<-11:26
mat1<-matrix(v,4,4)
mat2<-matrix(v,4,4,byrow=TRUE)
mat1+mat2
mat1-mat2
mat1*mat2
mat1%*%mat2
mat1/mat2
mat1%/%mat2
#Q-4
a<-1:3
b<-4:6
c<-8:10
mat<-rbind(a,b,c)
mat
#Q-5
mat<-matrix(c(1,4,6,3,2,3,4,3,4),3,3)
mat
M<-max(mat)
M
which(mat==M,arr.ind=TRUE)
m<-min(mat)
m
which(mat==m,arr.ind=TRUE)


#ARRAYS
#Q-6
v1 =  c(1,3,4,5)
v2 =  c(10,11,12,13,14,15)
arr<-array(c(v1,v2),dim=c(3,3,2))
arr
#Q-7
v<-1:24
arr<-array(v,dim = c(4,3,2))
arr
#Q-8
v1 =  c(1,3,4,5)
v2 =  c(10,11,12,13,14,15)
arr<-array(c(v1,v2),dim=c(3,3,2))
arr
arr[2,,2]
arr[3,3,1]