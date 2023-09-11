FROM        --platform=$TARGETOS/$TARGETARCH mongo:6-focal

LABEL       author="Michael Parker" maintainer="parker@pterodactyl.io"

## install nodejs 18
RUN apt update && apt install --no-install-recommends -y curl \ 
 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
 && apt install -y nodejs \
 && npm install -g npm@latest \
 ## install bastion reqs
 && apt install -y python3 build-essential git libtool netcat ffmpeg iproute2 tzdata \
 ## add container user
 && useradd -d /home/blademind -m blademind -s /bin/bash

USER        blademind
ENV         USER=blademind HOME=/home/blademind
WORKDIR     /home/blademind

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]