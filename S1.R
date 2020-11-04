install.packages("foreign")
install.packages("rmarkdown")
library("foreign")

setwd("C:/Users/al159/OneDrive/Desktop/Proyecto")
data=read.dbf("DEFUN12.dbf")
#options(max.print=99999999)
data

