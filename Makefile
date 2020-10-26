## rule for making report 
report.html: R/report.Rmd figures/pm_bc_correlation.png clean_data/data.csv
	cd R && Rscript -e "rmarkdown::render('report.Rmd', output_file = '../report.html')"

## rule for cleaning data
clean_data/data.csv: R/clean_data.R raw_data/raw_data.csv
	chmod +x R/clean_data.R && \
	Rscript R/clean_data.R

## rule of making the figure 
figures/pm_bc_correlation.png: R/make_figures.R clean_data/data.csv
	chmod +x R/make_figures.R && \
	R/make_figures.R

## phony options:
.PHONY: help clean data and create figures 
##	make help: check help
help: Makefile
	@sed -n 's/^##//p' $<

##	make install: install required R packages 
install:
	chmod +x R/pkg_install.R && R/pkg_install.R

##	make report: generate final html report
report: report.html

##	make figures: generate PM and BC correlation plot
figures: figures/pm_bc_correlation.png

##	make cleanall: clean all output files
cleanall:
	rm clean_data/data.csv figures/pm_bc_correlation.png report.html




