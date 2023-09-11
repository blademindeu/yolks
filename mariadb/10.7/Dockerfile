# -----------------------------------------------------
# MariaDB Image for Pterodactyl
# -----------------------------------------------------
FROM        --platform=$TARGETOS/$TARGETARCH mariadb:10.7

LABEL       author="Michael Parker" maintainer="parker@pterodactyl.io"

ENV         DEBIAN_FRONTEND noninteractive

RUN         apt update -y \
            && apt install -y netcat \
            && useradd -d /home/blademind -m blademind -s /bin/bash

USER        blademind
ENV         USER=blademind HOME=/home/blademind
WORKDIR     /home/blademind

COPY        ../entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
