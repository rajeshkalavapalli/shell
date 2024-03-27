#!/bin/bash 

ID=$(id -u)
echo "script name $0"

validate(){

    if [ $1 -ne 0 ]
    then 
        echo "$2..... failed "
    else 
        echo "$2 .....success "
    fi 
}



if [ $ID -ne 0 ]
then 
    echo "your not a root user"
    echo "please run this script with root user"
    exit 1
else 
    echo "your a root user"
fi

yum install git -y 

validate $? "installatin git "

yum install mysql -y

validate $? "installatin mysql "