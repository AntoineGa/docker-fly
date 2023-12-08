FROM alpine:3.19

MAINTAINER Tom Cunliffe "tom.cunliffe@specto.io"

ENV HOVERFLY_VERSION=v0.5.15

ENV HOVERFLY_BINARY=hoverfly_linux_amd64

ENV HOVERFLY_DOWNLOAD_URL_BASE=https://github.com/SpectoLabs/hoverfly/releases/download

ENV HOVERFLY_DOWNLOAD_URL "$HOVERFLY_DOWNLOAD_URL_BASE"/"$HOVERFLY_VERSION"/"$HOVERFLY_BINARY"

RUN set -ex \
        && apk add --no-cache openssl ca-certificates \
        && wget -q "$HOVERFLY_DOWNLOAD_URL" -O hoverfly \
        && chmod +x hoverfly

ENTRYPOINT ["./hoverfly"]

CMD [""]

EXPOSE 8888 8500
