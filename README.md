# Docker image for [AutoDelete](https://github.com/riking/AutoDelete)

* Based on golang:alpine
* dumb-init
* git

# Usage

## docker cli

    docker run -d \
        --name=CONTAINER_NAME \
        -v <HOST>/config.yml:/app/config.yml \
        -v <volume>:/app/data \
        -p 2202:2202 \
        ksurl/autodelete-discord

## docker-compose 

    version: "2"
      services:
        autodelete:
          image: ksurl/autodelete-discord:latest
          container_name: autodelete
          ports:
            - 2202:2202
          volumes:
            - <HOST>/config.yml:/app/config.yml
            - <volume>:/app/data
          restart: always

## Parameters

| Parameter | Function | Default |
| :----: | --- | --- |
| `-v /app/config.yml` | config file | |
| `-v /app/data` | data folder | |
