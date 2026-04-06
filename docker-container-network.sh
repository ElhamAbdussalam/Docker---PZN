# Membuat network bridge agar container bisa saling komunikasi
docker network create --driver bridge mongonetwork

# Membuat container MongoDB dengan user & password dan masuk ke network
docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=elham --env MONGO_INITDB_ROOT_PASSWORD=elham mongo:latest

# Download image mongo-express terbaru
docker image pull mongo-express:latest

# Membuat container mongo-express dengan koneksi ke MongoDB + login UI
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://elham:elham@mongodb:27017/" --env ME_CONFIG_BASICAUTH_USERNAME=admin --env ME_CONFIG_BASICAUTH_PASSWORD=admin mongo-express:latest

# Menjalankan MongoDB
docker container start mongodb

# Menjalankan mongo-express (akses via http://localhost:8081)
docker container start mongodbexpress

# Memutus koneksi container mongodb dari network (simulasi disconnect)
docker network disconnect mongonetwork mongodb

# Menghubungkan kembali container mongodb ke network
docker network connect mongonetwork mongodb
