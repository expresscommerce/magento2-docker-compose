#!/bin/bash

set -x

aws ecr get-login --region us-west-2

#stop and remove all containers
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

cd /home/ec2-user/repos/magento2-docker-compose/
docker-compose up -d
