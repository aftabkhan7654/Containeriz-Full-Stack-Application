#!/bin/bash

# Variables images
FRONTEND_IMAGE="aftabkhan7654/frontend"
BACKEND_IMAGE="aftabkhan7654/backend"
VERSION="3.8"

# Build Docker images
docker build -t $FRONTEND_IMAGE:$VERSION ./frontend
docker build -t $BACKEND_IMAGE:$VERSION ./backend

# Push images to Docker Hub
docker push $FRONTEND_IMAGE:$VERSION
docker push $BACKEND_IMAGE:$VERSION

# Update docker-compose.yml with the new image
sed -i "s|aftabkhan7654/frontend:.*|$FRONTEND_IMAGE:$VERSION|" docker-compose.yml
sed -i "s|aftabkhan7654/backend:.*|$BACKEND_IMAGE:$VERSION|" docker-compose.yml  

# Start services 
docker-compose up -d