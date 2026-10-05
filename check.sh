#!/bin/bash

echo "====================="
echo " HEALTH Starts"
echo "====================="

echo "Hostname:"
hostname

echo "User:"
whoami

if systemctl is-active --quiet ssh; then
	echo "Service is running"
else
	echo "Service is not running"
	exit 1
fi


