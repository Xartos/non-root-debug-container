FROM ubuntu:20.04

RUN apt update && \
    apt dist-upgrade -y && \
    apt install -y dnsutils curl net-tools && \
    useradd -m -u 1000 -s /usr/bin/bash debug

RUN groupadd --gid 5000 newuser && \
    useradd --home-dir /home/newuser --create-home --uid 5000 \
      --gid 5000 --shell /bin/sh --skel /dev/null newuser



USER debug

CMD bash
