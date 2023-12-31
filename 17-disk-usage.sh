#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DSIK_THRESHOLD=1
message=""

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partion=$(echo $line  | awk '{print $1F}')
    if [ $usage -ge $DSIK_THRESHOLD ]
    then
        message+="High Disk Usage 0n $partition: $usage"
    fi
done <<< $DISK_USAGE

echo "Message: $message"
