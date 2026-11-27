FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y && apt install -y \ 
    nasm git strace build-essential && \
    rm -rf /var/lib/apt/lists/*
