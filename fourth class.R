set.seed(250)
runif(100,2,3)
rnorm(100,1,1)
rt(100,5)
rexp(100,5)
dt<-rnorm(100,2,6)
plot(density(dt))
dt2<-rexp(1000,6)
plot(density(dt2))
rpois(100,5)
rbinom(100,12,0.6)
sales <- read.csv("C:/Users/ADMIN/Documents/ice cream data.csv")
sales
sample.sales<-sample(sales,50,replace=TRUE)
sample.sales
y<-c(0,1,2,3,4,8,8,9,10,11)
B<-100
ybootmean<-NULL
for(k in 1:B){
  ybootsample<-sample(y,size=length(y),replace=TRUE)
  ybootmean[k]<-mean(ybootsample)
}
ybootmean
SE<-sqrt((sum(ybootmean-mean(ybootmean))^2))
SE
plot(density(ybootmean))
#Bias
y<-c(0,1,2,3,4,8,8,9,10,11)
B<-100
ybarboot<-NULL
for(k in 1:B){
  ybootsample<-sample(y,size=length(y),replace=TRUE)
  ybarboot[k]<-mean(ybootsample)
}
ybarboot
Bias<-mean(ybarboot) - mean(y)
Bias