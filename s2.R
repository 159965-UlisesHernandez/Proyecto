library("foreign")
library(tidyverse)
library(plyr)


setwd("C:/Users/Gerardo/Desktop/Workspace/Proyecto/Data/BASE PARA ANUARIOS MORTALIDAD/defunciones_base_datos_2017_dbf")
data <- data.frame(read.dbf(file = 'DEFUN17.dbf',as.is = FALSE))
#head(data)

setwd("C:/Users/Gerardo/Desktop/Workspace/Proyecto/Data/BASE PARA ANUARIOS MORTALIDAD/defunciones_base_datos_2017_dbf")
decateml <-read.dbf(file = 'CATEMLDE17.dbf',as.is = FALSE)


#decateml
Filtro<-decateml %>% filter(CVE_MUN == "000" & CVE_LOC == "0000" & !CVE_ENT %in%
                              c("33", "34", "35", "88", "99"))
Filtro

Filtro$CVE_ENT
Filtro$NOM_LOC

data$ENT_REGIS<-mapvalues(data$ENT_REGIS, 
                          from=Filtro$CVE_ENT, 
                          to=as.character(Filtro$NOM_LOC))


Filtro

head(data)



