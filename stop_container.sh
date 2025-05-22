#!/bin/bash

# Get running container IDs (skip header)
ContainerID=$(docker ps -q)

# If any container is running, stop it
if [ ! -z "$ContainerID" ]; then
  docker rm -f $ContainerID
fi
