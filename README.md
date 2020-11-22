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
Or you can install all R packages using the following code:
```bash
make install
```
If you are going to generate the analysis report using the developed docker image, you don't have to worry about the R packages installation. Please find more details in "Execute the analysis" section. 

# Execute the analysis

To execute the analysis with 'docker', please follow the instruction below:
1. Download and save everything from this `info550` repository as a `.zip` file and unzip it to a folder in your desired directory. 
2. Open `Terminal` or the Windows equivalent and make sure you successfully set your current working directory to the folder you created in above step that contains all the files from this `info550` repository using the following code.
```bash
cd folder_name_where_you_saved_all_info550_files
```
3. Then download the latest version of `wenluye/info550_project` use the following code.
```bash
docker pull wenluye/info550_project
```
4. Now use the `docker run` to start the container and generate the report and remember to "mount" your local working directory to the `project` directory in the container with the code below.
```bash
docker run -v path/to/current_working_directory:/project wenluye/info550_project
```
5. This will create a file called `report.html` output in your local working directory. 
```bash
ls
open report.html
```
6. You can also build/modify the `info550_project` docker image locally use:
```bash
make build 
```

