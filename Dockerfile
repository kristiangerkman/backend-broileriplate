FROM alpine:latest

WORKDIR /app
COPY . /app
RUN apk add --no-cache \
    nodejs npm

RUN npm install

ENTRYPOINT ["/app/entrypoint.sh"]
