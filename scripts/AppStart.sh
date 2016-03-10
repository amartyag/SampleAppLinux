#!/bin/bash

PID=`ps -ef | head -n 10 | tr -s   | cut -d   -f 3`

echo " " >> /home/ec2-user/Log.txt
echo "This is the AppStart.sh script [$PID] " >> /home/ec2-user/Log.txt
echo "" >> /home/ec2-user/Log.txt
echo "*** DeploymentID: $DEPLOYMENT_ID" >> /home/ec2-user/Log.txt
echo "*** Application name is: $APPLICATION_NAME" >> /home/ec2-user/Log.txt
echo "*** Deployment Group Name: $DEPLOYMENT_GROUP_NAME" >> /home/ec2-user/Log.txt
echo "*** Lifecycle event name is: $LIFECYCLE_EVENT" >> /home/ec2-user/Log.txt
echo "" >> /home/ec2-user/Log.txt
bash /home/ec2-user/simple-app.sh &
echo "Application started with status $?"
