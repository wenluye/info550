#! /usr/bin/env Rscript

installed_pkgs <- row.names(installed.packages())
pkgs <- c("tidyverse", "data.table", "lubridate", "knitr")
for(p in pkgs){
  if(!(p %in% installed_pkgs)){
    install.packages(p)
  }
}
