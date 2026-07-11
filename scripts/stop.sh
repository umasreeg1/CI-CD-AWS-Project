#!/bin/bash

echo "Stopping any running instance of the app..."

if pgrep -f "node app.js" > /dev/null
then
  pkill -f "node app.js"
  echo "Stopped previous app process."
else
  echo "No previous app process found. Nothing to stop."
fi