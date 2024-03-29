#!/bin/bash 

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1
message=""

while IFS= read line 
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    
    usage=$(echo "$line" | awk '{print $6}' | cut -d '%' -f1) 
    partition=$(df -hT | grep -vE 'tmp|File' | awk '{print $1F}')
    if [ $usage -gt $DISK_THRESHOLD ]
    then
        message+="high disk usage on: $partition:$usage\n"
    fi 


done <<< $DISK_USAGE

echo -e "message: $message"