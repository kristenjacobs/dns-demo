#!/bin/bash

docker stop dns-demo-server
docker stop dns-demo-client-1
docker stop dns-demo-client-2
docker rm  dns-demo-server
docker rm  dns-demo-client-1
docker rm  dns-demo-client-2
docker network rm dns-demo-network
