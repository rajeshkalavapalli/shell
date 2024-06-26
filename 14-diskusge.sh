#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1
message=""

while IFS= read -r line
do
    usage=$(echo "$line" | awk '{print $6}' | cut -d '%' -f1)  
    partition=$(echo "$line" | awk '{print $1}')  
    if [ "$usage" -ge "$DISK_THRESHOLD" ]; then
        message+="High Disk Usage on $partition: $usage%\n"
    fi
done <<< "$DISK_USAGE"

echo -e "Message:\n$message" | mail -s "High Disk Usage" lavanya.kalavapalli748@gmail.com

