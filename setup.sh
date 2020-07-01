#!/bin/bash

echo "-----------------------"
echo "Script is RUNNING... "
echo "-----------------------"

# create the network
docker network create shared-network

# start nginx container
docker run -d --name nginx -p 8080:80 --net shared-network nginx

# start mysql container
docker run -d --name db --net shared-network mysql

# start kibana container
docker run -d --name kibana -p 5601:5601 --net shared-network kibana:6.4.2