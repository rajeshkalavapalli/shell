#!/bin/bash 

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

if [ $ID -eq 0 ]; then 
    echo "you're a root user"
else 
    echo "error :: you're not a root user"
fi

echo "all arguments passed: $@"
