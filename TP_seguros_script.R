library(readxl)
library(tidyr)
library(dplyr)
library(ggplot2)
library(lubridate)
options(scipen = 999999999999999)
cuantias_2023 <- read_excel("Datos/Datos.xlsx") |> 
  mutate(Marginal = ifelse(Cuantia_ajustada < 900000, T,F),
         Cuantia_cat = cut(Cuantia_ajustada, breaks = c(seq(0,900000,25000),Inf)))
View(cuantias_2023)

class(cuantias_2023$Cuantia_ajustada)

table(cuantias_2023$Cuantia_cat) |> 
  prop.table() |> 
  data.frame() |> 
  ggplot()+
  aes(x = Var1, y = Freq)+
  geom_point()+
  geom_line()

min(cuantias_2023$Cuantia_ajustada)
cuantias_2023 |> 
  ggplot()+
  aes(x = (Cuantia_ajustada))+
  geom_density()

cut()

table()
mean(log(cuantias_2023$Cuantia_ajustada))
cut_interval(x = cuantias_2023$Cuantina_ajustada[cuantias_2023$Marginal == T],
             length = 5000)

vec <- seq(0,5000000,10000)

dens <- dlnorm(vec,13.08,0.36)

data.frame(vec,dens) |> 
  ggplot()+
  aes(x=vec, y =dens)+
  geom_line()

normal <- rnorm(100000,13.1,0.5)
normal <- exp(normal)
normal |> 
  data.frame() |> 
  ggplot()+
  aes(x = normal)+
  geom_density()

sum(Probs)sum(Probs)head()
mean(cuantias_2023$Cuantia_ajustada)

# Posibles distribuciones 





