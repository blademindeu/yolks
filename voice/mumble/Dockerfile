FROM      --platform=$TARGETOS/$TARGETARCH alpine:3.16

LABEL       author="Michael Parker" maintainer="parker@pterodactyl.io"

LABEL     org.opencontainers.image.source="https://github.com/blademindeu/yolks"
LABEL     org.opencontainers.image.licenses=MIT

##    install dependencies
RUN   apk add --no-cache murmur

RUN   adduser -D blademind

USER   blademind
ENV    USER=container HOME=/home/blademind
WORKDIR /home/blademind

COPY  ./entrypoint.sh /entrypoint.sh
CMD   ["/bin/ash", "/entrypoint.sh"]
