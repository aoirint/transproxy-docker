ARG BASE_IMAGE=ubuntu:bionic
FROM ${BASE_IMAGE}

ARG HTTP_PROXY
ARG HTTPS_PROXY
ARG TRANSPROXY_URL=https://github.com/wadahiro/go-transproxy/releases/download/v0.5.2/go-transproxy-0.5.2.tar.gz

RUN apt update && apt install -y \
        wget \
        iptables && \
    mkdir -p /usr/local/transproxy && \
    wget $TRANSPROXY_URL -O - | tar zx -C /usr/local/transproxy && \
    ln -s /usr/local/transproxy/bin/transproxy /usr/local/bin/

ADD ./docker-entrypoint.sh /
ENTRYPOINT [ "/docker-entrypoint.sh" ]
