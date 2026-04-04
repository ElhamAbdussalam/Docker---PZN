#!/bin/bash

# Menampilkan semua container (baik yang sedang berjalan maupun yang sudah berhenti)
docker container ls -a

# Menampilkan hanya container yang sedang berjalan (running saja)
docker container ls


# Membuat container baru dari image redis:latest dengan nama "contohredis"
docker container create --name contohredis redis:latest

# Membuat container kedua dari image yang sama
docker container create --name contohredis2 redis:latest


# Menjalankan (start) container "contohredis"
docker container start contohredis

# Menjalankan (start) container "contohredis2"
docker container start contohredis2


# Menghentikan (stop) container "contohredis"
docker container stop contohredis

# Menghentikan (stop) container "contohredis2"
docker container stop contohredis2


# Menghapus container "contohredis"
# NOTE: container harus dalam kondisi STOP sebelum dihapus
docker container rm contohredis

# Menghapus container "contohredis2"
docker container rm contohredis2
