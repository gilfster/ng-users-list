FROM node:8.11.1

LABEL authors="gilfster <amon.ra.sun.god@gmail.com>"

RUN mkdir /app
WORKDIR /app
COPY package.json /app

RUN chown -R node:node /usr/local/lib/node_modules \
  && chown -R node:node /usr/local/bin \
  && chown -R node:node /app
USER node

RUN npm install -g @angular/cli@1.7.4 \
    && cd /app && npm install
