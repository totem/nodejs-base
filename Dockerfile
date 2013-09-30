FROM totem/ubuntu:raring

RUN apt-get update --fix-missing && apt-get upgrade -y
RUN apt-get install -y wget curl build-essential patch git-core openssl libssl-dev unzip

RUN curl http://nodejs.org/dist/v0.10.20/node-v0.10.20-linux-x64.tar.gz | tar xzvf - --strip-components=1 -C "/usr"

RUN apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ENTRYPOINT ['/usr/bin/node']
