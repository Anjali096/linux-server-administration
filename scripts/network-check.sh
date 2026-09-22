#!/bin/bash

echo "===== NETWORK DIAGNOSTICS ====="

echo
echo "----- Network Interfaces -----"
ip -br addr

echo
echo "----- Routing Table -----"
ip route

echo
echo "----- DNS Resolution -----"
if getent hosts google.com >/dev/null 2>&1; then
    echo "DNS resolution: WORKING"
else
    echo "DNS resolution: FAILED"
fi

echo
echo "----- Listening Ports -----"
ss -tuln

echo
echo "----- Local HTTP Connectivity -----"
if curl -Is --max-time 5 http://localhost >/dev/null 2>&1; then
    echo "Local HTTP: AVAILABLE"
else
    echo "Local HTTP: UNAVAILABLE"
fi

echo
echo "===== DIAGNOSTICS COMPLETED ====="
