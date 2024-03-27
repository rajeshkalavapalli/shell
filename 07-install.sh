#!/bin/bash 

ID=$(id -u)

if [  $ID  -eq 0 ] 
then 
    echo "error ::your a root user"
    
else 
    echo "error:: your  not a root user ...."
    echo "please run your script with root user"
fi

yum install mysql  -y