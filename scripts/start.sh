#!/bin/bash

echo "Starting the application..."

cd /home/ec2-user/CI-CD-AWS-Project
nohup node app.js > app.log 2>&1 &

echo "Application started in background. Logs: app.log"