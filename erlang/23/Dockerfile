FROM        --platform=$TARGETOS/$TARGETARCH erlang:23-alpine

LABEL       author="Pascal Zarrad" maintainer="p.zarrad@outlook.de"

LABEL       org.opencontainers.image.source="https://github.com/blademindeu/yolks"
LABEL       org.opencontainers.image.licenses=MIT

RUN         apk add --update --no-cache ca-certificates curl git openssl sqlite tar tzdata  iproute2\
				&& adduser -D -h /home/blademind container

USER        container
ENV         USER=container HOME=/home/blademind
WORKDIR     /home/blademind

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
