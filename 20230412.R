library(tidyverse)
library(lubridate)

starwars |> 
  mutate( height_m = height/100, .after = name)

starwars |> 
  rowid_to_column(var = "ornitorrinco")

starwars |> 
  mutate( ornitorrinco = 1:nrow(starwars), .before = everything())

starwars |> 
  mutate( human = if_else( species == "Human", TRUE, FALSE),
          .after= name)

starwars |> 
  mutate( recat_human = if_else( species == "Human", "Human",
                           if_else( species == "Droid", "robot", "otros")),
          .after= name)

starwars |> 
  mutate( recat_human = case_when(species == "Human" ~ "human",
                                  species == "Droid" ~ "robot",
                                  TRUE ~ "otros"),
          .after = name)

# Contar cuántos registros hay combinando las dos variables) y el mutate (porc) mirar si sirve para tema censo
starwars |> 
  count( sex, gender, sort = TRUE) |> 
  mutate(porc = 100*n / sum(n))

# Summarise

starwars |> 
  summarise(media_peso = mean(mass, na.rm = TRUE),
            mediana_peso = median(mass, na.rm = TRUE))

starwars |> 
  summarise(percentiles = quantile(mass, na.rm= TRUE))

starwars |> 
  reframe(percentiles = quantile(mass, na.rm= TRUE))

starwars |> 
  group_by(sex) |> 
  summarise(media_peso = mean(mass, na.rm = TRUE)) |> 
  ungroup()

starwars |> 
  summarise(media_peso = mean(mass, na.rm = TRUE), .by = sex)
