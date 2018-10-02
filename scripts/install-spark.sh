#!/bin/bash
wget http://apache.belnet.be/spark/spark-2.3.2/spark-2.3.2-bin-hadoop2.7.tgz
tar xvf spark-2.3.2-bin-hadoop2.7.tgz 
mv spark-2.3.2-bin-hadoop2.7 /usr/local/spark
rm -rf spark-2.3.2-bin-hadoop2.7.tgz