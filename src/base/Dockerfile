ARG JAVA_VERSION=8
ARG HADOOP_VERSION=3.2.1

FROM mpolatcan/hadoop:${HADOOP_VERSION}-java${JAVA_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ENV PIG_HOME "${HDUSER_HOME}/pig"
ENV PIG_CONF_DIR="${PIG_HOME}/conf" \
    PATH=$PATH:$PIG_HOME/bin

ADD entrypoint.sh ${HDUSER_HOME}/pig_entrypoint.sh
ADD config_loader.sh ${HDUSER_HOME}/pig_config_loader.sh

USER root
RUN mkdir -p ${PIG_HOME} && \
    chmod +x pig_config_loader.sh pig_entrypoint.sh
