#!/bin/bash

docker stop ngacli-app
docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs sudo docker rm
docker rmi $(docker images | grep -v 'ubuntu\|my-image' | awk {'print $3'})
docker-compose up -d
