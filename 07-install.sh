#!/bin/bash 

ID=$(id -u)

if [  $ID  -eq 0 ] 
then 
    echo "your a root user"
    yum install mysql 
else 
    echo "your  not a root user ...."
    echo "please run your script with root user"
fi