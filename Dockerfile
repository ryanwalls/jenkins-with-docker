FROM jenkins:2.19.1

ADD https://get.docker.com/builds/Linux/x86_64/docker-1.12.2.tgz .
RUN tar -xzf docker-1.12.2.tgz
RUN cp docker/docker /usr/bin/
