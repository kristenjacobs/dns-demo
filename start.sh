#!/bin/bash

docker network create --subnet=172.18.0.0/16 dns-demo-network
docker run --net dns-demo-network --ip 172.18.0.21 --name=dns-demo-server -d -t dns-demo-server
docker run --net dns-demo-network --ip 172.18.0.22 --name=dns-demo-client-1 --dns=172.18.0.21 --dns-search=dns.test -d -t dns-demo-client
docker run --net dns-demo-network --ip 172.18.0.23 --name=dns-demo-client-2 --dns=172.18.0.21 --dns-search=dns.test -d -t dns-demo-client
