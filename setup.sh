#!/bin/bash

echo "-----------------------"
echo "Script us RUNNING... "
echo "-----------------------"

# create the network
docker create network shared-network

# start nginx container
docker run -d --name nginx -p 8080:80 --net shared-network nginx

# start mysql container
docker run -d --name db --net shared-network mysql

# start kibana container
docker run -d --name nginx -p 5601:5601 --net shared-network kibana:6.4.2