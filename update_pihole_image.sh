#!/bin/bash
docker login
docker pull pihole/pihole:latest 
docker stop pihole
docker rm pihole
docker-compose up -d 
echo -n Enter Password:
read -s password
docker exec -it pihole pihole -a -p $password 
