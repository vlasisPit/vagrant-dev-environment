#!/bin/bash
#Both OpenJDK and Oracle JDK are created and maintained currently by Oracle only.
#Almost every existing JDK is derived from OpenJDK.
#As suggested by many, licensing is a change between JDKs.
sudo add-apt-repository -y ppa:openjdk-r/ppa \
&& sudo apt-get update -q \
&& sudo apt install -y openjdk-11-jdk