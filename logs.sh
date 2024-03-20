#!/bin/bash 
ID=$(id -u)

echo "script name :$0"

TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log/"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 .......faild"
        exit 1
    else 
        echo " $2 ........succes"
    fi   

}

if [ $ID -ne 0 ]
  then 
    echo "Error :: please run this  script with root user" 
    exit 1
  else
    echo "you're a root user"
fi  

yum install mysql -y  >> "$LOGFILE" 2>&1

VALIDATE $? "installed mysql"

yum install git  -y >> "$LOGFILE" 2>&1

VALIDATE  $? "installed git"