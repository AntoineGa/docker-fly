# Dockerfiles for Hoverfly images

Currently using either Alpine 3.3 (for the minimalists) or Debian Wheezy base images.

1. Change into the relevant directory

2. Build the image:

 docker build -t spectolabs/hoverfly:${TAG_NAME} .

3. Run the image:

 docker run -d -p 8888:8888 -p 8500:8500 spectolabs/hoverfly:${TAG_NAME}
