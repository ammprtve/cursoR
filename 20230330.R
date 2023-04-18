library(lubridate)
peso <- c(78, 65, 57 )
estaturas <- c(178, 146, 130)
nombres <- c("Juan", "Marta", "Isabel")
fechas_nac <- as_date( c("1979-04-29", "1980-05-15", "1957-12-28"))
tabla_df <-
  data.frame( "names" = nombres,
              "mas" = peso,
              "BMI" = mass / ((height/100)^2),
              "birth_date" = fechas_nac,
              "height" = estaturas)

tabla |> View()

library(tidyverse)

tabla_tb <-
  tibble( "names" = nombres,
          "mass" = peso,
          "height" = estaturas,
          "BMI" = mass / ((height/100)^2), nombres, fechas_nac)
tabla_tb |> View()
library(datapasta)
datos <-
tibble::tribble(
  ~Posición,            ~Ciudad,                                         ~País, ~Población.según.último.censo.oficial, ~`Población.según.Citypopulation.(2021)1​`, ~`Población.según.ONU(2018)2​`, ~`Población.según.Demographia(2020)3​`, ~Fecha.y.fuente.del.censo,
         1L,           "Cantón", "Bandera de la República Popular China China",                          "65 565 622",                               "67 800 000",                   "48 638 000",                           "59 259 000",                     2020L,
         2L,            "Tokio",                      "Bandera de Japón Japón",                          "43.368.953",                               "40.800.000",                   "37 468 000",                           "37 977 000",                     2020L,
         3L,         "Shanghái", "Bandera de la República Popular China China",                          "41 354 149",                               "40.000.000",                   "25 582 000",                           "24 677 000",                     2020L,
         4L,          "Yakarta",              "Bandera de Indonesia Indonesia",                          "33 430 285",                               "33 756 000",                   "17 517 000",                           "34 540 000",                     2020L,
         5L,            "Delhi",                   "Bandera de la India India",                          "33 120 876",                               "30 300 000",                   "28 514 000",                           "32 226 000",                     2011L,
         6L,           "Manila",              "Bandera de Filipinas Filipinas",                          "24 922 782",                               "26 770 000",                   "13 482 000",                           "24 992 000",                     2015L,
         7L,           "Bombay",                   "Bandera de la India India",                          "18 394 912",                               "25 100 000",                   "19 980 000",                           "23 355 000",                     2011L,
         8L,        "São Paulo",                    "Bandera de Brasil Brasil",                          "19 683 975",                               "22 800 000",                   "21 650 000",                           "22 046 000",                     2010L,
         9L, "Ciudad de México",                   "Flag of Mexico.svg México",                          "20 116 842",                               "22 700 000",                   "21 581 000",                           "20 996 000",                     2010L,
        10L,       "Nueva York",    "Bandera de Estados Unidos Estados Unidos",                           "8,804,190",                               "22 675 000",                   "19 979 000",                           "20 997 000",                     2020L
  )

datos |> View() 

table4a  |> View() 

table4a  |>
  pivot_longer( cols = c("1999", "2000"),
                names_to = "year",
                values_to = "cases")
billboard |>
  pivot_longer( cols = c(wk1:wk76),
                names_to = "week",
                values_to = "rank",
                values_drop_na = TRUE,
                names_prefix = "wk")
table2 |>
  pivot_wider(  names_from = "type",
                values_from = "count")
tabla3_ok <-
  table3 |>
  separate( col = "rate",
            into = c("cases", "pop"),
            convert = TRUE)

table3_bis <-
  tabla3_ok |>
  separate( col = "rate",
            into = c("cases", "pop")) |>
  mutate(across(cases:pop, as.numeric))

starwars_filter <-
starwars |> 
  filter(species != "Human")
