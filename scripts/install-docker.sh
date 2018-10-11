#!/bin/bash
sudo apt-get -y remove docker docker-engine docker.io

# This line is necessary if you are behind a proxy, else you can remove it
echo 'Acquire::https::download.docker.com::Verify-Peer "false";' > /etc/apt/apt.conf

# Setup Docker Repository
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates wget curl gnupg2 software-properties-common

# Add the GPG key for Docker repository on your system.
curl -kfsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -

# Add the official Docker repository to the system by running below command in the terminal.
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

# Update the apt database.
sudo apt-get update

#Make sure you are installing Docker from the official repository, not from the default Debian repository.
sudo apt-cache policy docker-ce

sudo apt-get -y install docker-ce

sudo docker swarm init --advertise-addr 192.168.33.10
sudo docker network create --driver overlay --subnet 192.168.3.1/24 test-net 
#sudo docker login -u vlasispi89 -p xxxxxxxx 