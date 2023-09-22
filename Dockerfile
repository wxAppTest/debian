FROM debian

RUN apt-get update
RUN apt-get install -y curl bash ncat tmux

#RUN 
ENTRYPOINT ["/usr/bin/ncat -vv -l -p 9999"]