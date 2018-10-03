#!/bin/bash
sudo apt-get -y remove docker docker-engine docker.io

# Add the GPG key for Docker repository on your system.
curl -kfsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -

# Setup Docker Repository
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates wget software-properties-common

# Add the official Docker repository to the system by running below command in the terminal.
echo "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") $(lsb_release -cs) stable" | sudo tee -a /etc/apt/sources.list.d/docker.list

# Update the apt database.
sudo apt-get update

#Make sure you are installing Docker from the official repository, not from the default Debian repository.
sudo apt-cache policy docker-ce

sudo apt-get -y install docker-ce

