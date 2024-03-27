#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
then 
    echo "insalling $2 faild "

else 
    echo "insalling $2 is sucess "
fi

}
if [  $ID  -ne 0 ] 
then 
    echo "error:: your  not a root user ...."
    echo "please run your script with root user"
    exit 1
else 
    echo "error ::your a root user"
fi

yum install mysql  -y

VALIDATE $? "installing mysql "

yum install git  -y

VALIDATE $? "installing git "
