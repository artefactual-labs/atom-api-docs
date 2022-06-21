FROM node:current-alpine

COPY src /src
WORKDIR /src

RUN npm install --location=global @apidevtools/swagger-cli

ENTRYPOINT ["swagger-cli"]
