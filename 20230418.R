library(tidyverse)
library(ggplot())

mtcars_to_plot <-
  mtcars |> 
  add_rownames(var = "car_model") |> 
  slice_sample(n = 9) |>
  pivot_longer(cols = -car_model) |> 
  group_by(name) |> 
  mutate(value_norm = value / max(value)) |> 
  ungroup()

mtcars_to_plot %>% 
  ggplot() + 
  geom_col(aes(x = name, y = value_norm, fill = name), 
           width = 1, color = "white", size = 0.2) + 
  coord_polar() + 
  facet_wrap(~car_model, ncol = 3) + 
  scale_fill_manual(values = c("mpg" = '#a6cee3',
                               "cyl" = "#1f78b4",
                               "disp" = "#b2df8a",
                               "hp" = "#33a02c",
                               "drat" = "#fb9a99",
                               "wt" = "#e31a1c",
                               "qsec" = "#fdbf6f",
                               "vs" = "#ff7f00",
                               "am" = "#cab2d6",
                               "gear" = "#6a3d9a",
                               "carb" = "#ffff99")) +
  scale_y_continuous(breaks = c(0, 0.5, 1), 
                     minor_breaks = NULL) +
  labs(title = "Un gráfico de prueba", 
       caption = "Dataset iris", 
       x = "", y = "") +
  theme_minimal() + 
  theme(legend.position = "none")

#Ejercicios

---
  title: "01-ejercicios_visualizacion"
author: "Curso RTVE"
format: html
editor: visual
---
  
  **Ejercicio 1**. A partir del dataset del Ayuntamiento de Madrid sobre tipos de salidas, haz un gráfico de barras en el que se observen los principales motivos.

```{r}

url_dataset_1 <- 
  "https://raw.githubusercontent.com/borjandrinot/R-tve-course/main/data_raw/data_bomberos_long.csv?token=GHSAT0AAAAAACBGV6DD3CKXQYP3D4STFQ6WZBVASHA"

dataset_1 <- 
  read_csv(url_dataset_1)

```

**Ejercicio 2**. Añade color a la visualización para resaltar los tipos de salidas con mayor incidencia. Cambia el título y el de los ejes, añade la fuente de los datos.

```{r}

url_dataset_1 <- 
  "https://raw.githubusercontent.com/borjandrinot/R-tve-course/main/data_raw/data_bomberos_long.csv?token=GHSAT0AAAAAACBGV6DD3CKXQYP3D4STFQ6WZBVASHA"

dataset_1 <- 
  read_csv(url_dataset_1)

```

**Ejercicio 3**. A partir del dataset de salidas mensuales por tipo de salida, haz un gráfico que represente la evolución mensual de estos datos

```{r}

url_dataset_2 <- 
  "https://raw.githubusercontent.com/borjandrinot/R-tve-course/main/data_raw/data_bomberos_monthly.csv"

dataset_2 <- 
  read_csv(url_dataset_2)
```

**Ejercicio 4**. Utiliza alguno de los parámetros del aesthetics para destacar dos tipos de salida y escribe un párrafo contando qué te llama la atención de ellos.

```{r}

url_dataset_2 <- 
  "https://raw.githubusercontent.com/borjandrinot/R-tve-course/main/data_raw/data_bomberos_monthly.csv"

dataset_2 <- 
  read_csv(url_dataset_2)
```

**Ejercicio 5**. Intenta hacer el gráfico anterior, pero ahora con una interpolación por pasos. Además, añádele puntos en cada paso para observar mejor cada mes.

```{r}

url_dataset_2 <- 
  "https://raw.githubusercontent.com/borjandrinot/R-tve-course/main/data_raw/data_bomberos_monthly.csv"

dataset_2 <- 
  read_csv(url_dataset_2)
```

**Ejercicio 6**. Representa en un gráfico el resultado total de las elecciones de Andalucía. ¿Puedes colorear por cada partido?
  
  ```{r}

url_dataset_3 <- 
  "https://raw.githubusercontent.com/borjandrinot/R-tve-course/main/data_raw/2022_andalucia_voto_total.csv"

dataset_3 <- 
  read_csv(url_dataset_3)
```

**Ejercicio 7.** Intenta replicar este gráfico a partir del dataset propuesto.

![](images/resultados_provs_andalucia.png)

```{r}

```

**Ejercicio 8**. Realiza este mismo gráfico para tipo de municipio.

```{r}

```

**Ejercicio 9**. Con los datos del ejercicio anterior busca otro tipo de gráfico para representar el voto por tipo de municipio para cada partido

```{r}

```

**Ejercicio 10**. A partir de los datos por municipio de las últimas elecciones de Andalucía elige un gráfico y escribe un párrafo con alguna cuestión interesante que observes en él.

```{r}

```
  

