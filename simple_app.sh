#!/bin/bash

declare -i count=0

while [ "$count" -ne "10" ]
do
    echo "$count" >> /home/ec2-user/simple-app.log
    count=count+1
    sleep 1
done
