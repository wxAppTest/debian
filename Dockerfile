FROM httpd:latest

RUN apt-get update
RUN apt-get install -y curl 


ENTRYPOINT ["/bin/bash"]