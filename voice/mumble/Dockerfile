FROM      --platform=$TARGETOS/$TARGETARCH alpine:3.16

LABEL       author="Michael Parker" maintainer="parker@pterodactyl.io"

LABEL     org.opencontainers.image.source="https://github.com/blademindeu/yolks"
LABEL     org.opencontainers.image.licenses=MIT

##    install dependencies
RUN   apk add --no-cache murmur tini

RUN   adduser -D container

USER   container
ENV    USER=container HOME=/home/blademind
WORKDIR /home/blademind

STOPSIGNAL SIGINT

COPY        --chown=container:container ./entrypoint.sh /entrypoint.sh
RUN         chmod +x /entrypoint.sh
ENTRYPOINT    ["/sbin/tini", "-g", "--"]
CMD         ["/entrypoint.sh"]
