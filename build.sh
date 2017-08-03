docker build . -t change-image
docker stop change
docker rm change
docker run --name change change-image