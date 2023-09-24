FROM node:alpine

RUN mkdir -p /usr/src/preservetube/frontend
WORKDIR /usr/src/preservetube/frontend

RUN apk --no-cache add git
RUN git clone https://github.com/preservetube/preservetube .

COPY .env /usr/src/preservetube/frontend/.env

RUN yarn
RUN yarn run build 

CMD ["node", "./dist/server/entry.mjs"]