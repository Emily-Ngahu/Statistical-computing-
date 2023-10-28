#set the no of values
n<-10000
#generate n random numbers on the interval[0,1]
x<-runif(n,min=0,max=1)
#evaluate the functionf(x)=x^2 at the random values of x
fx<-x^2
#estimate the integral 
integral<-mean(fx)*1
integral
6^3
(4*216)/3
#set the no of values
n<-10000
#generate n random numbers on the interval[0,1]
x<-runif(n,min=0,max=6)
#evaluate the functionf(x)=x^2 at the random values of x
fx<-4*(x^2)
#estimate the integral 
integral<-mean(fx)*6
integral
n=100000
x<-runif(n,min=0,max=6)
fx<-4*(x^2)
integral<-mean(fx)*6
integral

n=100000
t<-runif(n,min=0,max=(pi/3))
ft<-sin(t)
integral<-mean(ft)*(pi/3)
integral

fx<-function(x){
  1/((x+1)*sqrt(x))
}
fx<-1/((x+1)*sqrt(x))
integrate(fx,0,Inf)
install.packages("cubature")
library(cubature)
f<-function(x){ 
  (2/3)*(x[1]+x[2]+x[3])
}
adaptIntegrate(f,lowerLimit = c(0,0,0),upperLimit = c(0.5,0.5,0.5))

n<-500
x<-rpois(n,lambda = 5)
x
e<-rnorm(n,0,3)
e
B0<-2
B1<-3.2
Y<-B0+(B1*x)+e
Y
plot(x,Y)

n<-500
x<-rpois(n,lambda = 5)
x
e<-rnorm(n,0,3)
e
B0<-2
B1<-3.2
Y<-B0+(B1*x)+e
Y
plot(x,Y)

LRsim<-function(n,B0,B1,mx,sdx,me,sde){
  x<-rnorm(n,mx,sdx)
  Y<-B0-B1*(x)+rnorm(n,me,sde)
  return(cbind(x,Y))
}
data<-LRsim(1000,150,4,50,9,0,10)
plot(data[,1],data[,2])

lmest<-function(x,Y){
  n<-length(x)
  B1<-(n*(sum(x*y))-sum(x)*sum(y))/(n*sum(x^2)-(sum(x)^2))
  B0<-mean(y)-B1*mean(x)
  return(c(B0,B1))
}
lmest(x=data[,1],Y=data[,2])
(2405+290+280+950)/2
2405/2
570/2

1490


