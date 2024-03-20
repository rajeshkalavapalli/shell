#!/bin/bash 

ID=$(id -u)
#echo "scriptname:$0"
TIMESTAMP=$(date +%F-%H-%M-%S) 
LOGFILE="/tmp/$0-$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
     then 
     echo -e "$R Error::$2 ...faild $N  "
     exit 1
    else 
     echo -e "$G $2 .......sucess $N"
    fi 
}

    if [ $ID -ne 0 ]
    then 
    echo "error :: your not a root user"
    exit 1 
    else 
    echo "your a root user"
    fi

yum install -y mysql & >> $LOGFILE

VALIDATE $? "installing mysql"

yum install -y git & >> $LOGFILE

VALIDATE $? "installing git"