#!/bin/bash 

ID=$(id -u) #get the id 

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

VALIDATE (){
    if [ $1 -ne 0 ];
    then 
        echo "$2 ${R}filed${N}"  # Change: "filed" to "failed"
    else 
        echo "$2 ${G}sucess ${N}"  # Change: "sucess" to "success"
    fi
}

TIMESTAMP=$(date +%F-%H-%M-%S)

if [ $ID -eq 0 ]; then 
    echo -e "${G} you're a root user ${N}"  # Change: "you're" to "You're"
else 
    echo -e "${R} error :: you're not a root user ${N}"  # Change: "you're" to "You're"
fi

#echo "all arguments passed: $@"
for PACKAGE in "$@";do
yum list installed "$PACKAGE"
if [  $? -ne 0  ];then 
  yum install "$PACKAGE" -y 
  VALIDATE $? "installation of $PACKAGE"

else 
   echo "$PACKAGE allready installed ...${Y}skipping${N}"

fi
done
 

   
