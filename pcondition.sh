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
     echo "installation succes"
fi   
