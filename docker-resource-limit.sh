# Membuat container baru dengan nama "smallnginx"
# --memory 100m  -> membatasi penggunaan RAM maksimal 100 MB
# --cpus 0.5     -> membatasi penggunaan CPU hanya setengah core
# --publish 8081:80 -> mapping port 8081 (host) ke 80 (container/nginx)
# nginx:latest   -> menggunakan image nginx versi terbaru
docker container create --name smallnginx --memory 100m --cpus 0.5 --publish 8081:80 nginx:latest

# Menjalankan container yang sudah dibuat
docker container start smallnginx

# Melihat penggunaan resource (CPU, RAM, dll) dari container yang sedang berjalan
docker container stats
