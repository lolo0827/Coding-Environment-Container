FROM ubuntu:latest
LABEL maintainer="NONE"
LABEL version="0.2 Beta"
LABEL description="This is custom Docker Image for Python development "
ARG DEBIAN_FRONTEND=noninteractive
ARG --security-opt seccomp:unconfined
RUN apt-get update
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt-get update
RUN apt-get install python3.8 -y
RUN apt-get install python -y
RUN apt-get -y install python3-pip
RUN apt-get install nano -y
RUN apt update && apt install  openssh-server sudo -y
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test
RUN  echo 'test:test' | chpasswd
RUN service ssh start
EXPOSE 22
RUN cd home
RUN mkdir file
RUN cd file
