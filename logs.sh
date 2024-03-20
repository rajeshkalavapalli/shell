#!/bin/bash 
ID=$(id -u)

R=\e[31m
G=\e[32m
Y=\e[33m
N=\e[0m

echo "script name :$0"

TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 .......$Rfaild$N"
        exit 1
    else 
        echo -e " $2 ........$Gsucces$N"
    fi   

}

if [ $ID -ne 0 ]
  then 
    echo "Error :: please run this  script with root user" 
    exit 1
  else
    echo "you're a root user"
fi  

yum install mysql -y  >> $LOGFILE 2>&1

VALIDATE $? "installed mysql"

yum install git  -y >> $LOGFILE 2>&1

VALIDATE  $? "installed git"