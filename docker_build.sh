#!/bin/sh
# This builds the broker within the docker container.
# If you want to clean, you should be able to run "./docker_build mvn clean install"
#
# You must:
# - have docker installed and in your path
# - should have maven installed locally; the local .m2 repository will be mounted in the container
# - run this from this directory (i.e. ./docker_build.sh)
docker build -t anpr/build_dkt:v1 -f docker/build/Dockerfile .
docker run -it -v $HOME/.m2:/root/.m2 -v $PWD:/main -w /main anpr/build_dkt:v1 "$@"
