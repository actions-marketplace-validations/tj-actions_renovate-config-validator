FROM node:15.14.0-alpine3.10

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash

RUN npm install -g npm@7.9.0
RUN npm i -g renovate

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
