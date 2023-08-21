#!/usr/bin/env bash

REPOSITORY=/home/ec2-user/apps/deploy
CURRENT_PID=$(pgrep -fl Action | grep java | awk '{print $1}')

echo "The currently running application pid: $CURRENT_PID"

if [ -z "$CURRENT_PID" ]; then
  echo "No applications are currently running, so do not kill."
else
  echo "> kill -15 $CURRENT_PID"
  kill -15 $CURRENT_PID
  sleep 5
fi

echo "> Deploy a new application "

JAR_NAME=$(ls -tr $REPOSITORY/*.jar | tail -n 1)

echo "> JAR NAME: $JAR_NAME"
chmod +x $JAR_NAME
echo "> $JAR_NAME execution"

nohup java -jar $JAR_NAME > $REPOSITORY/nohup.out 2>&1 &