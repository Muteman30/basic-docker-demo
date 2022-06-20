# Basic Docker Demonstation
This repository is to show a basic setup of docker and docker compose. It is based off the create-react-app template.

## Useful commands
`docker images` - list the docker images you have stored in your local repository
`docker ps` - List all of the active containers running on your system

## Build the image
From the repository root run `docker build -t docker-demo ./`. The docker command will build the image with the name of `docker-demo` and the repository root is the build context which informs docker of the files it should consider when building. 

The copy files that are used in the `Dockerfile` should not be used for production and this is just for demonstration purposes. 

## Running the container
There are 2 methods for running the container once the image has been built.

`docker run -p 3000:3000 docker-demo` - this will run the create-react-app boiler plate in a container with the 3000 port exposed so that you can see it in a browser.

`docker-compose up` - this will run the docker-compose file in this repository and will include images for `redis`, `kartoza/geoserver`, and `postgis`. 