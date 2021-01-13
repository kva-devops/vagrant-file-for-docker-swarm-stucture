#!/bin/bash

docker swarm init \
--advertise-addr private_ip_address_your_network

docker node ls

# for add node 
# docker swarm join --token [TOKEN] \
# [PRIVATE_IP]:2377
