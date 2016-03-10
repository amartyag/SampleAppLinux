#!/bin/bash

PID=`ps -ef | head -n 10 | tr -s   | cut -d   -f 3`
echo "tThis is the AftInst.sh script [$PID] " >> /home/ec2-user/Log.txt
