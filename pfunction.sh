#!/bin/bash 
ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "Error:: installation faild"
        exit 1
    else 
        echo " installation succes"
    fi   

}

if [ $ID -ne 0 ]
  then 
    echo "Error :: please run this  script with root user" 
    exit 1
  else
    echo "you're a root user"
fi  

yum install mysql -y

VALIDATE

yum install git  -y 

VALIDATE