FROM alpine:3.3

MAINTAINER Tom Cunliffe "tom.cunliffe@specto.io"

ARG HOVERFLY_VERSION

ARG HOVERFLY_BINARY=hoverfly_linux_amd64

ARG HOVERFLY_DOWNLOAD_URL_BASE=https://github.com/SpectoLabs/hoverfly/releases/download

ENV HOVERFLY_DOWNLOAD_URL "$HOVERFLY_DOWNLOAD_URL_BASE"/"$HOVERFLY_VERSION"/"$HOVERFLY_BINARY"

ARG HOVERFLY_ADMIN_PORT=8888

ARG HOVERFLY_PROXY_PORT=8500

RUN set -ex \
        && apk add --no-cache --virtual .build-deps openssl \
        && wget -q "$HOVERFLY_DOWNLOAD_URL" -O hoverfly \
        && chmod +x hoverfly \
        && apk del .build-deps

ENTRYPOINT ./hoverfly -ap "$HOVERFLY_ADMIN_PORT" -pp "$HOVERFLY_PROXY_PORT"

EXPOSE "$HOVERFLY_ADMIN_PORT" "$HOVERFLY_PROXY_PORT"
