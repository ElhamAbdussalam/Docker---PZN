#!/bin/bash

# Menampilkan daftar semua Docker image yang ada di local
docker image ls

# Mengunduh (pull) image Redis versi terbaru (tag: latest) dari Docker Hub
docker image pull redis:latest

# Menghapus image Redis dengan tag latest dari local
docker image rm redis:latest
