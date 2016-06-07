FROM ubuntu:14.04
MAINTAINER Andreas Profous <andreas.profous@kreuzwerker.de>

# Prerequisite for add-apt-repository
# http://askubuntu.com/questions/593433/error-sudo-add-apt-repository-command-not-found
RUN \
  apt-get update && \
  apt-get install -y software-properties-common

# Install Java 8.
# Taken from https://raw.githubusercontent.com/dockerfile/java/926218ef9b5b6c83bb07aae9a0aaa2ba118f6372/oracle-java8/Dockerfile
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Install latest Maven
# http://stackoverflow.com/questions/15630055/how-to-install-maven-3-on-ubuntu-15-10-15-04-14-10-14-04-lts-13-10-13-04-12-10-1
RUN \
  add-apt-repository -y ppa:andrei-pozolotin/maven3 && \
  apt-get update && apt-get install -y maven3 && \
  rm -rf /var/lib/apt/lists/*

VOLUME /main/

WORKDIR /main

CMD ["mvn", "install"]
