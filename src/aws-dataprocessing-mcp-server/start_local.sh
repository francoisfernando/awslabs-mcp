#!/bin/bash

docker build -t aws-dataproc-mcp .

docker run --rm --interactive \
    --env FASTMPC_LOG_LEVEL=DEBUG \
    --env-file=$(pwd)/.env \
    --volume ${HOME}/.aws:/app/.aws \
    -p 3000:3000 \
    aws-dataproc-mcp
