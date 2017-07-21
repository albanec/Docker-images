#!/usr/bin/env bash

NAME='zec-node'

mkdir /mnt/zecnode/

docker run --name $NAME -d \
  -v /mnt/zecnode/:/home/zcash/ \
  albanec/zecnode
