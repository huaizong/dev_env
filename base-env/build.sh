#!/bin/bash
DIR=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

docker -D build -f Dockerfile -t huaizong/dev-env $DIR
