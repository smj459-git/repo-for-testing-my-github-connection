library(tidyverse)
library(readxl)

dat = read_csv(file.choose())

colnames(dat)

unique(dat$leaflet_ethnicity)
unique(dat$leaflet_gender)

leaflet_type_and_number = dat %>% 
  group_by(leaflet_ethnicity, leaflet_gender) %>% 
  summarise(n=n())

dat %>% 
  filter(leaflet_ethnicity == "Gio" & leaflet_gender == "Male") 
