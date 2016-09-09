#!/usr/bin/env bash

mkdir /mnt/rstudio/ && \
      mkdir /mnt/rstudio/home/

docker run --name rstudio-server -d -p 8787:8787 \
    -v /mnt/rstudio/home/:/home/ \
    aistinvest/rstudio
