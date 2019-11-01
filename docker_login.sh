#!/bin/bash

CONTAINER_NAME=$1
SHELL=$2

docker exec -it $CONTAINER_NAME $SHELL
