# aem-author

This Docker image installs Adobe Experience Manager 5.x, and allows it
to be run within a Docker container.

It's a pretty blantant rip of [ggotti/aem-author][https://github.com/ggotti/aem-author] with minor tweaks to play nice with CQ/AEM 5.x.

## About docker-aem-author

> *You must have a copy of the AEM installation Media for this to work

You must copy your AEM installation media into the base directory before
running this image. The image expects the following files within the base directory:
* cq-author-4502.jar
* license.properties

## Usage
Create a new Dockerfile within your directory, and insert the following:

```
# DOCKER-VERSION 1.0.1
FROM LexmarkWeb/aem-author
MAINTAINER <your_username>
```

Then execute your build:
```bash
docker build --tag="<your_build_tag>" .
```

To run your image, with the AEM instance:
```bash
$ docker run --name AEM_AUTH -p 4502:4502 -d "<your_build_tag>"
```
Where
* `-d` will run a detached session running in the background
* `--name` will assign the given name to the running container instance
* `<your_build_tag>` the name of your docker image
* `-p 4502:4502` will expose the AEM default author port
