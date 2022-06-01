FROM ubuntu:20.04

LABEL maintainer.0="CIBR-QCRI Team"

RUN useradd -r bitcoin \
  && apt-get update -y \
  && apt-get install -y curl gnupg gosu python3-pip postgresql-client\
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

ENV ETHEREUM_CLIENT_HOST=10.4.8.131
ENV ETHEREUM_CLIENT_PORT=30872

RUN mkdir /eth-blockchain-parser
WORKDIR "/eth-blockchain-parser"
COPY bootstrap.sh ./bootstrap.sh

RUN pip3 install ethereum-etl

RUN chmod 755 ./bootstrap.sh

EXPOSE  5432 8529 30872

ENTRYPOINT ["./bootstrap.sh"]
