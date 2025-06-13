#!/bin/bash

# shows server info

echo "=== Server Info ==="

echo "my name is $HOSTNAME"

# Current date and time
echo "Time: $(date)"

# Memory info
echo "RAM:"
free -h | awk '/Mem:/ {print "  Total:", $2, "| Used:", $3, "| Free:", $4}'

# Disk space info for root partition
echo "Disk (/):"
df -h / | awk 'NR==2 {print "  Total:", $2, "| Used:", $3, "| Free:", $4}'

