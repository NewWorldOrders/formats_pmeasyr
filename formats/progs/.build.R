rm(list=ls())

u <- list.files('C:/R projets/build_pmeasyr/pmeasyr_0.2/formats/table_r/', no..=T)

complet
for (i in 1:length(u)){
  temp <- readRDS(paste0('C:/R projets/build_pmeasyr/pmeasyr_0.2/formats/table_r/',u[i]))
  nom <- stringr::str_split(u[i],'\\.')[[1]][1]
  assign(nom, temp)
}

rm(temp)
rm(i)
rm(nom)
rm(u)

save.image("C:/R projets/pmeasyr/data/formats.RData")

d <- data(package="pmeasyr")

load('data/formats.RData')
