#!/bin/bash

HADOOP_VERSIONS=(
    "3.2.1"
    "3.1.2"
    "2.9.2"
    "2.8.5"
    "2.7.7"
)

PIG_VERSIONS=(
    "0.16.0"
    "0.17.0"
)

JAVA_VERSIONS=(
    "8"
    "9"
    "10"
    "11"
)

# $1: PIG_VERSION
# $2: HADOOP_VERSION
# $3: JAVA_VERSION
function build_image() {
  sudo docker build -q -t mpolatcan/pig:$1-hadoop-$2-java$3 --build-arg PIG_VERSION=$1 --build-arg HADOOP_VERSION=$2 --build-arg JAVA_VERSION=$3 ./src/
	sudo docker push mpolatcan/pig:$1-hadoop-$2-java$3
	sudo docker rmi mpolatcan/pig:$1-hadoop-$2-java$3
}

for PIG_VERSION in ${PIG_VERSIONS[@]}; do
    for HADOOP_VERSION in ${HADOOP_VERSIONS[@]}; do
        for JAVA_VERSION in ${JAVA_VERSIONS[@]}; do
            build_image $PIG_VERSION $HADOOP_VERSION $JAVA_VERSION
        done
    done
done