#!/bin/bash
cd /userLibs
tar xvf spark-2.3.1-bin-hadoop2.7.tgz
mv spark-2.3.1-bin-hadoop2.7 /usr/local/spark
export PATH=$PATH:/usr/local/spark/bin
source ~/.bashrc
