#!/bin/bash 
ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo -e "$R your not a root user $N"
    echo -e "$Y please run this script with root user $N"
    exit 1
else 
    echo -e  " $G your a root user $N"
fi

    echo "all arguments passed: $@"