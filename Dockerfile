FROM totem/ubuntu:raring

RUN echo "deb http://ppa.launchpad.net/chris-lea/node.js-legacy/ubuntu raring main" > /etc/apt/sources.list.d/node.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv C7917B12
 
RUN apt-get update --fix-missing && apt-get upgrade -y
RUN apt-get install -y wget curl nodejs npm build-essential patch

RUN apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ENTRYPOINT ['node']
