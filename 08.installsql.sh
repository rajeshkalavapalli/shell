#!/bin /bash 

ID=$(id -u)

if [ $ID -ne 0 ]
then 
echo "your not a root user"
exit 1
else  
echo "your a roote user" 

fi

yum update -y 

yum install -y mysql

if [ $? -ne 0 ]
then 

echo "Error:: not  installed mysql "
exit 1
else 
echo " mysql installation sucess"
fi 

yum update -y 

yum install -y git  

if [ $? -ne 0 ]
then 

echo "Error:: not installed git  "
else 
echo " installation git sucess"
fi 
