#!/bin/bash

set -x

#stop and remove all containers
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

cd /home/ec2-user/repos/magento2-docker-compose/
docker-compose up -d
