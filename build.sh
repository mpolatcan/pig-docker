#!/bin/bash

HADOOP_VERSIONS=(
    "3.2.1"
    "3.1.3"
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
)

function build_base_image() {
  sudo docker build -q -t mpolatcan/pig:base-hadoop-$1-java$2 --build-arg HADOOP_VERSION=$1 --build-arg JAVA_VERSION=$2 ./src/base/
	sudo docker push mpolatcan/pig:base-hadoop-$1-java$2
	sudo docker rmi mpolatcan/pig:base-hadoop-$1-java$2
}

function build_image() {
  sudo docker build -q -t mpolatcan/pig:$1-hadoop-$2-java$3 --build-arg PIG_VERSION=$1 --build-arg HADOOP_VERSION=$2 --build-arg JAVA_VERSION=$3 ./src/setup/
	sudo docker push mpolatcan/pig:$1-hadoop-$2-java$3
	sudo docker rmi mpolatcan/pig:$1-hadoop-$2-java$3
}

# Build Pig base images for each Hadoop and Java versions
for HADOOP_VERSION in ${HADOOP_VERSIONS[@]}; do
  for JAVA_VERSION in ${JAVA_VERSIONS[@]}; do
      build_base_image $HADOOP_VERSION $JAVA_VERSION
  done
done

# Build Pig images for each Hadoop and Java versions
for PIG_VERSION in ${PIG_VERSIONS[@]}; do
    for HADOOP_VERSION in ${HADOOP_VERSIONS[@]}; do
        for JAVA_VERSION in ${JAVA_VERSIONS[@]}; do
            build_image $PIG_VERSION $HADOOP_VERSION $JAVA_VERSION
        done
    done
done
