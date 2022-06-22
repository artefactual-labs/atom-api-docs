FROM node:current-alpine

RUN npm install --location=global @apidevtools/swagger-cli

ENTRYPOINT ["swagger-cli"]

COPY src /src
WORKDIR /src
