ARG HADOOP_IMAGE_TAG=""

FROM mpolatcan/hadoop:${HADOOP_IMAGE_TAG}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ENV PIG_HOME "${HDUSER_HOME}/pig"
ENV PIG_CONF_DIR="${PIG_HOME}/conf" \
    PATH=$PATH:$PIG_HOME/bin

ADD config_loader.sh ./pig_config_loader.sh

USER root
RUN mkdir -p ${PIG_HOME} && \
    chmod +x pig_config_loader.sh
