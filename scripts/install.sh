#!/bin/bash

sudo apt-get update -y
sudo apt-get install openjdk-17-jdk -y

JAVA_HOME=$(readlink -f $(which java))
export JAVA_HOME
PATH=$PATH:$JAVA_HOME

# jenkins repository
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
# update again
sudo apt-get update
# install jenkins
sudo apt-get install -y jenkins unzip
# start jenkins as service
sudo service jenkins start
