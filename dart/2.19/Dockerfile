FROM        --platform=$TARGETOS/$TARGETARCH dart:2.19

LABEL       author="Alden Bansemer" maintainer="alden@knoban.com"

RUN         apt update \
            && apt -y install iproute2 git ca-certificates tzdata \
            && useradd -m -d /home/blademind blademind

USER        blademind
ENV         USER=blademind HOME=/home/blademind
WORKDIR     /home/blademind

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
