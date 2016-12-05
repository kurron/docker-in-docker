#Overview
This project is a quick and dirty example of how to use Docker from within a running Docker container.
The idea is to mount the Docker daemon inside the container so that any programs, including Docker itself,
can access the daemon and get its work done.

#Prerequisites
* Docker Engine installed a working
* Docker Compose installed a working

#Building
`docker compose build` creates the Docker image needed for the test.

#Installation
Nothing to install.

#Tips and Tricks

##Running The Experiment
`docker-compose up` will run the previously build image.  If all goes well, you should
see something similar to this:

```
Creating docker-in-docker
Attaching to docker-in-docker
docker-in-docker    | Building inner-docker
docker-in-docker    | Step 1 : FROM ubuntu:latest
docker-in-docker    |  ---> 4ca3a192ff2a
docker-in-docker    | Step 2 : ENTRYPOINT /bin/echo Hello from inside!
docker-in-docker    |  ---> Running in 0ff917f0eaf6
docker-in-docker    |  ---> c334cf3a3a18
docker-in-docker    | Removing intermediate container 0ff917f0eaf6
docker-in-docker    | Image for service inner-docker was built because it did not already exist. To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.
docker-in-docker    | Successfully built c334cf3a3a18
docker-in-docker    | Creating inner-docker
docker-in-docker    | Attaching to inner-docker
docker-in-docker    | inner-docker    | Hello from inside!
docker-in-docker    | inner-docker exited with code 0
docker-in-docker    | docker-in-docker exited with code 0
```

##Clean Up
`docker-compose down` will destroy all containers and used in this experiment.

#Troubleshooting

#License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

#List of Changes

