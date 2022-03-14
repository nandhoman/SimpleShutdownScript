#!/bin/bash
# Set target host IP or hostname
echo "false" > /var/VSMAlive.log
TARGET_HOST="172.31.1.3"

count=$(ping -c 3 $TARGET_HOST | grep 64* | wc -l)

if [ $count -gt 1 ]; then
    echo "true" > /var/VSMAlive.log
else
    echo "$(date) ===-> OK! "
fi
