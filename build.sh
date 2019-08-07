#!/bin/bash

OS_NAME="$(uname | awk '{print tolower($0)}')"

SHELL_DIR=$(dirname $0)

RUN_PATH="."

ENV

if [ -f ${RUN_PATH}/target/VERSION ]; then
    VERSION=$(cat ${RUN_PATH}/target/VERSION | xargs)

    echo "VERSION=${VERSION}"

    mvn package -Dthis.version=${VERSION}
fi
