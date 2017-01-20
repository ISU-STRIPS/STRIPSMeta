library(dplyr)
library(tidyr)

crop_seed_info <- readr::read_csv("crop_seed_info.csv")  %>%
  #Remove extraneous codes from notes column entries such as "RR2 = "
  mutate(notes = lapply(X = notes, FUN = function(x) { sub(".*=\\s+?", '', x) }))

devtools::use_data(crop_seed_info, overwrite = TRUE)