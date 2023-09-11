# ----------------------------------
# Environment: MongoDB
# ----------------------------------
FROM        --platform=$TARGETOS/$TARGETARCH mongo:4-focal

LABEL       author="Michael Parker" maintainer="parker@pterodactyl.io"

ENV         DEBIAN_FRONTEND noninteractive

RUN         apt update -y \
            && apt install -y netcat iproute2 \
            && useradd -d /home/blademind -m blademind -s /bin/bash

USER        blademind
ENV         USER=blademind HOME=/home/blademind
WORKDIR     /home/blademind

COPY        ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
