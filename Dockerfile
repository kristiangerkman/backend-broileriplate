FROM alpine:latest


RUN apk update

RUN mkdir /app
WORKDIR /app
RUN apk add --no-cache nodejs npm
COPY . /app

RUN npm i -g npm
RUN npm install

ENTRYPOINT node /app/index.js
