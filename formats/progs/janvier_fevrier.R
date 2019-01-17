

# reporter sur janvier février les formats de l'année en cours (avant mars)
library(dplyr, warn.conflicts = FALSE)
library(stringfix)

lf_in <- list.files('formats/excel/') %>% 
  .[grepl('18', .)]

lf_out <- lf_in %re% c('18', '19')
  
file.copy(from = file.path('formats/excel/', lf_in), to = file.path('formats/excel/', lf_out))
