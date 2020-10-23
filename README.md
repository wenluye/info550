# My project

My project analysis examines the personal exposure to PM2.5 and black carbon (BC) in three countries: Kenya, Ghana, and Bangladesh. The dataset contains PM2.5 and BC exposure samples collected at three time points: baseline, followup 1 and followup 2. An intervention was deployed to half of the participants after baseline visit. The current Markdown focuses on the descriptive analyses for PM2.5 and BC personal exposures, the correlation between PM2.5 and BC exposure as well as plots to understand the distribution of PM2.5 and BC personal exposure by country and study phase.

To analyze the data you will need to install some `R` packages. These packages are `tidyverse`, `data.table`, `lubridate`, and `knitr`. The required packages can be installed using R commands as below:

```ruby
installed_pkgs <- row.names(installed.packages())
pkgs <- c("tidyverse", "data.table", "lubridate", "knitr")
for(p in pkgs){
	if(!(p %in% installed_pkgs)){
		install.packages(p)
	}
}
```

# Execute the analysis

To execute the analysis, please follow the steps below:
1. Download and save the `data.csv` in the project folder to your desired directory. 
2. Download and save the `info550_project.Rmd` in the project folder to your desired directory. 
3. Open the `info550_project.Rmd` in `R`.
4. In `{r load-data}` chunk, you may want to change filepath for `data.csv` in `fread()` or set your working directory using `setwd()` to where you saved the `data.csv`.
5. Knit `info550_project.Rmd` in `R`, `R Studio` or run `Rscript -e "rmarkdown::render('info550_project.Rmd')"` in your terminal. 

This will create a file called `info550_project.html` output in your directory that contains the results.
