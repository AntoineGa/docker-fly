FROM buildpack-deps:wheezy-curl

MAINTAINER Tom Cunliffe "tom.cunliffe@specto.io"

ENV HOVERFLY_VERSION v0.5.15

ENV HOVERFLY_BINARY hoverfly_linux_amd64

ENV HOVERFLY_DOWNLOAD_URL https://github.com/SpectoLabs/hoverfly/releases/download/"$HOVERFLY_VERSION"/"$HOVERFLY_BINARY"

ENV HOVERFLY_ADMIN_PORT 8888

ENV HOVERFLY_PROXY_PORT 8500

RUN curl -fsSL "$HOVERFLY_DOWNLOAD_URL" -o hoverfly \
    && chmod +x hoverfly

ENTRYPOINT ./hoverfly -ap "$HOVERFLY_ADMIN_PORT" -pp "$HOVERFLY_PROXY_PORT"

EXPOSE "$HOVERFLY_ADMIN_PORT" "$HOVERFLY_PROXY_PORT"
