docker kill pc
docker rm pc
docker rmi pc
docker purge --all
docker build . -f pc.Dockerfile -t pc
docker run -dit --name pc pc bash
docker attach pc
