# Micro Focus VTS Docker Image

This is an unofficial Docker image for [Micro Focus Virtual Table Server](https://marketplace.microfocus.com/appdelivery/content/virtual-table-server)

## Getting Started

These instructions will give you a copy of the project up and running on
your local machine for development and testing purposes

If you want to use  only an image, you must see [docker hub container repository for this image](https://hub.docker.com/r/ricardogarciamarques/microfocus_vts_linux) and follow the instruccions

### Prerequisites

Requirements for the software and other tools to build, test and push 
- [Git](https://git-scm.com/)
- [Docker](https://www.docker.com/)

### Installing

Clone repository

    git clone https://github.com/ricardo-garcia-marques/microfocus-vts-docker-image-linux.git

## Build image

    docker build --rm -t microfocus_vts_linux:local .

## Run image

Run  local image with default options

    docker run -d -t -p 8888:8888 -p 4000:4000 --name=Microfocus_VTS_linux microfocus_vts_linux:local

To see other options and how to run, see [docker hub readme](https://hub.docker.com/r/ricardogarciamarques/microfocus_vts_linux)


## Publish image

### Manual publish image from comand line

    docker image tag microfocus_vts_linux:local microfocus_vts_linux:latest

    docker push your_dockerhub_profile/microfocus_vts_linux:latest

### Automatic publish

When new tag is pushed to github, there is a github action which build and publish a new image in docker hub automatically

For example, create tag and push to github for version 2020.1.0 

    git tag 2020.1.0 -m "Tag 2020.1.0" 

    git push origin 2020.1.0

As result, a new image tagged "2020.1.0" is builded and published to docker hub