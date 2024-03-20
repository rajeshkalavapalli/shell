#!/bin/bash 

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
     then 
     echo "Error:: not  installed  "
     exit 1
    else 
     echo " my installation sucess"
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

VALIDATE

yum install -y git 

VALIDATE