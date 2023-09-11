FROM        --platform=$TARGETOS/$TARGETARCH python:3.7-slim

LABEL       author="Michael Parker" maintainer="parker@pterodactyl.io"

RUN         apt update \
            && apt -y install git gcc g++ ca-certificates dnsutils curl iproute2 ffmpeg procps \
            && useradd -m -d /home/blademind blademind

USER        blademind
ENV         USER=blademind HOME=/home/blademind
WORKDIR     /home/blademind

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]
