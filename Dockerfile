FROM photon as builder-base

RUN yum update -y

RUN yum install -y build-essential cmake nodejs npm yarn


FROM builder-base as app

ENV ETHERSCAN_API_KEY="sample"\
    NETWORK_PORT=8545

ADD . /app
WORKDIR /app

COPY . .
RUN npm install && npm run build

EXPOSE ${NETWORK_PORT}/tcp
EXPOSE ${NETWORK_PORT}/udp