FROM        golang:1.18.0-alpine3.14

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
            git -C /go/src clone --depth 1 https://github.com/riking/AutoDelete && \
            cd /go/src/AutoDelete && \
            go build -ldflags="-s -w" -v -o /app/autodelete /go/src/AutoDelete/cmd/autodelete && \
            cd /app && \
            rm -rf /tmp/* /var/cache/apk/*

ENTRYPOINT  [ "/usr/bin/dumb-init", "--" ]
CMD         [ "/init" ]
