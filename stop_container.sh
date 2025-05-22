#!/bin/bash
ContainerID=$(docker ps | awk 'NR>1 {print $1}')
docker rm -f $ContainerID
