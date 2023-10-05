FROM        --platform=$TARGETOS/$TARGETARCH rust:1.56-slim

LABEL       author="Ethan Coward" maintainer="ethan.coward@icloud.com"

RUN         apt update \
                && apt -y install git dnsutils curl iproute2 ffmpeg \
                && useradd -m -d /home/blademind container

USER        container
ENV         USER=container HOME=/home/blademind CARGO_HOME=/home/blademind/.cargo
WORKDIR     /home/blademind

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]