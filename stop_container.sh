#!/bin/bash
ContainerID=docker ps | awk -F " " '{print $1}'
docker rm -f $ContainerID
