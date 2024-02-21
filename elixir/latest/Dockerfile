FROM --platform=$TARGETOS/$TARGETARCH elixir:slim

LABEL author="MrAvox" maintainer="mravox@proton.me"

RUN  apt update \
            && apt -y install git dnsutils curl iproute2 ffmpeg tini \
            && useradd -m -d /home/blademind container

USER container
ENV USER=container HOME=/home/blademind
WORKDIR /home/blademind

STOPSIGNAL SIGINT

COPY        --chown=container:container ./../entrypoint.sh /entrypoint.sh
RUN         chmod +x /entrypoint.sh
ENTRYPOINT    ["/usr/bin/tini", "-g", "--"]
CMD         ["/entrypoint.sh"]
