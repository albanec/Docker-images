# our R base image
FROM rocker/shiny:latest 

MAINTAINER Evgeni Maksimov "eugeni.maksimov@yandex.ru"

# install additional packages
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libxml2-dev \
    libmariadb-client-lgpl-dev \
    libssl-dev

# install additional R packages
RUN R -e "install.packages(c('magrittr', 'tidyr', 'quantmod', 'PerformanceAnalytics', 'plotly'), dependencies=TRUE)"
RUN R -e "install.packages('rusquant', repos='http://r-forge.r-project.org', dependencies=TRUE)"

# copy app folder 
COPY shiny-server.conf  /etc/shiny-server/shiny-server.conf
COPY /app/* /srv/shiny-server/

# set the command
CMD ["/usr/bin/shiny-server.sh"]
