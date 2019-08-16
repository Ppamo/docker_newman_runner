FROM node:8-alpine
MAINTAINER Ppamo <pablo@ppamo.cl>

WORKDIR /service

RUN apk update && apk upgrade
RUN npm install --save --global newman newman-reporter-text

COPY tests /tests

CMD ["newman", "run", "--insecure", "$COLLECTION"]
