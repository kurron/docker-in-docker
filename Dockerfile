FROM ubuntu:latest

COPY inner/Dockerfile /root/Dockerfile
COPY inner/docker-compose.yml /root/docker-compose.yml

WORKDIR /root

ENTRYPOINT ["/usr/local/bin/docker-compose", "up"]
