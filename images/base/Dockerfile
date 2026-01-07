FROM alpine

COPY base/ /

ENV TIMEZONE=America/Chicago

RUN set -x \
    && mkdir /entrypoint.d \
    && chmod +x /usr/local/bin/* \
    && apk update \
    && apk upgrade \
    && apk add ca-certificates openssl curl \
    && update-ca-certificates \
    && apk add wget curl sed tzdata \
    && rm -rf /var/cache/apk/* \
    && find /tmp/ /var/log/ -mindepth 1 -delete \
    && rm -rf /root/.cache \
    && apk add --update tzdata  \
    && cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime  \
    && echo "${TIMEZONE}" > /etc/timezone

RUN GOREPLACE_VERSION=1.1.2 \
    && wget -O /usr/local/bin/go-replace https://github.com/webdevops/go-replace/releases/download/$GOREPLACE_VERSION/gr-64-linux \
    && chmod +x /usr/local/bin/go-replace

CMD ["/bin/sh","/usr/local/bin/start.sh"]
