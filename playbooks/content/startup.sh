#!/bin/bash

# script to put in /etc/profile.d that runs upon login AFTER MOTD from /etc/motd is shown

# Clear the screen on login (optional)
clear

echo "Welcome to $(hostname)"
echo "You are running $(cat /etc/redhat-release)"

echo "Uptime: $(uptime -p)"
echo "IP Address(es): $(hostname -I | awk '{print $1}')"
echo "CPU Load: $(cat /proc/loadavg | awk '{print $1, $2, $3}')"

echo ""

