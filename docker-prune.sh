# Menghapus semua image yang tidak terpakai (dangling / unused)
docker image prune

# Menghapus semua container yang sudah stop
docker container prune

# Menghapus semua volume yang tidak digunakan oleh container
docker volume prune

# Menghapus semua network yang tidak digunakan
docker network prune

# Menghapus semua resource tidak terpakai (container, image, network, cache)
docker system prune
