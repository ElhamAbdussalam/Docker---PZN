# Menghentikan container MongoDB (mongovolume)
# Tujuannya agar data konsisten saat dibackup (tidak sedang ditulis)
docker container stop mongovolume

# Membuat container sementara "nginxbackup"
# MSYS_NO_PATHCONV=1 -> mencegah Git Bash mengubah path
MSYS_NO_PATHCONV=1 docker container create --name nginxbackup \

  # Bind mount ke folder lokal untuk menyimpan file backup
  --mount "type=bind,source=/c/Users/muham/Documents/Web/Docker - PZN/backup,destination=/backup" \

  # Mount volume MongoDB agar bisa diakses dari container ini
  --mount "type=volume,source=mongodata,destination=/data" \

  # Menggunakan image nginx (sebagai container helper)
  nginx:latest

# Menjalankan container backup
docker container start nginxbackup

# Masuk ke dalam container
# Gunakan /bin/sh jika /bin/bash tidak tersedia
MSYS_NO_PATHCONV=1 docker container exec -it nginxbackup /bin/bash

# Membuat file backup dalam bentuk tar.gz
# /data   -> sumber data (volume MongoDB)
# /backup -> tujuan (folder lokal)
tar cvf /backup/backup.tar.gz /data

# Keluar dari container (ketik: exit), lalu lanjut:

# Menghentikan container backup
docker container stop nginxbackup

# Menghapus container backup (karena hanya sementara)
docker container rm nginxbackup

# Menjalankan kembali MongoDB
docker container start mongovolume
