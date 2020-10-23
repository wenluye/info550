#! /usr/bin/env Rscript

# load required packages
library(tidyverse)
library(data.table)

# read data
data <- fread("clean_data/data.csv", stringsAsFactors = F)

# make and save bc and pm correlation scatter plot
png("figures/pm_bc_correlation.png", width = 960, height = 480)
p = ggplot(data, aes(x = bc_conc_ug_m3, y = pm_conc_ug_m3, color = phase)) +
  geom_point(alpha = 0.5, aes(size = phase)) + 
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE) +
  scale_shape_manual(values=c(3, 16, 17)) + 
  scale_color_manual(values=c('#999999','#E69F00', '#56B4E9')) +
  scale_size_manual(values=c(2,2,2)) +
  theme(legend.position="right") + 
  labs(x = expression(BC~personal~exposure~(µg/m^3)), y = expression(Filter~corrected~PM[2.5]~personal~exposure~(µg/m^3))) 
plot1 = p + facet_grid(cols = vars(country))
plot1
dev.off()
