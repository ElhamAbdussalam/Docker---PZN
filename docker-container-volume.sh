# Membuat Docker volume dengan nama "mongodata"
# Volume ini akan digunakan untuk menyimpan data MongoDB secara persisten
docker volume create mongodata

# Membuat container MongoDB dengan nama "mongovolume"
# MSYS_NO_PATHCONV=1 -> mencegah Git Bash mengubah path Linux (/data/db)
MSYS_NO_PATHCONV=1 docker container create --name mongovolume \

  # Mapping port:
  # 27019 (host) -> 27017 (port default MongoDB di container)
  --publish 27019:27017 \

  # Menggunakan Docker volume:
  # source=mongodata -> volume yang sudah dibuat
  # destination=/data/db -> lokasi penyimpanan data MongoDB di container
  --mount "type=volume,source=mongodata,destination=/data/db" \

  # Set username root MongoDB
  --env MONGO_INITDB_ROOT_USERNAME=elham \

  # Set password root MongoDB
  --env MONGO_INITDB_ROOT_PASSWORD=elham \

  # Menggunakan image MongoDB versi terbaru
  mongo:latest

# Menghapus container "mongovolume"
# Catatan: container harus dalam kondisi stop sebelum dihapus
docker container rm mongovolume
