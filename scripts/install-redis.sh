#!/bin/bash
sudo apt-get -y install redis-server rubygems
sudo systemctl stop redis-server

# This line is necessary if you are behind a proxy, else you can remove it
echo ':ssl_verify_mode: 0' > ~/.gemrc	#To skip SSL certificate checks during gem installation (either gem install or bundle install), add this to your .gemrc

sudo gem install redis
sudo wget http://download.redis.io/redis-stable/src/redis-trib.rb

mkdir /var/lib/redis/DB

redis-server /redis-cluster/7000/redis.conf 
redis-server /redis-cluster/7001/redis.conf
redis-server /redis-cluster/7002/redis.conf 
redis-server /redis-cluster/7003/redis.conf
redis-server /redis-cluster/7004/redis.conf 
redis-server /redis-cluster/7005/redis.conf

#The option --replicas 1 means that we want a slave for every master created.
#Obviously the only setup with our requirements is to create a cluster with 3 masters and 3 slaves.
echo yes | ruby redis-trib.rb create --replicas 1 192.168.33.10:7000 192.168.33.10:7001 192.168.33.10:7002 192.168.33.10:7003 192.168.33.10:7004 192.168.33.10:7005
