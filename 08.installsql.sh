#!/bin /bash 

ID=$(id -u)

if [ $ID -ne 0 ]
then 
echo "your not a root user"
else  
echo "your a roote user" 
exit 1 
fi

yum update -y 

yum install -y mysql 

if [ $? -ne 0 ]
then 
else 
echo "Error:: not succes "
else 
echo " installation sucess"
