ARG HADOOP_VERSION=2.9.0
ARG JAVA_VERSION=8

FROM mpolatcan/pig:base-hadoop-${HADOOP_VERSION}-java${JAVA_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ARG PIG_VERSION=0.17.0
ARG PIG_ZIP_FOLDER_NAME="pig-${PIG_VERSION}"
ARG PIG_DOWNLOAD_LINK="http://downloads.apache.org/pig/pig-${PIG_VERSION}/${PIG_ZIP_FOLDER_NAME}.tar.gz"

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

USER root
RUN wget ${PIG_DOWNLOAD_LINK} && \
    tar -xvzf ${PIG_ZIP_FOLDER_NAME}.tar.gz -C ${HDUSER_HOME} && \
    mv ${PIG_ZIP_FOLDER_NAME}/* ${PIG_HOME} && \
    rm -r ${PIG_ZIP_FOLDER_NAME} && \
    rm ${PIG_ZIP_FOLDER_NAME}.tar.gz && \
    chown -R hduser:hadoop ${PIG_HOME}

USER hduser
ENTRYPOINT ["./pig_entrypoint.sh","pig"]