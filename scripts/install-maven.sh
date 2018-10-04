#!/bin/bash
sudo wget http://apache.claz.org/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz
sudo tar -zxvf apache-maven-3.5.4-bin.tar.gz
sudo mv apache-maven-3.5.4 /opt/maven
sudo rm -rf /scripts/apache-maven-3.5.4-bin.tar.gz