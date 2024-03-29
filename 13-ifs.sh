#!/bin/bash 

FILE=/etc/passwd

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SOURCE_DIR="/tmp/shellscript-logs"

if [ ! -f  "$FILE" ]
then
    echo -e "source directory :$R${FILE} does not exitst $N"
else 
    echo -e "source directory :$G${FILE} exitst $N"

fi

while IFS=":" read -r  Username Password  User_ID   Group_ID 
do 
    echo "Username :$Username"
    echo "Password :$Password"
    echo "User_ID  :$User_ID "
    echo "Group_ID :$Group_ID "

done <$FILE