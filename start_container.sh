#!/bin/bash
set -e

IMAGE_NAME="aishuvthija/simple-python-flask-app"
CONTAINER_NAME="python-app"

# Pull the latest Docker image
docker pull $IMAGE_NAME

# Check if container is already running and remove it to avoid conflicts
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Stopping running container $CONTAINER_NAME..."
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
fi

# Run the Docker container
docker run -d --name $CONTAINER_NAME -p 5000:5000 $IMAGE_NAME

