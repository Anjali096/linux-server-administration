#!/bin/bash

echo "===== SERVER HEALTH CHECK ====="

if sudo service nginx status > /dev/null 2>&1; then
    echo "Nginx: RUNNING"
else
    echo "Nginx: DOWN"
fi

echo
echo "Disk Usage:"
df -h /

echo
echo "Memory:"
free -h

echo
echo "Listening Ports:"
ss -tulpn
