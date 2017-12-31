FROM alpine:3.7

COPY base/ /

RUN set -x \
    && chmod +x /usr/local/bin/* \
    && apk update \
    && apk upgrade \
    && apk-install ca-certificates openssl curl tar xz libressl \
    && update-ca-certificates \
    && rm -rf /var/cache/apk/* \
    && find /var/lib/apk/ -mindepth 1 -delete \
    && find /tmp/ /var/log/ -mindepth 1 -delete \
    && rm -rf /root/.cache \
    && apk-install wget curl sed tzdata \
    && docker-run-bootstrap \
    && docker-image-cleanup

RUN GOREPLACE_VERSION=1.1.2 \
    && wget -O /usr/local/bin/go-replace https://github.com/webdevops/go-replace/releases/download/$GOREPLACE_VERSION/gr-64-linux \
    && chmod +x /usr/local/bin/go-replace
