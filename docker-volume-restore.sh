# Membuat volume baru untuk hasil restore MongoDB
docker volume create mongorestore

# Extract file backup.tar.gz ke dalam volume mongorestore (tanpa masuk container)
MSYS_NO_PATHCONV=1 docker container run --rm --name ubunturestore --mount "type=bind,source=/c/Users/muham/Documents/Web/Docker - PZN/backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

# Membuat container MongoDB baru menggunakan volume hasil restore
MSYS_NO_PATHCONV=1 docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongorestore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=elham --env MONGO_INITDB_ROOT_PASSWORD=elham mongo:latest
