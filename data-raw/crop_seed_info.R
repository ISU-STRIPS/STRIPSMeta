library(dplyr)
library(tidyr)

crop_seed_info <- readr::read_csv("crop_seed_info.csv")  %>%
  #Remove extraneous alphanumeric codes from notes column entries such as "RR2 = "
  mutate(notes = sub(".*=\\s+?", '', notes))

devtools::use_data(crop_seed_info, overwrite = TRUE)