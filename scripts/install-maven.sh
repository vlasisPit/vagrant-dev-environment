#!/bin/bash
sudo wget http://apache.claz.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
sudo tar -zxvf apache-maven-3.6.3-bin.tar.gz
sudo mv apache-maven-3.6.3 /opt/maven
sudo rm -rf /scripts/apache-maven-3.6.3-bin.tar.gz

# settings.xml is on /opt/maven/conf folder