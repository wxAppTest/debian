FROM debian

RUN apt-get update
RUN apt-get install -y curl bash ncat

CMD "/usr/bin/ncat -vv -l -p 9999"
#ENTRYPOINT ["/bin/cat"]