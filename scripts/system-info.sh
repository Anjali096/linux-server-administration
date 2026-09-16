#!/bin/bash

echo "===== SYSTEM INFORMATION ====="
echo "Hostname: $(hostname)"
echo "Kernel: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "IP Address:"
hostname -I
echo
echo "Disk Usage:"
df -h /
echo
echo "Memory Usage:"
free -h
echo
echo "Logged-in Users:"
who
