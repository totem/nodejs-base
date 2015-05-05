FROM totem/totem-base:trusty

RUN apt-get update --fix-missing && \
    apt-get upgrade -y && \
    curl http://nodejs.org/dist/v0.12.0/node-v0.12.0-linux-x64.tar.gz | tar xzvf - --strip-components=1 -C "/usr" && \
    apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/node"]
