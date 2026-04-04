#!/bin/bash

# Mengambil (download) image NGINX versi terbaru dari Docker Hub
docker image pull nginx:latest

# Membuat container baru dengan nama "contohnginx"
# --publish 8080:80 artinya:
#   port 8080 di host (komputer kita)
#   diarahkan ke port 80 di dalam container (NGINX default)
docker container create --name contohnginx --publish 8080:80 nginx:latest
