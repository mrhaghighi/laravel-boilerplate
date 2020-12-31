#!/bin/bash

# Install Docker
command apt update
command apt install apt-transport-https ca-certificates curl software-properties-common -y
command curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
command sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
command apt update
command apt install docker-ce -y


# Asign Docker to Docker User
command usermod -aG docker dockeruser


# Install Docker Composer
command curl -L https://github.com/docker/compose/releases/download/1.27.4/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
command sudo chmod +x /usr/local/bin/docker-compose
