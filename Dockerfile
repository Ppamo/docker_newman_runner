FROM node:8-alpine
MAINTAINER Ppamo <pablo@ppamo.cl>

WORKDIR /service
COPY run_tests.sh /

RUN apk update && apk upgrade
RUN npm install --save --global newman newman-reporter-text

CMD ["newman", "run", "--insecure", "$COLLECTION"]
