#!/bin/bash 

ID=$(id -u)

if [  $ID  -ne 0 ] 
then 
    echo "error:: your  not a root user ...."
    echo "please run your script with root user"
    exit 1
else 
    echo "error ::your a root user"
fi

yum install mysql  -y

if [ $? -ne 0 ]
then 
    echo "insalling my sql is faild "

else 
    echo "insalling my sql is sucess "
fi
