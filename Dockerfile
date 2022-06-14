FROM ubuntu as builder-base

RUN apt-get update -y

RUN apt-get install -y \
    build-essential \
    curl \
    nodejs \
    npm \
    python3.10 \
    yarn

FROM builder-base as app

ADD . /app
WORKDIR /app

COPY . .
RUN npm install && npm run build

EXPOSE 3000
EXPOSE 7545
EXPOSE 8545