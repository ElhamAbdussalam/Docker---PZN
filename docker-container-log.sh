#!/bin/bash

# Membuat container baru dari image redis:latest dengan nama "contohredis"
# Pada tahap ini container hanya dibuat, belum dijalankan
docker container create --name contohredis redis:latest

# Menjalankan container "contohredis"
docker container start contohredis

# Melihat log dari container "contohredis"
# Biasanya berisi output proses yang berjalan di dalam container
docker container logs contohredis

# Melihat log secara realtime (follow)
# Mirip seperti "tail -f", akan terus menampilkan log terbaru
docker container logs -f contohredis
