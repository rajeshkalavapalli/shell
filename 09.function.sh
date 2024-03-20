#!/bin/bash 

ID=$(id -u)

if [ $ID -ne 0 ]
then 
echo "error :: your not a root user"
exit 1 
else 
echo "your a root user"
fi

yum install -y mysql 

if [ $ID -ne 0 ]
then 
echo "install mysql is succes"
else 
echo "mysql installation failed"
fi