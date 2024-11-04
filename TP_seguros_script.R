library(readxl)
library(tidyr)
library(dplyr)
library(ggplot2)
library(lubridate)
options(scipen = 999999999999999)
cuantias_2023 <- read_excel("Datos/Datos.xlsx") |> 
  mutate(Marginal = ifelse(Cuantia_ajustada < 1000000, T,F))
View(cuantias_2023)

class(cuantias_2023$Cuantia_ajustada)

cuantias_2023 |> 
  ggplot()+
  aes(x = Cuantia_ajustada)+
  geom_density()

table(cuantias_2023$Cuantia_ajustada)

cut_interval(x = cuantias_2023$Cuantia_ajustada[cuantias_2023$Marginal == T],
             length = 5000)



sum(Probs)
mean(cuantias_2023$Cuantia_ajustada)

# Posibles distribuciones 





