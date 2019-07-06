#!/bin/bash

HADOOP_VERSIONS=(
    "3.2.0"
    "3.1.2"
    "3.0.3"
    "2.9.1"
    "2.8.4"
    "2.7.6"
    "2.6.5"
)

PIG_VERSIONS=(
    "0.16.0"
    "0.17.0"
)

DISTS=(
    "alpine"
    "ubuntu"
)

# $1: DIST
# $2: PIG_VERSION
# $3: HADOOP_VERSION
function build_image() {
    sudo docker build -q -t mpolatcan/pig:$1-$2-hadoop-$3 --build-arg PIG_VERSION=$2 --build-arg HADOOP_VERSION=$3 ./$1/
	sudo docker push mpolatcan/pig:$1-$2-hadoop-$3
	sudo docker rmi mpolatcan/pig:$1-$2-hadoop-$3
}

for PIG_VERSION in ${PIG_VERSIONS[@]}; do
    for HADOOP_VERSION in ${HADOOP_VERSIONS[@]}; do
        for DIST in ${DISTS[@]}; do
            build_image $DIST $PIG_VERSION $HADOOP_VERSION
        done
    done
done