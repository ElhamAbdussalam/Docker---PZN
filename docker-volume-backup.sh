# Stop MongoDB agar data konsisten saat backup
docker container stop mongovolume

# Membuat container backup dengan bind mount & volume MongoDB (disable path convert Git Bash)
MSYS_NO_PATHCONV=1 docker container create --name nginxbackup --mount "type=bind,source=/c/Users/muham/Documents/Web/Docker - PZN/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

# Menjalankan container backup
docker container start nginxbackup

# Masuk ke container (gunakan bash/sh)
MSYS_NO_PATHCONV=1 docker container exec -it nginxbackup /bin/bash

# Membuat file backup dari volume MongoDB ke folder lokal
tar cvf /backup/backup.tar.gz /data

# Stop container backup
docker container stop nginxbackup

# Hapus container backup karena hanya sementara
docker container rm nginxbackup

# Menjalankan kembali MongoDB
docker container start mongovolume

# Pull image Ubuntu terbaru
docker image pull ubuntu:latest

# Stop MongoDB lagi untuk backup kedua
docker container stop mongovolume

# Backup langsung tanpa masuk container (run + auto remove)
MSYS_NO_PATHCONV=1 docker container run --rm --name ubuntubackup --mount "type=bind,source=/c/Users/muham/Documents/Web/Docker - PZN/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data

# Jalankan kembali MongoDB
docker container start mongovolume
