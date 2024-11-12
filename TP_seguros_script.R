library(readxl)
library(tidyr)
library(dplyr)
library(ggplot2)
library(lubridate)
options(scipen = 999)
cuantias_2023 <- read_excel("Datos/Datos.xlsx") |> 
  mutate(Marginal = ifelse(Cuantia_ajustada < 900000, T,F),
         Cuantia_ajustada = Cuantia_ajustada/1000)

View(cuantias_2023)

Registro <- tibble(
  anio = c(2021,2022,2023),
  polizas = c(24725, 25348 , 25615),
  siniestros = c(3023, 3581, nrow(cuantias_2023))
) |> 
  mutate(SinXpoliza = siniestros/polizas)

lambda <- Registro$SinXpoliza[3]




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





