FROM        golang:alpine

LABEL       org.opencontainers.image.source="https://github.com/ksurl/docker-autodelete-discord"

LABEL       maintainer="ksurl"

WORKDIR     /app

VOLUME      /app/data

EXPOSE      2202

COPY        root/ /

RUN         chmod +x /init && \
            apk add --no-cache \
                git \
                dumb-init && \
            go get -u -v github.com/riking/AutoDelete/cmd/autodelete && \
            rm -rf /tmp/* /var/cache/apk/*

ENTRYPOINT  [ "/usr/bin/dumb-init", "--" ]
CMD         [ "/init" ]
