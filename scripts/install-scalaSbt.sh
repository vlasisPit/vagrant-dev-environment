#!/bin/bash
wget -c www.scala-lang.org/files/archive/scala-2.11.7.deb
sudo dpkg -i scala-2.11.7.deb
sudo apt-get update
sudo apt-get install -y scala

sudo apt-get install -y curl
curl -L -o sbt.deb http://dl.bintray.com/sbt/debian/sbt-0.13.17.deb
sudo dpkg -i sbt.deb
sudo apt-get update
sudo apt-get install sbt