#!/bin/bash

function main() {
    ./hadoop_entrypoint.sh $1

    ./pig_config_loader.sh

    if [[ "$1" == "pig" ]]; then
      tail -f /dev/null
    fi
}

main $1
