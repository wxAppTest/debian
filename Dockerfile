FROM debian

RUN apt-get update
RUN apt-get install -y curl bash ncat

CMD "nc -vv -l -p 9999"
#ENTRYPOINT ["/bin/cat"]