# rule for making report 
report.html: R/report.Rmd figures/pm_bc_correlation.png clean_data/data.csv
	cd R && Rscript -e "rmarkdown::render('report.Rmd', output_file = '../report.html')"

# rule for cleaning data
clean_data/data.csv: R/clean_data.R raw_data/raw_data.csv
	chmod +x R/clean_data.R && \
	Rscript R/clean_data.R

# rule of making the figure 
figures/pm_bc_correlation.png: R/make_figures.R clean_data/data.csv
	chmod +x R/make_figures.R && \
	R/make_figures.R



