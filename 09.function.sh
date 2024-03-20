#!/bin/bash 

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S) 

LOGFILE="/tmp/$0-$TIMESTAMP.log"


R="\e[31m"
G="\e[32m"
N="\e[0m"
echo "script started and exicuting $TIMESTAMP"

VALIDATE(){
    if [ $1 -ne 0 ]; then 
        echo -e "Error::$2 ... ${R}failed${N}"
        exit 1
    else 
        echo -e "$2 .......${G}success${N}"
    fi 
}

if [ $ID -ne 0 ]; then 
    echo -e "error :: ${R}your not a root user${N}"
    exit 1 
else 
    echo "your a root user"
fi

yum install -y mysql >> "$LOGFILE" 2>&1
VALIDATE $? "installing mysql" 

yum install -y git >> "$LOGFILE" 2>&1
VALIDATE $? "installing git"
