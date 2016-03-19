FROM ubuntu:14.04

MAINTAINER Jeffrey Shorf Jr. <jsho4realyo@gmail.com>

# Install dependencies required to run SteamCMD
RUN apt-get update &&\
    apt-get install lib32gcc1

# Create directory, switch to it, download SteamCMD for Linux
RUN mkdir /opt/steamcmd &&\
	cd /opt/steamcmd&&\
	wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz | tar -xzf

WORKDIR /opt/SteamCMD

ENTRYPOINT ["./steamcmd.sh"]
