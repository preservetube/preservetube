FROM node:alpine

RUN mkdir -p /usr/src/preservetube/frontend
WORKDIR /usr/src/preservetube/frontend

COPY . /usr/src/preservetube/frontend
RUN yarn
RUN yarn run build 

CMD ["yarn", "run", "start"]