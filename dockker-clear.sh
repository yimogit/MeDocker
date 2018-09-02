echo 'stop container'
docker stop $(docker ps -a -q) 

echo 'rmi container'
docker rm $(docker ps -a -q)

echo 'delete none images'
docker rmi --force $(docker images | grep none | awk '{print $3}')
