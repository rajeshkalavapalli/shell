#!/bin/bash 

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

validate(){

    if [ $1 -ne 0 ]
    then 
        echo "$2.....$Rfailed$N "
    else 
        echo "$2 .....$Gsuccess$N "
    fi 
}



if [ $ID -ne 0 ]
then 
    echo "$Ryour not a root user$N"
    echo "$Yplease run this script with root user$N"
    exit 1
else 
    echo "your a root user"
fi

yum install git -y &>> $LOGFILE

validate $? "installatin git "

yum install mysql -y &>> $LOGFILE

validate $? "installatin mysql "