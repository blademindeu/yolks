FROM        --platform=$TARGETOS/$TARGETARCH node:17-bullseye-slim

LABEL       author="Michael Parker" maintainer="parker@pterodactyl.io"

RUN         apt update \
            && apt -y install ffmpeg iproute2 git sqlite3 libsqlite3-dev python3 python3-dev ca-certificates dnsutils tzdata zip tar curl build-essential libtool iputils-ping libnss3 libnss3 \
            && useradd -m -d /home/blademind container

RUN         npm install npm@8.11.0 typescript ts-node @types/node --location=global

RUN         npm install better-sqlite3@latest --location=global

USER        container
ENV         USER=container HOME=/home/blademind
WORKDIR     /home/blademind

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
