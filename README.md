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
foo
```

#Troubleshooting

#License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

#List of Changes

