#function that takes any vector
numbers<-c(0.77,1.11,-0.17,-0.48,-0.45,0.48,0.32,0.18,0.87,0.56,0.78,0.50,1.17,0.81,-0.23,1.44)
for(i in 1:length(numbers)){
  if (numbers[i]>=0 &numbers[i]<0.5){
    print(1)
  }else if (numbers[i]>=0.5 & numbers[i]<=1){
    print(-1)
  }else{
    print(0)
  }
}
pexp(3,(1/8))

fx<-function(x,a,b){
  w<-(x-a)/b
  return(w)
}
output<-Vectorize(fx)
output
output(3,6,3,4,2,6)
R.version.string
options(repos = c(CRAN = "https://cloud.r-project.org"))
install.packages("yuima")
install.packages("installr")
library(installr)
updateR()