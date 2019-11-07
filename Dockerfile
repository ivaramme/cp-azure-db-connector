# Based on https://github.com/ivaramme/cp-docker-images/blob/5.3.1-post/debian/kafka-connect/Dockerfile

FROM confluentinc/cp-kafka-connect-base

ENV COMPONENT=kafka-connect

RUN echo "===> Updating system ..." \
    && apt-get -qq update \
    && echo "===> Cleaning up ..."  \
    && apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/* 

RUN confluent-hub install confluentinc/kafka-connect-azure-sql-dw:1.0.2 --no-prompt

