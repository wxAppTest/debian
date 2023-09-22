FROM debian

RUN apt-get update
RUN apt-get install -y curl bash ncat tmux
RUN echo '/usr/bin/ncat -vv -l -p 9999' > /startup.sh
RUN chmod 777 /startup.sh
#RUN 
CMD /startup.sh