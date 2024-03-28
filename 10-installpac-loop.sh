#!/bin/bash 
ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

validate(){
    if [ $1 -ne 0 ]
    then 
    echo "$2 field "
    else 
    echo "#2 ...sucess"
    fi
}
if [ $ID -ne 0 ]
then 
    echo -e "$R your not a root user $N"
    echo -e "$R please run this script with root user $N"
    exit 1
else 
    echo -e  " $G your a root user $N"
fi

    #echo "all arguments passed: $@"

    for package in $@
    do 
    yum list installed $package

    if [ $? -ne 0 ]
    then 
        yum install $package -y 

        validate $?  "installed of $package"
    else
        echo -e  " $Y $package is allready installed $N"
    fi
    done 
    