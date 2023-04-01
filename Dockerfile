# syntax=docker/dockerfile:1
FROM node:19-alpine

ENV PORT=8080

RUN apk add --no-cache git

# Create app directory
WORKDIR /usr/src/app
RUN git clone https://github.com/feedbin/extract.git .
RUN npm install
EXPOSE $PORT

COPY ./start.sh start.sh
ENTRYPOINT ["./start.sh"]

