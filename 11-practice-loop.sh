#!/bin/bash 

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%Y-%M-%S)
LOGFILE=/tmp/$0-$TIMESTAMP.log 

validate (){
    if [ $1 -ne 0 ]
    then 
        echo -e "$R $2 .......failed $N"
    else 
        echo -e "$G $2........Success  $N"
    fi
}

if [ $ID -ne 0 ]
then 
    echo -e "$R you're not a root user $N "
    
else 
    echo -e "$G you're a root user $N"
fi 

for package in $@
do 
    yum list installed $package  &>> $LOGFILE
if [ $? -ne 0 ]
then 
    yum install $package -y  &>> $LOGFILE
    validate $?  "installing $package"
else 
    echo "$Y $package installed .. skipping $N"
done 
fi 