FROM    --platform=$TARGETOS/$TARGETARCH debian:bookworm

LABEL   author="Michael Parker" maintainer="parker@pterodactyl.io"

ENV     DEBIAN_FRONTEND noninteractive

RUN     apt update -y \
        # general packages
     && apt install -y iproute2 ca-certificates \
        # additional packages for tesseract and eng lang support
        libtesseract-dev tesseract-ocr-eng \
        # add container user to run application
     && useradd -m -d /home/blademind container

USER    container
ENV     USER=container HOME=/home/blademind
WORKDIR /home/blademind

COPY    ./entrypoint.sh /entrypoint.sh
CMD     ["/bin/bash", "/entrypoint.sh"]
