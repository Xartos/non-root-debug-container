FROM ubuntu:20.04

RUN apt update && \
    apt dist-upgrade -y && \
    apt install -y dnsutils curl net-tools

RUN adduser debug

USER debug

CMD bash
