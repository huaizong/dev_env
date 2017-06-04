#!/bin/bash
DIR=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

docker build --no-cache -f Dockerfile -t huaizong/dev-env $DIR
