#!/bin/bash

PID=`ps -ef | head -n 10 | tr -s   | cut -d   -f 3`
echo "tThis is the B4Inst.sh script [$PID] " >> /home/ec2-user/Log.txt

yum update
yum install aws-cli

for name in /* ; do
	[ -f $name ] && echo $name
	sleep 30
done

exit 1
