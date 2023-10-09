fcat<-function(x){
  if(x>=0 & x<0.5){
    print(1)
  }else if(x>=0.5 & x<1){
    print(-1)
  }else{
    print(0)
  }
}
fcat(x=0.3)


set.seed(250)
n.samp<-100
nsize<-30
avesamp<-NULL
SEsamp<-NULL
resmat<-matrix(0,nrow=100,ncol=2)
fsamp<-function(x,n.samp,nsize){
  for(i in 1:n.samp){
    x.sample<-sample(x,nsize)
    avesamp[i]<-mean(x.sample)
    SEsamp[i]<-sd(x.sample)/sqrt(nsize)
    resmat[i,]<-c(avesamp[i],SEsamp[i])
  }
 return(resmat)
}

data<-rnorm(n=500,mean=1,sd=3)
fsamp(x=data,n.samp=100,nsize=30)
library(ggplot2)
avesamp
for(i in 1:n.samp){
  x.sample<-sample(x,nsize)
  avesamp[i]<-mean(x.sample)
  SEsamp[i]<-sd(x.sample)/sqrt(nsize)
  resmat[i,]<-c(avesamp[i],SEsamp[i])
}
(resmat)
resdata<-data.frame(avesamp,SEsamp)
resdata
ggplot(data=resdata,aes(x=avesamp))+geom_histogram()
