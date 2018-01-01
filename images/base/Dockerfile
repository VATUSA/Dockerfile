FROM alpine:3.7

COPY base/ /

ENV TIMEZONE America/Chicago

RUN set -x \
    && mkdir /entrypoint.d \
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
    && docker-image-cleanup \
    apk add --update tzdata && \
    cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && \
    echo "${TIMEZONE}" > /etc/timezone && \

RUN GOREPLACE_VERSION=1.1.2 \
    && wget -O /usr/local/bin/go-replace https://github.com/webdevops/go-replace/releases/download/$GOREPLACE_VERSION/gr-64-linux \
    && chmod +x /usr/local/bin/go-replace

CMD ["/bin/sh","/usr/local/bin/start.sh"]
