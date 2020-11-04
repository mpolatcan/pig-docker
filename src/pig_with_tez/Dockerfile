ARG HADOOP_VERSION=""
ARG JAVA_VERSION=""
ARG TEZ_VERSION=""

FROM mpolatcan/pig:base-hadoop-${HADOOP_VERSION}-tez-${TEZ_VERSION}-java${JAVA_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ARG PIG_VERSION=0.17.0
ARG PIG_ZIP_FOLDER_NAME="pig-${PIG_VERSION}"
ARG PIG_DOWNLOAD_LINK="http://downloads.apache.org/pig/pig-${PIG_VERSION}/${PIG_ZIP_FOLDER_NAME}.tar.gz"

ADD entrypoint.sh ./pig_entrypoint.sh

USER root
RUN wget ${PIG_DOWNLOAD_LINK} && \
    tar -xvzf ${PIG_ZIP_FOLDER_NAME}.tar.gz -C ${HDUSER_HOME} && \
    mv ${PIG_ZIP_FOLDER_NAME}/* ${PIG_HOME} && \
    rm -r ${PIG_ZIP_FOLDER_NAME} && \
    rm ${PIG_ZIP_FOLDER_NAME}.tar.gz && \
    chmod +x pig_entrypoint.sh && \
    chown -R hduser:hadoop ${PIG_HOME}

USER hduser
ENTRYPOINT ["./pig_entrypoint.sh","pig"]