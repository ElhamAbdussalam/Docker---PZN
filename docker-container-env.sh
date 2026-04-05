#!/bin/bash

# Mengambil (download) image MongoDB versi terbaru dari Docker Hub
docker image pull mongo:latest

# Membuat container MongoDB dengan nama "contohmongo"
docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=elham --env MONGO_INITDB_ROOT_PASSWORD=elham mongo:latest

docker container create \
  --name contohmongo \

  # Mapping port:
  # port 27017 di host → port 27017 di container (default MongoDB)
  --publish 27017:27017 \

  # Set username untuk user root MongoDB
  --env MONGO_INITDB_ROOT_USERNAME=elham \

  # Set password untuk user root MongoDB
  --env MONGO_INITDB_ROOT_PASSWORD=elham \

  # Image yang digunakan
  mongo:latest
