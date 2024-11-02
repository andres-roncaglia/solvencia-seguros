library(readxl)
library(tidyr)
library(dplyr)
library(ggplot2)
library(lubridate)
options(scipen = 9999)
cuantias_2023 <- read_excel("Datos/Datos.xlsx")
View(Trabajo_Final_2024_Base_de_Datos_)



cuantias_2023 |> 
  ggplot()+
  aes(x = Cuantia_ajustada)+
  geom_density()
  
mean(cuantias_2023$Cuantia_ajustada)
cuantias_2023$
# Posibles distribuciones 





