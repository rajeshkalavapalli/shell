#!/bin/bash 

ID=$(id -u)

if [ $ID -ne 0 ]
  then 
    echo "Error :: please run this  script with root user" 
    exit 1
  else
    echo "you're a root user"
fi  

yum install mysql -y 

if [ $? -ne 0 ]
  then
    echo "Error:: mysql installation faild"
    exit 1
  else 
     echo "mysql installation succes"
fi   
yum install git -y 

if [ $? -ne 0 ]
  then
    echo "Error:: git installation faild"
    exit 1
  else 
     echo "git installation succes"
fi   
