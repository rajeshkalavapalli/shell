#!/bin/bash 

ID=$(id -u)

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
else 
    echo "your a root user"
fi

yum install git -y 

validate $? "installatin git "

yum install mysql -y

validate $? "installatin mysql "