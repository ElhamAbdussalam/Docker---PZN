docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=/c/Users/muham/Documents/Web/Docker - PZN/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=elham --env MONGO_INITDB_ROOT_PASSWORD=elham mongo:latest

# Membuat container MongoDB dengan nama "mongodata"
docker container create --name mongodata \

  # Mapping port:
  # 27018 (host) -> 27017 (port default MongoDB di container)
  --publish 27018:27017 \

  # Bind mount:
  # Menghubungkan folder lokal ke dalam container
  # source      -> folder di komputer kamu (penyimpanan data MongoDB)
  # destination -> lokasi data MongoDB di dalam container
  --mount "type=bind,source=/c/Users/muham/Documents/Web/Docker - PZN/mongo-data,destination=/data/db" \

  # Set username root MongoDB
  --env MONGO_INITDB_ROOT_USERNAME=elham \

  # Set password root MongoDB
  --env MONGO_INITDB_ROOT_PASSWORD=elham \

  # Menggunakan image MongoDB versi terbaru
  mongo:latest
