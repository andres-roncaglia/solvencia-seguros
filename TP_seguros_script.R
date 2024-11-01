library(readxl)
options(scipen = 9999)
cuantias_2023 <- read_excel("C:/Users/operador/Downloads/Trabajo Final 2024 Base de Datos .xlsx")
View(Trabajo_Final_2024_Base_de_Datos_)

library(tidyr)
library(dplyr)
library(ggplot2)

cuantias_2023 |> 
  ggplot()+
  aes(x = `CUANTIA AJUSTADA`)+
  geom_density()
  
mean(cuantias_2023$`CUANTIA AJUSTADA`)

# Posibles distribuciones 





