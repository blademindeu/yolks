FROM        --platform=$TARGETOS/$TARGETARCH node:14-bullseye-slim

LABEL       author="Michael Parker" maintainer="parker@pterodactyl.io"

RUN         apt update \
            && apt -y install ffmpeg iproute2 git sqlite3 libsqlite3-dev python3 python3-dev ca-certificates dnsutils tzdata zip tar curl build-essential libtool iputils-ping libnss3 tini \
			&& useradd -m -d /home/blademind container

RUN         npm install npm@9.8.1 typescript ts-node @types/node --location=global

RUN         npm install better-sqlite3 --location=global

USER        container
ENV         USER=container HOME=/home/blademind
WORKDIR     /home/blademind

STOPSIGNAL SIGINT

COPY        --chown=container:container ./../entrypoint.sh /entrypoint.sh
RUN         chmod +x /entrypoint.sh
ENTRYPOINT    ["/usr/bin/tini", "-g", "--"]
CMD         ["/entrypoint.sh"]
