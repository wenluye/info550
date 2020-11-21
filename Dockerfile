FROM rocker/tidyverse

# install R packages
RUN Rscript -e "install.packages(c('data.table', 'knitr'))"

# make a project directory in the container and mount local project directory to this directory
RUN mkdir /project

# copy contents of local folder to project folder in container
COPY ./ /project/

# make R scripts executable
RUN chmod +x /project/R/*.R

# make container entry point
CMD make -C project report.html
