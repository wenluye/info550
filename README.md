# My project

My project analysis examines the personal exposure to PM2.5 and black carbon (BC) in three countries: Kenya, Ghana, and Bangladesh. The dataset contains PM2.5 and BC exposure samples collected at three time points: baseline, followup 1 and followup 2. An intervention was deployed to half of the participants after baseline visit. The current Markdown focuses on the descriptive analyses for PM2.5 and BC personal exposures, the correlation between PM2.5 and BC exposure as well as plots to understand the distribution of PM2.5 and BC personal exposure by country and study phase.

To analyze the data you will need to install some `R` packages. These packages are `tidyverse`, `data.table`, `lubridate`, and `knitr`. The required packages can be installed using R commands as below:

```r
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
1. Download and save everything from this `info550` repository as a `.zip` file and unzip it to folder at your desired directory. 
2. Open `Terminal` or other Windows equivalent and make sure you successfully set your current working directory to the folfer you created in above step using the following code:
```bash
cd folder_name_where_you_saved_all_info550_files
```
3. Then run the following code to generate the report.
```bash
make
```
This will create a file called `report.html` output in your directory that contains the results.
