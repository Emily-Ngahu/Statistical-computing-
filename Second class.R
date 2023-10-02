install.packages("ggplot2")
library(ggplot2)
set.seed(250)
varx<-rnorm(50,mean=2,sd=2)
vary<-varx +rnorm(50,0,1)
dfdata<-data.frame(varx,vary)
ggplot(data=dfdata,aes(x=varx,y=vary))+geom_point()
ggplot(data=dfdata,aes(x=varx))+geom_histogram()
varx
varx
ggplot(data=dfdata,aes(x=varx))+geom_histogram()+theme_dark()
ggplot(data=dfdata,aes(x=varx))+geom_histogram(binwidth = 0.5,color="maroon")+theme_dark()
ggplot(data=dfdata,aes(y=varx))+geom_boxplot()
ggplot(data=dfdata,aes(x=varx))+geom_boxplot()
mydata<-read.csv("file:\\C:\Users\ADMIN\Downloads\Module_Preparing_data-a-3737\Module_Preparing_data\Identifyin patterns\Dependent and independent variables.xlsx")
ggplot(data=dfdata,aes(x=varx,y=vary))+geom_line()
ggplot(data=dfdata,aes(x=varx,y=vary))+geom_smooth()
func1<-function(x,y){
  res<-(x^2 + y^2)/10
  return(res)
}
func1(2,3)
xstad<-function(x){
  res<-(x-min(x))/(max(x)-min(x))
  return(res)
}
vec<-c(10,20,3,8,5,2)
xstad(vec)
