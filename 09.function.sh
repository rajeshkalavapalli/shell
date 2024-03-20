#!/bin/bash 

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
     then 
     echo "Error::$2 ...faild   "
     exit 1
    else 
     echo " $2 .......sucess"
    fi 
}

if [ $ID -ne 0 ]
then 
echo "error :: your not a root user"
exit 1 
else 
echo "your a root user"
fi

yum install -y mysql 

VALIDATE $? "installing mysql"

yum install -y git 

VALIDATE $? "installing git"