FROM        --platform=$TARGETOS/$TARGETARCH ibm-semeru-runtimes:open-16-jdk

LABEL       author="Michael Parker" maintainer="parker@pterodactyl.io"

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
