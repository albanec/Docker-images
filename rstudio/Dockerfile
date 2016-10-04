# our R base image
FROM rocker/rstudio:latest 

MAINTAINER Evgeni Maksimov "em@aistinvest.ru"

# install additional packages
RUN apt-get update && apt-get install -y \
    libxml2-dev \
    libmariadb-client-lgpl-dev 

# install additional R packages
RUN R -e "install.packages(c('magrittr', 'tidyr', 'quantmod', 'PerformanceAnalytics', 'plotly', 'lubridate'), dependencies=TRUE)" && \
    R -e "install.packages('rusquant', repos='http://r-forge.r-project.org', dependencies=TRUE)"

# set the command
CMD ["/init"]
