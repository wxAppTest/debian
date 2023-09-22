FROM tutum/dnsutils

RUN apt-get update
RUN apt-get install -y curl bash


#ENTRYPOINT ["/bin/cat"]