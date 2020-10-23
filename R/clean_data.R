#! /usr/bin/env Rscript

# read data
raw_data <- read.csv("raw_data/raw_data.csv", header = TRUE)

# remove negative PM2.5 and BC values 
data <- raw_data[raw_data$pm_conc_ug_m3 >= 0,]
data <- raw_data[raw_data$bc_conc_ug_m3 >= 0,]

# save data
write.csv(data, "clean_data/data.csv", quote = FALSE, row.names = FALSE)
