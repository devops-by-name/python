#!/bin/bash

# Get all running container IDs
ContainerIDs=$(docker ps -q)

if [ -z "$ContainerIDs" ]; then
  echo "No running containers to stop."
  exit 0
fi

# Loop through each container ID and remove it
for id in $ContainerIDs; do
  echo "Stopping and removing container: $id"
  docker rm -f "$id"
done
