#!/bin /bash 

ID=$(id-u)

if [ $ID -eq 0 ]
then 
echo "your a root user"
else  
echo "your not a roote user" 

fi

yum update -y 

yum install -y mysql 

