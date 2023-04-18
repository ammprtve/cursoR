# install.packages("lubridate")
library(lubridate)
fecha <- as_date("2023-03-28")
fecha + 1
class( fecha)
today()
now()
year( today() )
month( today() )
? paste
library(glue)
glue
edades <- c(1, 6, 19, 20)
mean(edades)
median(edades)
min(edades)
max(edades)
sd(edades)
quantile(edades)
edades <- c(15, 20, NA, 45)
sum(edades, na.rm = TRUE)


# TABLAS

edades <- c(15, 20, 31, 23, 45)
estatura <- c(150, 160, 170, 180, 190)
nombres <- c("javi", "marta", "carlos", "laura", "jose")
tabla <- data.frame(nombres, edades, estatura)  
View(tabla)

edades[3]
edades[c(1, 3)]

tabla$edades
