# This is an old repo

[Hoverfly](https://github.com/SpectoLabs/hoverfly) can be found on the [Docker Hub](https://hub.docker.com/r/spectolabs/hoverfly/). If you are looking for the Dockerfile used to produce this public docker image, please look [here](https://github.com/SpectoLabs/hoverfly/blob/master/core/Dockerfile).






### Dockerfiles for Hoverfly images (broken from v0.9.0)

Currently using either Alpine 3.3 (for the minimalists) or Debian Wheezy base images.

1. Change into the relevant directory

2. Build the image:

 docker build -t spectolabs/hoverfly:${TAG_NAME} .

3. Run the image:

 docker run -d -p 8888:8888 -p 8500:8500 spectolabs/hoverfly:${TAG_NAME}
