#!/bin/bash

set -x

#stop and remove all containers
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

docker-compose up -d
