FROM alpine:3.13

MAINTAINER Tom Cunliffe "tom.cunliffe@specto.io"

ARG HOVERFLY_VERSION

ENV HOVERFLY_BINARY=hoverfly_"$HOVERFLY_VERSION"_linux_amd64

ENV HOVERFLY_DOWNLOAD_URL_BASE=https://github.com/SpectoLabs/hoverfly/releases/download

ENV HOVERFLY_DOWNLOAD_URL "$HOVERFLY_DOWNLOAD_URL_BASE"/"$HOVERFLY_VERSION"/"$HOVERFLY_BINARY"

RUN set -ex \
        && apk add --no-cache openssl ca-certificates \
        && wget -q "$HOVERFLY_DOWNLOAD_URL" -O hoverfly \
        && chmod +x hoverfly

ENTRYPOINT ["./hoverfly"]

CMD [""]

EXPOSE 8888 8500
