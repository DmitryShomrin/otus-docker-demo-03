#!/bin/sh

#docker image prune -af

time docker build --rm -f Dockerfile -t docker-playground:vanilla .
time docker build --rm -f bloated.Dockerfile -t docker-playground:bloat .
time docker build --rm -f bloated.Dockerfile -t docker-playground:squashed --squash .

docker images

# docker history docker-playground:vanilla
# docker history docker-playground:bloat
# docker history docker-playground:squashed

# docker run -d -p 80:80 docker-playground:vanilla