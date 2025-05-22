#!/bin/bash

# Get all running container IDs (skip header)
ContainerIDs=$(docker ps -q)

# Check if any container is running
if [ -n "$ContainerIDs" ]; then
  # Stop and remove all running containers
  docker rm -f $ContainerIDs
else
  echo "No running containers to stop."
fi
