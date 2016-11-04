#!/bin/bash

set -x

#renew aws ecr authorization token
rm /home/ec2-user/.docker/config.json
$(aws ecr get-login --region us-west-2)

#stop and remove all containers
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

cd /home/ec2-user/repos/magento2-docker-compose/
docker-compose up -d
