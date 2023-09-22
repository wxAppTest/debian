FROM debian

RUN apt-get update
RUN apt-get install -y curl bash

CMD "/bin/cat"
#ENTRYPOINT ["/bin/cat"]