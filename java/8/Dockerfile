FROM        --platform=$TARGETOS/$TARGETARCH eclipse-temurin:8u312-b07-jdk-focal

LABEL       author="Michael Parker" maintainer="parker@pterodactyl.io"

LABEL       org.opencontainers.image.source="https://github.com/blademindeu/yolks"
LABEL       org.opencontainers.image.licenses=MIT

RUN         apt update -y \
			&& apt install -y \
					curl \
					lsof \
					ca-certificates \
					openssl \
					git \
					tar \
					sqlite3 \
					fontconfig \
					tzdata \
					iproute2 \
					libfreetype6

## Setup user and working directory
RUN         useradd -m -d /home/blademind -s /bin/bash blademind
USER        blademind
ENV         USER=blademind HOME=/home/blademind
WORKDIR     /home/blademind

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
