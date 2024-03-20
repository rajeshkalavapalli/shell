#!/bin/bash 

ID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)

if [ $ID -eq 0 ]; then 
    echo "$G you're a root user $N"
else 
    echo "$R error :: you're not a root user $N"
fi

echo "all arguments passed: $@"
