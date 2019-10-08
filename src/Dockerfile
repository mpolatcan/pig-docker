ARG HADOOP_VERSION=2.9.0
ARG JAVA_VERSION=8

FROM mpolatcan/hadoop:${HADOOP_VERSION}-java${JAVA_VERSION}

ARG PIG_VERSION=0.17.0
ARG PIG_DOWNLOAD_LINK="http://www-eu.apache.org/dist/pig/pig-${PIG_VERSION}/pig-${PIG_VERSION}.tar.gz"

ENV PIG_HOME "/usr/local/pig"
ENV PATH $PATH:$PIG_HOME/bin

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

RUN wget ${PIG_DOWNLOAD_LINK} && \
    mkdir -p ${PIG_HOME} && \
    tar -xvzf pig-${PIG_VERSION}.tar.gz -C /usr/local/ && \
    mv /usr/local/pig-${PIG_VERSION}/* ${PIG_HOME} && \
    rm -r /usr/local/pig-${PIG_VERSION} && \
    rm pig-${PIG_VERSION}.tar.gz && \
    chown -R hduser:hadoop ${PIG_HOME} && \
    chmod -R 777 ${PIG_HOME} && \
    echo "PATH=$PATH:$PIG_HOME/bin" >> /etc/environment

ENTRYPOINT ["./hadoop_entrypoint.sh","hadoop"]