FROM golang:1.9 AS buildenv
ADD . /src
RUN cd /src && go-wrapper download && go build -o app

FROM alpine
WORKDIR /app
COPY --from=buildenv /src/app /app
ENTRYPOINT ./app
