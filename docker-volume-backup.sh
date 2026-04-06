docker container stop mongovolume

MSYS_NO_PATHCONV=1 docker container create --name nginxbackup --mount "type=bind,source=/c/Users/muham/Documents/Web/Docker - PZN/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

docker container start nginxbackup

MSYS_NO_PATHCONV=1 docker container exec -it nginxbackup /bin/bash

tar cvf /backup/backup.tar.gz /data

docker container stop nginxbackup

docker container rm nginxbackup

docker container start mongovolume
