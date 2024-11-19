FROM        --platform=$TARGETOS/$TARGETARCH rust:1.56-slim

LABEL       author="Ethan Coward" maintainer="ethan.coward@icloud.com"

RUN         apt update \
                && apt -y install git dnsutils curl iproute2 ffmpeg tini pkg-config \
                && useradd -m -d /home/blademind container

USER        container
ENV         USER=container HOME=/home/blademind CARGO_HOME=/home/blademind/.cargo
WORKDIR     /home/blademind

STOPSIGNAL SIGINT

COPY        --chown=container:container ./../entrypoint.sh /entrypoint.sh
RUN         chmod +x /entrypoint.sh
ENTRYPOINT    ["/usr/bin/tini", "-g", "--"]
CMD         ["/entrypoint.sh"]