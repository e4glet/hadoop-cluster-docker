#!/bin/bash

# the default node number is 3
N=${1:-3}

# stop hadoop master container
docker stop hadoop-master
 
# stop hadoop slave container
i=1
while [ $i -lt $N ]
do
        docker stop hadoop-slave$i
        i=$(( $i + 1 ))
done 

#remove hadoop master container
docker rm hadoop-master

#remove hadoop slave container
i=1
while [ $i -lt $N ]
do
        docker rm hadoop-slave$i
        i=$(( $i + 1 ))
done
