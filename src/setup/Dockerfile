ARG HADOOP_VERSION=2.9.0
ARG JAVA_VERSION=8

FROM mpolatcan/pig:base-hadoop-${HADOOP_VERSION}-java${JAVA_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ARG PIG_VERSION=0.17.0
ARG PIG_DOWNLOAD_LINK="http://www-eu.apache.org/dist/pig/pig-${PIG_VERSION}/pig-${PIG_VERSION}.tar.gz"

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

USER root
RUN wget ${PIG_DOWNLOAD_LINK} && \
    tar -xvzf pig-${PIG_VERSION}.tar.gz -C ${HDUSER_HOME} && \
    mv ${HDUSER_HOME}/pig-${PIG_VERSION}/* ${PIG_HOME} && \
    rm -r ${HDUSER_HOME}/pig-${PIG_VERSION} && \
    rm pig-${PIG_VERSION}.tar.gz && \
    chown -R hduser:hadoop ${PIG_HOME}

USER hduser
ENTRYPOINT ["./pig_entrypoint.sh","pig"]