# ----------------------------------
# Environment: Postgres DB
# ----------------------------------
FROM --platform=$TARGETOS/$TARGETARCH postgres:14-alpine

LABEL author="Parker" maintainer="parker@pterodactyl.io"

# UID 999 is the default pterodactyl user
RUN adduser -D -h /home/blademind blademind

USER blademind
ENV HOME /home/blademind
WORKDIR /home/blademind

COPY ../entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
