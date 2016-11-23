# our R base image
FROM rocker/shiny:latest 

MAINTAINER Evgeni Maksimov "em@aistinvest.ru"

# install additional packages
RUN rm -rf /var/lib/apt/lists/* && apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libxml2-dev \
    libmariadb-client-lgpl-dev \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# install additional R packages
RUN R -e "install.packages(c('magrittr','tidyr','future','tidyr','dplyr','data.table','foreach','doParallel','future','doFuture' \
                             'quantmod','PerformanceAnalytics','plotly','lubridate','lpSolve','rlist','DT'), \
                           dependencies=TRUE)" && \
    R -e "install.packages('rusquant', repos='http://r-forge.r-project.org', dependencies=TRUE)" 

# copy shiny-server.conf
COPY shiny-server.conf  /etc/shiny-server/shiny-server.conf

# set the command
CMD ["/usr/bin/shiny-server.sh"]
