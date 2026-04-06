# Melihat detail image mongo-express (layer, env default, config, dll)
docker image inspect mongo-express:latest

# Melihat detail network mongonetwork (IP, container yang terhubung, subnet, dll)
docker network inspect mongonetwork

# Melihat detail volume mongorestore (lokasi penyimpanan di host, driver, dll)
docker volume inspect mongorestore

# Melihat detail container mongodbexpress (IP, env, mount, network, dll)
docker container inspect mongodbexpress
