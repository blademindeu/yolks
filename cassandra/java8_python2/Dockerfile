FROM        --platform=$TARGETOS/$TARGETARCH adoptopenjdk/openjdk8:alpine-jre

LABEL       author="Pascal Zarrad" maintainer="p.zarrad@outlook.de"

LABEL       org.opencontainers.image.source="https://github.com/blademindeu/yolks"
LABEL       org.opencontainers.image.licenses=MIT

RUN         apk add --update --no-cache python2 ca-certificates curl fontconfig git openssl sqlite tar tzdata \
				&& python -m ensurepip --upgrade && pip install pytz \
			    && adduser -D -h /home/blademind container

USER        container
ENV         USER=container HOME=/home/blademind
WORKDIR     /home/blademind

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
