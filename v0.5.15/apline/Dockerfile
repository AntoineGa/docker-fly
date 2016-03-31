FROM alpine:3.3

MAINTAINER Tom Cunliffe "tom.cunliffe@specto.io"

ENV HOVERFLY_VERSION v0.5.15

ENV HOVERFLY_BINARY hoverfly_linux_amd64

ENV HOVERFLY_DOWNLOAD_URL https://github.com/SpectoLabs/hoverfly/releases/download/"$HOVERFLY_VERSION"/"$HOVERFLY_BINARY"

ENV HOVERFLY_ADMIN_PORT 8888

ENV HOVERFLY_PROXY_PORT 8500

RUN set -ex \
        && apk add --no-cache --virtual .build-deps openssl \
        && wget -q "$HOVERFLY_DOWNLOAD_URL" -O hoverfly \
        && chmod +x hoverfly \
        && apk del .build-deps

ENTRYPOINT ./hoverfly -ap "$HOVERFLY_ADMIN_PORT" -pp "$HOVERFLY_PROXY_PORT"

EXPOSE "$HOVERFLY_ADMIN_PORT" "$HOVERFLY_PROXY_PORT"
