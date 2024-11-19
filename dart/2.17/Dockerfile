FROM        --platform=$TARGETOS/$TARGETARCH dart:2.17

LABEL       author="Alden Bansemer" maintainer="alden@knoban.com"

RUN         apt update \
            && apt -y install iproute2 git ca-certificates tzdata tini \
            && useradd -m -d /home/blademind container

USER        container
ENV         USER=container HOME=/home/blademind
WORKDIR     /home/blademind

STOPSIGNAL SIGINT

COPY        --chown=container:container ./../entrypoint.sh /entrypoint.sh
RUN         chmod +x /entrypoint.sh
ENTRYPOINT    ["/usr/bin/tini", "-g", "--"]
CMD         ["/entrypoint.sh"]
