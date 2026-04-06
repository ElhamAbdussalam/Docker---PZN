# Melihat daftar semua Docker volume yang ada di sistem
docker volume ls

# Membuat volume baru dengan nama "mongovolume"
# Volume ini dikelola oleh Docker (lebih aman & portable dibanding bind mount)
docker volume create mongovolume

# Menghapus volume "mongovolume"
# CATATAN: volume harus tidak sedang digunakan oleh container
docker volume rm mongovolume
