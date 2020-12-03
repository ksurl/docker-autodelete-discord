# Docker image for [AutoDelete](https://github.com/riking/AutoDelete)

[![](https://img.shields.io/badge/Docker%20Hub--blue)](https://hub.docker.com/r/ksurl/autodelete-discord) [![](https://img.shields.io/badge/GitHub%20Container%20Registry--yellow)](https://github.com/users/ksurl/packages/container/package/autodelete-discord)


[![](https://img.shields.io/github/v/tag/ksurl/docker-autodelete-discord?label=image%20version&logo=docker)](https://hub.docker.com/r/ksurl/autodelete-discord) [![](https://img.shields.io/docker/image-size/ksurl/autodelete-discord/latest?color=lightgrey&logo=Docker)]() [![](https://img.shields.io/github/workflow/status/ksurl/docker-autodelete-discord/build?label=build&logo=Docker)](https://github.com/ksurl/docker-autodelete-discord/actions?query=workflow%3Abuild)


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
