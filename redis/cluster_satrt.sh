#!/bin/bash
redis__default_port=6379
redis_cluster_default_port=16379

for i in `seq 6`
do
#	echo $i
real_redis_port=$(($redis__default_port+$i-1))
real_redis_cluster_port=$(($redis_cluster_default_port+$i-1))
#echo $real_redis_port
#echo $real_redis_cluster_port
docker ps -a|grep redis${i} || docker run  -d --name redis${i} -p ${real_redis_port}:6379 -p ${real_redis_cluster_port}:16379  --restart  always centos-redis-yyl:1.4
done
docker ps -a
