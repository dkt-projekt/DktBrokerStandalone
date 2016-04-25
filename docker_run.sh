#!/bin/sh
# You must:
# - have executed docker_build.sh first (the target directory with the build artifacts must exist)
# - have docker installed and in your path
# - run this from this directory (i.e. ./docker_run.sh)
docker build -t anpr/run_dkt:v1 -f docker/run/Dockerfile .
docker run -it anpr/run_dkt:v1
