#!/usr/bin/env bash

NAME = "rstudio-server"

mkdir /mnt/rstudio/ && \
      mkdir /mnt/rstudio/home/

docker run --name $NAME -d -p 8787:8787 \
    -v /mnt/rstudio/home/:/home/ \
    aistinvest/rstudio
