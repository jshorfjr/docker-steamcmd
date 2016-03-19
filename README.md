# docker-steamcmd

This repository contains a **Dockerfile** of [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD) for [Docker](https://www.docker.com)'s [automated build](https://hub.docker.com/r/jshorfjr/docker-steamcmd/) published to the public [Docker Hub Registry](https://registry.hub.docker.com).

### Base Docker Image
* [ubuntu:14.04](https://hub.docker.com/_/ubuntu/)

### Installation

1. Install [Docker](https://www.docker.com).
2. Download [automated build](https://hub.docker.com/r/jshorfjr/docker-steamcmd/~/dockerfile/) from [Docker Hub Registrty](https://registry.hub.docker.com/): `docker pull jshorfjr/docker-steamcmd`

### Usage Example
#### Anonymous
```
docker run -it jshorfjr/docker-steamcmd \
    +login anonymous \
    +force_install_dir /opt/csgo \
    +app_update 740 validate \
    +quit
```
#### Username/Password
```
docker run -it jshorfjr/docker-steamcmd \
    +login <<steam_login>> <<steam_password>> \
    +force_install_dir /opt/arma3 \
    +app_update 233780 -beta validate \
    +quit
```