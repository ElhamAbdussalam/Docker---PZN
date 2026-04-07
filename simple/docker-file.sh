docker build -t elham/simple simple

docker build -t elham/run run

docker build -t elham/command command

docker container create --name command elham/command

docker container start command

docker container logs command

docker build -t elham/label label

docker image inspect elham/label
