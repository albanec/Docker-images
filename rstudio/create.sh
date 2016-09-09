#!/usr/bin/env bash

NAME='rstudio-server'
PORT=8787

mkdir /mnt/rstudio/ && \
      mkdir /mnt/rstudio/home/

docker run --name $NAME -d -p $PORT:8787 \
    -v /mnt/rstudio/home/:/home/ \
    aistinvest/rstudio
