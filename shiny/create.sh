#!/usr/bin/env bash

NAME = "shiny-server"

mkdir /mnt/shiny/ && \  
      mkdir /mnt/shiny/apps/ && \
      mkdir /mnt/shiny/log/

docker run --name $NAME -d -p 3838:3838  \
    -v /mnt/shiny/apps/:/srv/shiny-server/ \
    -v /mnt/shiny/log/:/var/log/ \
    aistinvest/shiny
