FROM node:16.4-slim

WORKDIR /usr/src/app

RUN apt update \
    && apt install -y libssl-dev \
    && npm cache clean --force \
    && npm install -g npm

EXPOSE 3000
