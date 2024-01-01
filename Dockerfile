FROM node:alpine

RUN mkdir -p /usr/src/preservetube/frontend
WORKDIR /usr/src/preservetube/frontend

ARG BACKEND
ARG PUBLIC
ARG WEBSOCKET
ARG SITEKEY

COPY . /usr/src/preservetube/frontend
RUN yarn
RUN yarn run build 

ENV BACKEND=$BACKEND
ENV PUBLIC=$PUBLIC
ENV WEBSOCKET=$WEBSOCKET
ENV SITEKEY=$SITEKEY

CMD ["node", "./dist/server/entry.mjs"]