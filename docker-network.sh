# Melihat daftar semua Docker network yang tersedia
docker network ls

# Membuat network baru dengan driver bridge (default untuk komunikasi antar container)
docker network create --driver bridge contohnetwork

# Menghapus network "contohnetwork" (harus tidak sedang dipakai container)
docker network rm contohnetwork
