FROM debian:latest

RUN apt-get update
RUN apt-get install -y curl 
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - &&\
apt-get install -y nodejs tar bash procps maven bash wget git iproute2 tmux tree


ENTRYPOINT ["/bin/bash"]