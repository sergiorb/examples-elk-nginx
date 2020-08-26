#!/bin/bash

echo "Setting up services..."

filebeat setup --dashboards

if [ $? -ne 0 ]
then
  echo "filebeat setup --dashboards failed! Try it later..."
  exit 1
fi

echo "dashboard loading code: " $?

echo "Activating services..."

service filebeat start
service nginx start

echo "Container is ready..."

while $1
do
	sleep 5
done
