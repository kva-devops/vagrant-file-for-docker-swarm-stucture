#!/bin/bash

docker swarm init \
--advertise-addr 192.168.50.4

docker node ls

# for add node 
# docker swarm join --token [TOKEN] \
# [PRIVATE_IP]:2377
