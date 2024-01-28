sudo docker run -itd -p 80:80 --name angular-1 angular
sudo docker exec -it angular-ui-1 sh

sudo docker ps -a


docker stop $(docker ps -a -q)

docker rm $(docker ps -a -q)

<!-- both at once -->
docker rm -f $(docker ps -a -q)

docker container prune

docker image prune

docker volume prune

docker network prune

docker system prune
<!-- removes also running containers -->
docker rm -f or docker rm --force 

<!-- One command line for cleaning all containers -->
docker system prune -f ; docker volume prune -f ;docker rm -f -v $(docker ps -q -a)

sudo docker run -itd -p 80:80 --name angular-3 angular

sudo docker build  --no-cache -t angular .