install.packages("reticulate")
library(reticulate)
use_condaenv(condaenv = "Data", required = TRUE)
install.packages('IRkernel')
IRkernel::installspec()
jupyter notebook
