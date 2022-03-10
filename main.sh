#!/bin/bash
#Set target host IP or hostname
TARGET_HOST="172.31.1.3"

count=$(ping -c 3 $TARGET_HOST | grep From* | wc -l)
VSMAlive=$(cat /var/VSMAlive.log)

echo $count
if [ $count -gt 1 ] && [ $VSMAlive = "true" ]; then
    echo "$(date)" "Target host" $TARGET_HOST "unreachable, Rebooting!"
    /sbin/shutdown 0
else
    echo "$(date) ===-> OK! "
fi