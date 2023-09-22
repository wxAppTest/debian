FROM debian:latest

RUN apt-get update
RUN apt-get install -y curl bash


ENTRYPOINT ["/usr/bin/env sh"]