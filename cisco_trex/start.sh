#!/bin/bash

if [ $1 == 'server' ] 
then
  docker run --rm -d --privileged --cap-add=ALL --name trex trexcisco/trex
  docker exec -it --privileged trex sh -c "cd /var/trex/v2.41/ && ./t-rex-64 -i"
fi
if [ $1 == 'console' ]
then 
  docker exec -it --privileged trex sh -c "cd /var/trex/v2.41/ && ./trex-console"
fi
