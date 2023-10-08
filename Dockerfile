FROM debian

RUN apt-get update
RUN apt-get install -y curl bash ncat tmux caddy wget unzip 
RUN mkdir /app/v2ray
WORKDIR /app/v2ray
RUN wget https://github.com/v2fly/v2ray-core/releases/download/v4.31.0/v2ray-linux-64.zip
RUN unzip v2ray-linux-64.zip
COPY ./config.json /app/v2ray/config.json
WORKDIR /app/v2ray
RUN ./v2ray -c /app/v2ray/config.json &
RUN mkdir /app/caddy/
COPY ./Caddyfile /etc/caddy/Caddyfile
CMD caddy run -c /etc/caddy/Caddyfile