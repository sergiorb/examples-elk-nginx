#!/bin/bash

echo "Faking request..."

while $1
do
	curl http://nginx:80/testing-$(date +%d-%m-%Y_%H-%M-%S)
	sleep 5
done
