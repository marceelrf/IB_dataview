library(tidyverse)
library(readxl)
library(janitor)


Biometria_list <- list()
years <- 2012:2020
for (i in seq_along(years)) {
  Biometria_list[[i]] <- read_xlsx(path = "data/Biometria2.xlsx",
            sheet = paste(years[i]))
}
names(Biometria_list) <- years


Biometria_list %>% map(clean_names)

crossing(t1 = names(Biometria_list),
         t2 = names(Biometria_list))
